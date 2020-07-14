class CreateElderlies < ActiveRecord::Migration[5.1]
  def change
    create_table :elderlies do |t|
      t.string :name

      t.timestamps
    end
  end
end
