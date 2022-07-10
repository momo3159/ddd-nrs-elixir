defmodule TransportService do
  def Transport(from, to, baggage) do
    shippedBaggage = from.ship(baggage)
    to.Receive(shippedBaggage)
  end
end
