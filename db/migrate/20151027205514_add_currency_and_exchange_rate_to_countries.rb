class AddCurrencyAndExchangeRateToCountries < ActiveRecord::Migration
  def change
    add_column :countries, :currency, :string
    add_column :countries, :exchange_rate, :integer
  end
end
