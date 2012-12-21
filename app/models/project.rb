class Project < ActiveRecord::Base

  has_many :versions
  has_many :users, :through => :permissions
  has_many :permissions
  accepts_nested_attributes_for :permissions

  attr_accessible :title, :description, :project_type, :permissions_attributes
end
