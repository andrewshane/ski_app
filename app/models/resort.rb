class Resort < ActiveRecord::Base
has_many :favorites , :class_name => "Favorite", :foreign_key => "resort_id"

end
