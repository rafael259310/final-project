class User < ActiveRecord::Base
	has_many :projects

	has_many :incoming_messages,
		class_name: "Message",
		foreign_key: :reciever_id,
		primary_key: :id

	has_many :sent_messages,
		class_name: "Message",
		foreign_key: :sender_id,
		primary_key: :id

	has_many :user_projects

	has_many :contributions,
		through: :user_projects,
		source: :project

	has_many :followerships,
		class_name: "Relationship",
		foreign_key: :follower_id

	has_many :leaderships,
		class_name: "Relationship",
		foreign_key: :target_id

	has_many :followers,
		through: :leaderships,
		source: :follower

	has_many :leaders,
		through: :followerships,
		source: :leader
end
