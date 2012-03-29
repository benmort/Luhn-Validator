class CreateCreditCards < ActiveRecord::Migration
  def change
    create_table :credit_cards do |t|
      t.integer :number
      t.string :provider
      t.string :validity
      t.timestamps
    end
  end
end
