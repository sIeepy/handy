class Announcement < ApplicationRecord
  belongs_to :user
  validates_presence_of :content, :title, :announ_type

end
