class CreateBets < ActiveRecord::Migration
  def change
    create_table :bets do |t|
      t.references :user
      t.references :secret
      t.decimal :amount, scale: 10, precision: 5
      t.decimal :multiplier, scale: 10, precision: 5
      t.decimal :game, scale: 4, precision: 2
      t.decimal :roll, scale: 4, precision: 2
      t.string :rolltype, default: 'under'
      t.string :client_seed
      t.string :server_seed
      t.timestamps
    end
  end
end