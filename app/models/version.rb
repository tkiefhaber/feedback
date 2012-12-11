class Version < ActiveRecord::Base
  attr_accessible :version_number, :context, :version_file, :project_id
  belongs_to :project

  has_attached_file :version_file
end
