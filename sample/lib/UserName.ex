defmodule UserName do
  @type t :: %UserName{value: binary}
  defstruct [:value]

  @spec new(binary) :: UserName.t()
  def new(value) do
    if String.length(value) < 3 do
      raise "ユーザー名は3文字以上です. #{value}"
    end

    %UserName{value: value}
  end
end
