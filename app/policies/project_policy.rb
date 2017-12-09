class ProjectPolicy < ApplicationPolicy

  def index?
    true
  end

  def new?
    user.present?
  end

  def create?
    new?
  end

  def edit?
    user == record.owner
  end

  def update?
    edit?
  end

  def destroy?
    edit?
  end

  def be_shishou?
    user.present? && user != record.owner
  end



  class Scope < Scope
    def resolve
      scope
    end
  end
end
