class AddAttachmentBannerToTours < ActiveRecord::Migration[5.1]
  def self.up
    change_table :tours do |t|
      t.attachment :banner
    end
  end

  def self.down
    remove_attachment :tours, :banner
  end
end
