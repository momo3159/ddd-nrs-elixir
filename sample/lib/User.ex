defmodule User do
  @type t :: %User{name: UserName.t(), id: UserId.t()}
  defstruct [:name, :id]

  @spec new(UserName.t()) :: User.t()
  def new(name) do
    id = UserId.new(UUID.uuid4())
    %User{name: name, id: id}
  end
end
