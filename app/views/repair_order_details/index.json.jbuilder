json.array!(@repair_order_details) do |repair_order_detail|
  json.extract! repair_order_detail, :id, :cause, :correction, :parts
  json.url repair_order_detail_url(repair_order_detail, format: :json)
end
