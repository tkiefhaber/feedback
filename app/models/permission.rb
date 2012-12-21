class Permission < ActiveRecord::Base
  belongs_to :user
  belongs_to :project

  attr_accessible :project_id, :user_id, :permission_title
end
