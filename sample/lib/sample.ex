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

  # userRepositoryを引数で渡す方式で良い？
  @spec createUser(binary(), IUserRepository.t())
  def createUser(userName, iUserRepository) do
    user = User.new(userName)

    if UserService.exists(user) do
      raise "#{userName}は既に存在しています"
    end

    iUserRepository.save(user)
  end
end
