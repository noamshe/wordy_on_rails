class CreateWordyData < ActiveRecord::Migration
  def change
    create_table :wordy_data do |t|
      t.string :word
      t.string :def1
      t.string :def2
      t.string :def3

      t.timestamps
    end
  end
end
