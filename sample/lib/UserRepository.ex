defmodule UserRepository do
  """
  UserとOrganizationのように，複数のオブジェクトが関わるときのレポジトリはどうなる？
  """


  @behaviour IUserRepository
  ## TODO: Ecto.Schemaを通じて行うように変更
  @spec save(User.t())
  def save(user) do
    Repo.transaction(fn ->
      query =
        case Repo.one(from(u in Users, where: u.name == ^user.name)) do
          nil -> "INSERT INTO users (id, name) VALUES($1, $2)"
          _ -> "UPDATE users SET id = $1 name = $2 WHERE name id = $1"
        end

      Ecto.Adapters.SQL.query(
        Repo,
        query,
        [user.id, user.name]
      )
    end)
  end

  @spec find(UserName.t()) :: User.t() | nil
  def find(name) do
    case Repo.one(from(u in Users, where: u.name == ^user.name)) do
      nil -> nil
      user -> User.new()
    end
  end
end
