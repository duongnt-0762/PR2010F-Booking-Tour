class CreateOauths < ActiveRecord::Migration[6.1]
  def change
    create_table :oauths do |t|
      add_column :users, :provider, :string
      add_column :users, :user_id, :string
      add_column :users, :reauthorize_required_in, :integer
      add_column :users, :expires_in, :integer
      add_column :users, :signed_request, :text
      add_column :users, :oauth_token, :text
      add_column :users, :password, :text
      t.timestamps
    end
  end
end
