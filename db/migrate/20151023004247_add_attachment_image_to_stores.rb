class AddAttachmentImageToStores < ActiveRecord::Migration
  def self.up
    change_table :stores do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :stores, :image
  end
end
