class DomainConstraint
  def initialize(domain)
    @domains = [domain].flatten
  end

  def matches?(request)
    @domains.include? request.env["SERVER_NAME"]
  end

# for production env only swap with above codes
#  def matches?(request)
#    Rails.env == 'production' && @domains.include? request.env["SERVER_NAME"]
#  end



end
