defmodule TransportService do
  def transport(from, to, baggage) do
    shippedBaggage = from.ship(baggage)
    to.receive(shippedBaggage)
  end
end
