defmodule VdeePetex.Repo do
  use Ecto.Repo,
    otp_app: :vdee_petex,
    adapter: Ecto.Adapters.Postgres
end
