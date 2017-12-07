class Project < ApplicationRecord
  # has_one :owner, class_name: "User", foreign_key: "user_id"
  # has_many :shishous, class_name: 'User', foreign_key: 'user_id'
  has_many :project_shishous
  has_many :shishous, through: :project_shishous, source: 'user'
  belongs_to :owner, class_name: "User", foreign_key: "owner_id"

end
