defmodule MatchstickFactory do
  @big %{name: :big, size: 50}
  @medium %{name: :medium, size: 20}
  @small %{name: :small, size: 5}
  # @remainders %{name: :remainder, size: 0}

  def parse_out_matchsticks(map, box) do
    remaining_sticks = map.remainders

    new_box = &puts_sticks_in_box/3

    add_to_map(map, new_box.(remaining_sticks, box.size, box.name))
  end

  def puts_sticks_in_box(remaining_sticks, box_size, box_name) do
    boxes_used = div(remaining_sticks, box_size)
    remainder = rem(remaining_sticks, box_size)


    %{box_name => boxes_used, remainders: remainder}
  end

  def add_to_map(old_map, boxes_of_matches) do
    Map.merge(old_map,boxes_of_matches)
  end

  def boxes(matchsticks) do
    map = %{remainders: matchsticks}

      parse_out_matchsticks(map, @big)
      |>parse_out_matchsticks(@medium)
      |>parse_out_matchsticks(@small)

    # big_boxes = div(matchsticks, @big)
    #
    # add_matches_to_map
    # remainder = rem(matchsticks, @big)
    #
    # med_boxes = div(remainder, @medium)
    # remainder = rem(remainder, @medium)
    #
    # small_boxes = div(remainder, @small)
    # remainder = rem(remainder, @small)
    #
    # # {box_name: number_of_boxes}
    # %{big: big_boxes, medium: med_boxes, small: small_boxes, remainder: remainder}
  end


end
