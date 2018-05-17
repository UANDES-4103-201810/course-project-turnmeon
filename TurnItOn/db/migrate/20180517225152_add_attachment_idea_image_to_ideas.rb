class AddAttachmentIdeaImageToIdeas < ActiveRecord::Migration[5.1]
  def self.up
    change_table :ideas do |t|
      t.attachment :idea_image
    end
  end

  def self.down
    remove_attachment :ideas, :idea_image
  end
end
