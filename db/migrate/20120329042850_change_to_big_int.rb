class ChangeToBigInt < ActiveRecord::Migration
  def up
    change_column :credit_cards, :number, :bigint
  end

  def down
  end
end
