defmodule GroceryTracker.InventoryItem do
  use Ecto.Model

  queryable "inventoryitem" do
    field :name, :string
    field :barcode, :integer
  end
end
