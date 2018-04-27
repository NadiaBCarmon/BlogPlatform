class CreateTagsAndPosts < ActiveRecord::Migration[5.2]
  def change
  	create_table :tagsandposts do |t|
  	  t.belongs_to :tag, index: true
      t.belongs_to :post, index: true
  	end
  end
end
