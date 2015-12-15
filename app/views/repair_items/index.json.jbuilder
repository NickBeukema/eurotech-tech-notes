json.array!(@repair_items) do |repair_item|
  json.extract! repair_item, :id, :cause, :correction, :parts
  json.url repair_item_url(repair_item, format: :json)
end
