class CreateMysts < ActiveRecord::Migration[7.0]
  def change
    create_table :mysts do |t|
      t.string :game
      t.string :creature
      t.string :age
      t.string :character
      t.string :quote

      t.timestamps
    end
  end
end
