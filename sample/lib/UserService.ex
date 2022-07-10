defmodule UserService do
  @spec exists(User.t()) :: boolean()
  alias Sample.Repo
  def exists(user) do
    case Repo.one(from u in Users, where: u.name == ^user.name) do
      nil -> false
      _ -> true
    end
  end
end
