class CreateTrsers < ActiveRecord::Migration
  def change
    create_table :trsers do |t|
      t.text :name

      t.timestamps
    end
  end
end
