class Project < ActiveRecord::Base
	belongs_to :user
	has_many :neededitems
	has_many :user_projects
	has_many :members,
		through: :user_projects,
		source: :user
# 	has_many :moderator,
# 		through: :user_projects,
# 		source: :
end
