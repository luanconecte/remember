class AddFriendToAnnotations < ActiveRecord::Migration
  def change
  	#add_reference :annotations, :friend, index: true
  	change_table :annotations do |t|
  		t.belongs_to :friend, index: true
   end
  	
  end
end
