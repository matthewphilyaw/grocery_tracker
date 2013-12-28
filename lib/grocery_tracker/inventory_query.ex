defmodule GroceryTracker.InventoryQuery do
  import Ecto.Query

  def all do
    Enum.map(_all, fn(x) -> {x.name, x.barcode} end)
  end

  defp _all do
    query = from i in GroceryTracker.InventoryItem,
            select: i

    GroceryTracker.InventoryRepo.all(query)
  end

  def add(name, barcode) do
    item = GroceryTracker.InventoryItem.new(name: name, barcode: barcode)
    GroceryTracker.InventoryRepo.create(item)
  end
end
