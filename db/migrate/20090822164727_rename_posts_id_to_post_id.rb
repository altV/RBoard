class RenamePostsIdToPostId < ActiveRecord::Migration
  def self.up
    rename_column(:posts, :posts_id, :post_id)
  end

  def self.down
    rename_column(:posts, :post_id, :posts_id)
  end
end
