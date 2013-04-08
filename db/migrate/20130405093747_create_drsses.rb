class CreateDrsses < ActiveRecord::Migration
  def change
    create_table :drsses do |t|
      t.string :size
      t.string :price
      t.string :brand
      t.text :comment

      t.timestamps
    end
  end
end
