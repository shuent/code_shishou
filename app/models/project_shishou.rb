class ProjectShishou < ApplicationRecord
  belongs_to :shishou, class_name: 'User'
  belongs_to :project
end
