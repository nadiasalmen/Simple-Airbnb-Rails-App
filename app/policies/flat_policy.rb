class FlatPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  # Method new? is not necessary because it can be included with method create?
  # def new?
  #   true
  # end

  def create?
    true
  end

  def index?
    true
  end

  def show?
    true
  end

  # Method edit? is not necessary because it can be included with method update?
  # def edit?
  #   # current_user => user
  #   # authorized instance variable => record (eg: @flat)
  #   user == record.user
  # end

  def update?
    user_is_owner_or_admin?
  end

  def destroy?
    user_is_owner_or_admin?
  end

  private

  def user_is_owner_or_admin?
    # current_user => user
    # authorized instance variable => record (eg: @flat)
    if user.nil?
      false
    else
      user == record.user || user.admin
    end
  end
end
