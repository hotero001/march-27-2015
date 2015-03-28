class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
    	t.string :url
    	t.string :title
    	t.integer :user_id
    	t.text :description
    end
  end
end
