module DomainHelper

  # Returns the make part of the domain.
  def domain_suff
    domain_suff = request.host
      logger.info "Domain #{domain_suff}"
    if domain_suff.include? 'honda' then domain_suff = 'Honda'  end
    if domain_suff.include? 'bike' then domain_suff = ''  end
    if domain_suff.include? 'honda' then logger.info "Honda"  end
    logger.info "Make #{domain_suff}"
    @rv = domain_suff
    end
end