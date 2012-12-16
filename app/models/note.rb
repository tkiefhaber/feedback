class Note < ActiveRecord::Base
  attr_accessible :content, :version_id, :addressed

  belongs_to :version
end
