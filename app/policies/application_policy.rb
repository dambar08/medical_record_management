# frozen_string_literal: true

class ApplicationPolicy
  attr_reader :user, :record

  def initialize(user, record)
    @user = user
    @record = record
  end

  def index?
    user.has_role?(:superadmin) || false
  end

  def show?
    user.has_role?(:superadmin) || false
  end

  def create?
    user.has_role?(:superadmin) || false
  end

  def new?
    create?
  end

  def update?
    user.has_role?(:superadmin) || false
  end

  def edit?
    update?
  end

  def destroy?
    user.has_role?(:superadmin) || false
  end

  class Scope
    def initialize(user, scope)
      @user = user
      @scope = scope
    end

    def resolve
      raise NoMethodError, "You must define #resolve in #{self.class}"
    end

    private

    attr_reader :user, :scope
  end
end
