defmodule Joewalker.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      JoewalkerWeb.Telemetry,
      {DNSCluster, query: Application.get_env(:joewalker, :dns_cluster_query) || :ignore},
      {Phoenix.PubSub, name: Joewalker.PubSub},
      # Start the Finch HTTP client for sending emails
      {Finch, name: Joewalker.Finch},
      # Start a worker by calling: Joewalker.Worker.start_link(arg)
      # {Joewalker.Worker, arg},
      # Start to serve requests, typically the last entry
      JoewalkerWeb.Endpoint
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Joewalker.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    JoewalkerWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
