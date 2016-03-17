json.array!(@commissions) do |commission|
  json.extract! commission, :id, :commission_rate, :load_amount, :commission_amount
  json.url commission_url(commission, format: :json)
end
