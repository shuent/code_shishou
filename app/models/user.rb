class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :project_shishous
  has_many :projects_as_shishou, through: :project_shishous, source: 'project'

  has_many :projects_as_owner, class_name: 'Project', foreign_key: 'owner_id'
  # belongs_to :project # as shishou
end
