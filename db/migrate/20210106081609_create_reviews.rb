class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.string :title
      t.string :body
      t.text :description
      t.timestamps
    end
  end
end
