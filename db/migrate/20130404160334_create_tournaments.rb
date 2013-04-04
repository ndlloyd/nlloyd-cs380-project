class CreateTournaments < ActiveRecord::Migration
  def change
    create_table :tournaments do |t|
	  t.string :shortDescription
      t.string :fullDescription
      t.integer :owner
      t.boolean :winnerHigh

      t.timestamps
    end
  end
end
