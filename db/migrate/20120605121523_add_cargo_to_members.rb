class AddCargoToMembers < ActiveRecord::Migration
  def change
    add_column :members, :cargo, :string
  end
end
