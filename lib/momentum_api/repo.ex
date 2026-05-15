defmodule MomentumApi.Repo do
  use Ecto.Repo,
    otp_app: :momentum_api,
    adapter: Ecto.Adapters.Postgres
end
