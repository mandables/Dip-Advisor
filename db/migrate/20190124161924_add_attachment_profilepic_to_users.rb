class AddAttachmentProfilepicToUsers < ActiveRecord::Migration[5.2]
  def self.up
    change_table :users do |t|
      t.attachment :profilepic
    end
  end

  def self.down
    remove_attachment :users, :profilepic
  end
end
