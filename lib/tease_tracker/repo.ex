defmodule TeaseTracker.Repo do
  use Ecto.Repo,
    otp_app: :tease_tracker,
    adapter: Ecto.Adapters.Postgres
end
