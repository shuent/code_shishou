class Project < ApplicationRecord

  # TODO fix
  has_many :project_shishous
  has_many :shishous, -> { distinct }, through: :project_shishous

  belongs_to :owner, class_name: "User", foreign_key: "owner_id", primary_key: "user_id"

  has_many :chats

  validates :title, presence: true
  validates :body, presence: true

end
