class CreateBlogs < ActiveRecord::Migration[5.2]
  def change
  	create_table :blogs do |t|
  		t.belongs_to :user, index: true
  	end
  end
end
