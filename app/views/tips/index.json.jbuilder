json.array!(@tips) do |tip|
  json.extract! tip, :id, :user_id, :commission_rate, :load_amount, :commission_amount
  json.url tip_url(tip, format: :json)
end
