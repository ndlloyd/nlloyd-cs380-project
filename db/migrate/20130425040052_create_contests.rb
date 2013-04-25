class CreateContests < ActiveRecord::Migration
  def change
    create_table :contests do |t|
      t.string :firstContestant
      t.string :secondContestant
      t.integer :firstScore
      t.integer :secondScore
      t.integer :tournament_id
      t.integer :bracket

      t.timestamps
    end
    add_index :contests, :tournament_id
    add_index :contests, :bracket
  end
end
