class CreatePosts < ActiveRecord::Migration[5.2]
  def change
  	create_table :posts do |t|
  		t.belongs_to :blog, index: true
  		t.integer :blog_id
  		t.string :post_title
  		t.string :post_content
  	end
  end
end
