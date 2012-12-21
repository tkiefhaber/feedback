class Version < ActiveRecord::Base
  attr_accessible :version_number, :context, :version_file, :project_id, :final_version
  belongs_to :project
  has_many :notes, :dependent => :destroy
  has_attached_file :version_file
end
