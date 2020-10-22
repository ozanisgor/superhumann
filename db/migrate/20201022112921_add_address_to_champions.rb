class AddAddressToChampions < ActiveRecord::Migration[6.0]
  def change
    add_column :champions, :address, :string
  end
end
