module DomainHelper

  # Returns the make part of the domain.
  def domain_suff
    domain_suff = request.host
      logger.info "Domain #{domain_suff}"
    if domain_suff.include? 'bike' then domain_suff = '' end
    if domain_suff.include? 'honda' then domain_suff = 'Honda' end
  #  if domain_suff.include? 'honda' then domain_suff = 'Honda'
  #  if domain_suff.include? 'honda' then domain_suff = 'Honda'
  #  if domain_suff.include? 'honda' then domain_suff = 'Honda'
  #  if domain_suff.include? 'honda' then domain_suff = 'Honda'
  #  if domain_suff.include? 'honda' then domain_suff = 'Honda'
  #  if domain_suff.include? 'honda' then domain_suff = 'Honda'

    if domain_suff.include? 'honda'
    then logger.info "Honda"
    end
    logger.info "Make #{domain_suff}"
    @rv = domain_suff
  end

  def make_image
    domain_suff1 = request.host
    logger.info "Image Make #{domain_suff1}"
   return cl_image_tag("/assets/VT750.png", :width => 4000, :height => 5500, :crop => :fill) if domain_suff1.include? 'bike'
   return cl_image_tag("/assets/honda_cbr_600rr_black_wide.jpg", :width => 4000, :height => 5500, :crop => :fill) if domain_suff1.include? 'honda'

#    if domain_suff.include? 'honda' then cl_image_tag("/assets/honda_cbr_600rr_black_wide.jpg", :width => 4000, :height => 5500, :crop => :fill)

 #    if domain_suff.include? 'honda' then cl_image_tag("/assets/honda_cbr_600rr_black_wide.jpg", :width => 4000, :height => 5500, :crop => :fill)
#    if domain_suff.include? 'honda' then cl_image_tag("/assets/honda_cbr_600rr_black_wide.jpg", :width => 4000, :height => 5500, :crop => :fill)
#    if domain_suff.include? 'honda' then cl_image_tag("/assets/honda_cbr_600rr_black_wide.jpg", :width => 4000, :height => 5500, :crop => :fill)
#    if domain_suff.include? 'honda' then cl_image_tag("/assets/honda_cbr_600rr_black_wide.jpg", :width => 4000, :height => 5500, :crop => :fill)
#    if domain_suff.include? 'honda' then cl_image_tag("/assets/honda_cbr_600rr_black_wide.jpg", :width => 4000, :height => 5500, :crop => :fill)
#    if domain_suff.include? 'honda' then cl_image_tag("/assets/honda_cbr_600rr_black_wide.jpg", :width => 4000, :height => 5500, :crop => :fill)
 #   if domain_suff.include? 'bike' then logger.info "Serve generic bike image"
    if domain_suff.include? 'honda' then
      logger.info "Serve Honda bike image"
    end

  end

  def make_logo
    domain_suff1 = request.host
    logger.info "Logo Make #{domain_suff1}"

    return image_tag("/assets/HONDAnew.png", :alt => "logo") if domain_suff1.include? 'honda'
   #s= '<% image_tag("/assets/HONDAnew.png", :alt => "logo" ) %>'
   #s= '<img alt="Rails" src="/assets/HONDAnew.png" />'
    #content_tag(img alt="Rails" src="/assets/HONDAnew.png")
    #if domain_suff1.include? 'honda'
    #content_tag(cl_image_tag("/assets/HONDAnew.png", :width => 4000, :height => 5500, :crop => :fill))

     #if domain_suff1.include? 'honda'
   # cl_image_tag("/assets/VT750.png", :width => 4000, :height => 5500, :crop => :fill) if domain_suff1.include? 'bike'
#    if domain_suff.include? 'honda' then cl_image_tag("/assets/honda_cbr_600rr_black_wide.jpg", :width => 4000, :height => 5500, :crop => :fill)

#    if domain_suff.include? 'honda' then cl_image_tag("/assets/honda_cbr_600rr_black_wide.jpg", :width => 4000, :height => 5500, :crop => :fill)
#    if domain_suff.include? 'honda' then cl_image_tag("/assets/honda_cbr_600rr_black_wide.jpg", :width => 4000, :height => 5500, :crop => :fill)
#    if domain_suff.include? 'honda' then cl_image_tag("/assets/honda_cbr_600rr_black_wide.jpg", :width => 4000, :height => 5500, :crop => :fill)
#    if domain_suff.include? 'honda' then cl_image_tag("/assets/honda_cbr_600rr_black_wide.jpg", :width => 4000, :height => 5500, :crop => :fill)
#    if domain_suff.include? 'honda' then cl_image_tag("/assets/honda_cbr_600rr_black_wide.jpg", :width => 4000, :height => 5500, :crop => :fill)
#    if domain_suff.include? 'honda' then cl_image_tag("/assets/honda_cbr_600rr_black_wide.jpg", :width => 4000, :height => 5500, :crop => :fill)
#   if domain_suff.include? 'bike' then logger.info "Serve generic bike image"
    if domain_suff.include? 'honda' then
      logger.info "Serve Honda bike image"
    end

  end

end