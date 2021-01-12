class CreateTours < ActiveRecord::Migration[6.1]
  def change
    create_table :tours do |t|
      t.string :title
      t.string :address
      t.text   :description
      t.text   :content
      t.decimal :price, :precision => 8, :scale => 2
      t.text :house_type
      t.text :convenient
      t.text :rules
      t.text :furniture
      t.timestamps
    end
  end
end
