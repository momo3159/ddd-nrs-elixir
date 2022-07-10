defmodule Sample do
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

    
  end
end
