json.array!(@repair_details) do |repair_detail|
  json.extract! repair_detail, :id, :repair_order, :recommendations, :maintenance
  json.url repair_detail_url(repair_detail, format: :json)
end
