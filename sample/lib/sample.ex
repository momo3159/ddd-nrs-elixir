defmodule Sample do
  alias Sample.Repo
  @moduledoc """
  Documentation for `Sample`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Sample.hello()
      :world

  """
  def hello do
    :world
  end

  @spec createUser(binary())
  def createUser(userName) do
    user = User.new(userName)

    if UserService.Exists(user) do
      raise "#{userName}は既に存在しています"
    end

    ## TODO: Ecto.Schemaを通じて行うように変更
    query = "INSERT INTO users (id, name) VALUES($1, $2)"
    Ecto.Adapters.SQL.query(
      Repo,
      query,
      [user.id, user.name]
    )
  end
end
