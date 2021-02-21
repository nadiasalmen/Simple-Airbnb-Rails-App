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
    # current_user => user
    # authorized instance variable => record (eg: @flat)
    user == record.user
  end
end
