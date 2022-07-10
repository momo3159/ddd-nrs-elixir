defmodule PhysicalDistributionBase do

  def ship(baggage) do

  end

  def receive(baggage) do

  end

  def transport(to, baggage) do
    shippedBaggage = ship(baggage)
    to.receive(shippedBaggage)

    # 「輸送する」ことは物流拠点の振る舞い...？
    # さらに，例えば配送の記録が必要なとき，その記録は物流拠点が行う...?
  end
end
