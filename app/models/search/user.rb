class Search::User

  def initialize(params)
    @params = params
  end

  def execute!
    User.where(scope)
  end

  private

  def scope
    params = @params
    scope = {}
    
    scope = search_id(scope, params[:id])
    scope = search_first_name(scope, params[:first_name])
    scope = search_last_name(scope, params[:last_name])
    scope = search_email(scope, params[:email])
    scope = search_phone(scope, params[:phone])
    scope = search_role(scope, params[:role])
    scope
  end

  def search_id(scope, id)
    return scope if id.blank?
    scope.merge!(id: id)
  end

  def search_first_name(scope, first_name)
    return scope if first_name.blank?
    scope.merge!(first_name: first_name)
  end

  def search_last_name(scope, last_name)
    return scope if last_name.blank?
    scope.merge!(last_name: last_name)
  end

  def search_email(scope, email)
    return scope if email.blank?
    scope.merge!(email: email)
  end

  def search_phone(scope, phone)
    return scope if phone.blank?
    scope.merge!(phone: phone)
  end

  def search_role(scope, role)
    return scope if role.blank?
    scope.merge!(role: role)
  end
end