defmodule Petex.Human do
  use Ecto.Schema
  import Ecto.Changeset

  @fields [:age, :cpf, :email, :name]

  schema "humans" do
    field :age, :integer
    field :cpf, :string
    field :email, :string
    field :name, :string

    timestamps()
  end

  def changeset(params) do
    %__MODULE__{}
    |>cast(params, @fields)
    |> validate_required(@fields)

  end
end
