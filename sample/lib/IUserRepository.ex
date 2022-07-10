defmodule IUserRepository do
  # https://elixirforum.com/t/typespec-for-a-type-implementing-behaviour/38151/7
  @type t :: module()

  @callback save(user :: User.t()) :: any() # TODO: any()を適切な型に変える
  @callback find(name :: UserName.t()) :: User.t() | nil
end
