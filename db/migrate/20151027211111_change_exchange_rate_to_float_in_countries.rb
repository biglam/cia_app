class ChangeExchangeRateToFloatInCountries < ActiveRecord::Migration
  def change
    change_column :countries, :exchange_rate, :float
  end
end
