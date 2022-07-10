defmodule UserService do
  alias Sample.Repo
  @spec exists(User.t(), IUserRepository.t()) :: boolean()

  def exists(user, iUserRepository) do
    case iUserRepository.find(user.name) do
      nil -> false
      _ -> true
    end
  end
end
