class Project < ActiveRecord::Base
  attr_accessible :title, :description, :project_type
  has_many :versions
  belongs_to :user
end
