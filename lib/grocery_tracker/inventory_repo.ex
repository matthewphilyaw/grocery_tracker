defmodule GroceryTracker.InventoryRepo do
  use Ecto.Repo, adapter: Ecto.Adapters.Postgres
  
  def url do
    "ecto://gtrack:gtracker@localhost/groceries"
  end
end
