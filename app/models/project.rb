class Project < ApplicationRecord

  # TODO fix
  has_many :project_shishous
  has_many :shishous, through: :project_shishous

  belongs_to :owner, class_name: "User", foreign_key: "owner_id"

  has_many :chats

end
