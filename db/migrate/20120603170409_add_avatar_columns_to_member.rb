class AddAvatarColumnsToMember < ActiveRecord::Migration
  def change
    def self.up
      change_table :members do |m|
        m.has_attached_file :avatar
      end
    end

    def self.down
      drop_attached_file :members, :avatar
    end
  end
end
