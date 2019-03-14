class InstrumentPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def update?
    record.member == member
  end

  def destroy?
    record.member == member
  end

  def create?
    true
  end
end
