class ProjectShishou < ApplicationRecord
  belongs_to :shishou, class_name: 'User', foreign_key: 'shishou_id'
  belongs_to :project
end
