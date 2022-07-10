defmodule UserService do
  @spec exists(User.t()) :: boolean()
  def exists(user) do
    # SELECT * FROM users WHERE name = user.name
    # データがあればtrue, なけれなfalse

    true
  end
end
