class CreatePosts < ActiveRecord::Migration
  def self.up
    create_table :posts do |t|
      t.string :header
      t.text :body
      t.references :host
      t.references :user, :default => 0
      t.string :unregistered_user_name
      t.integer :times_viewed, :default => 0
      t.references :post_subject
      t.boolean :has_pics, :has_urls
      t.reference :posts

      t.string :path

      t.timestamps
    end
  end

  def self.down
    drop_table :posts
    drop_table :hosts
    drop_table :users
    drop_table :post_subjects
  end
end
