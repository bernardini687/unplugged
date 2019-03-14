class ApplicationPolicy
  attr_reader :member, :record

  def initialize(member, record)
    @member = member
    @record = record
  end

  def index?
    false
  end

  def show?
    false
  end

  def create?
    false
  end

  def new?
    create?
  end

  def update?
    false
  end

  def edit?
    update?
  end

  def destroy?
    false
  end

  class Scope
    attr_reader :member, :scope

    def initialize(member, scope)
      @member = member
      @scope = scope
    end

    def resolve
      scope.all
    end
  end
end
