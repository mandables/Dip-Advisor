class AddAttachmentDivesiteimageToDivingsites < ActiveRecord::Migration[5.2]
  def self.up
    change_table :divingsites do |t|
      t.attachment :divesiteimage
    end
  end

  def self.down
    remove_attachment :divingsites, :divesiteimage
  end
end
