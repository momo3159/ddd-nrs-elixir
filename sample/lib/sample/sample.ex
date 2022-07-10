defmodule Sample.Application do
  use Application

  @impl true
  def start(_type, _args) do
    children = [
      Sample.Repo,
    ]

    opts = [strategy: :one_for_one, name: Hogee.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
