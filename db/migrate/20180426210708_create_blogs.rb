class CreateBlogs < ActiveRecord::Migration[5.2]
  def change
  	t.belongs_to :user, index: true
  	end
  end
end
