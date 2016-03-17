json.array!(@wallets) do |wallet|
  json.extract! wallet, :id, :load_amount
  json.url wallet_url(wallet, format: :json)
end
