class Note < ActiveRecord::Base
  attr_accessible :content, :version_id

  belongs_to :version
end
