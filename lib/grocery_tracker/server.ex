defmodule GroceryTracker.Server do
  use GenServer.Behaviour

  def start_link() do
    :gen_server.start_link({:local, :gtracker}, __MODULE__, [], [])
  end

  def init(_args) do
    {:ok, nil}
  end

  def handle_call(:get_all, _from, _state) do
    {:reply, {:items, GroceryTracker.InventoryQuery.all}, nil}
  end

  def handle_cast({:add, {name, barcode}} , _state) do
    GroceryTracker.InventoryQuery.add(name, barcode)
    {:noreply, nil}
  end
end
