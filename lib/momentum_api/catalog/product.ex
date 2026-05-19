defmodule MomentumApi.Catalog.Product do
  use Ecto.Schema
  import Ecto.Changeset

  schema "products" do
    field :name, :string
    field :price, :integer
    field :image_url, :string

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(product, attrs) do
    product
    |> cast(attrs, [:name, :price, :image_url])
    |> validate_required([:name, :price, :image_url])
  end
end
