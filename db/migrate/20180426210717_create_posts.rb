class CreatePosts < ActiveRecord::Migration[5.2]
  def change
  	create_table :posts do |t|
  		t.belongs_to :blog, index: true
  	end
  end
end
