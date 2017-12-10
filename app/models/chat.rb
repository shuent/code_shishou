class Chat < ApplicationRecord
  belongs_to :user
  belongs_to :project

  validates :body, presence: true
end
