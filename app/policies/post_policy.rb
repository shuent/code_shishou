class PostPolicy < ApplicationPolicy
  def index?
    true
  end
  def show?
    true
  end

  def new?
    create?
  end

  def create?
    user
  end

end
