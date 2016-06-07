class Favorite < ActiveRecord::Base
  belongs_to :resort , :class_name => "Resort", :foreign_key => "resort_id"
  belongs_to :user , :class_name => "User", :foreign_key => "user_id"
end
