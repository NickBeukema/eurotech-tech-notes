json.array!(@repair_orders) do |repair_order|
  json.extract! repair_order, :id, :number, :recommendations, :maintenance
  json.url repair_order_url(repair_order, format: :json)
end
