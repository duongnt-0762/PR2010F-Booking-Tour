class AddInforToTours < ActiveRecord::Migration[6.1]
  def change
    add_column :tours, :phone_number, :string
    add_column :tours, :room, :integer
    add_column :tours, :bed, :integer
    add_column :tours, :bathroom, :integer
    add_column :tours, :guest, :integer
    add_column :tours, :host_user, :integer, default: 0
    add_column :tours, :status, :boolean, default: false
    add_column :tours, :user_id, :integer
  end
end
