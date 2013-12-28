defmodule GroceryTracker.Server do
  use GenServer.Behaviour

  def start_link() do
    :gen_server.start_link({:local, :gtracker}, __MODULE__, [], [])
  end

  def init(_args) do
    {:ok, nil}
  end

  def handle_call(:get_all, _from, nil) do
    {:reply, {:items, GroceryTracker.InventoryQuery.all}, nil}
  end
end
