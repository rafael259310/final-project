class Relationship < ActiveRecord::Base
	belongs_to :follower,
		class_name: "User",
		foreign_key: :follower_id,
		primary_key: :id
	belongs_to :leader,
		class_name: "User",
		foreign_key: :target_id,
		primary_key: :id
end
