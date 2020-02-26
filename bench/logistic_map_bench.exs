defmodule LogisticMapBench do
  use Benchfella

  @range_0x1000 (1..0x1000)

  bench "Enum" do
    @range_0x1000
    |> PelemaySample.enum_logistic_map
  end

  bench "Flow" do
    @range_0x1000
    |> PelemaySample.flow_logistic_map
  end

  # NOTE: Enum.to_list should be needed
  bench "Pelemay" do
    @range_0x1000
    |> Enum.to_list
    |> PelemaySample.logistic_map
  end

end
