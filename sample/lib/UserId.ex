defmodule UserId do
  @type t :: %UserId{value: binary}
  defstruct [:value]

  @spec new(binary) :: UserId.t()
  def new(value) do
    %UserId{value: value}
  end
end
