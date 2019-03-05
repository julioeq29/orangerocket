class UserPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  # def new?
  #   create?
  # end

  # def create?
  #   true
  # end

  def show?
    true
  end

  # def edit?
  #   true
  # end

  # def update?
  #   record.user == user
  # end

  # def destroy?
  #   record.user == user
end
