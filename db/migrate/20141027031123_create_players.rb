class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|

      t.references :party, index: true
      t.timestamps
    end
  end
end
