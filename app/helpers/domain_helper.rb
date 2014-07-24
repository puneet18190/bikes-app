module DomainHelper

  # Returns the make part of the domain.
  def domain_suff
    domain_suff = request.host
      logger.info "Domain #{domain_suff}"
    if domain_suff.include? 'bike' then domain_suff = '' end
    if domain_suff.include? 'honda' then domain_suff = 'Honda' end
    if domain_suff.include? 'ducati' then domain_suff = 'Ducati' end
    if domain_suff.include? 'hareley' then domain_suff = 'Harley' end
    if domain_suff.include? 'kawasaki' then domain_suff = 'Kawasaki' end
    if domain_suff.include? 'scooter' then domain_suff = 'Scooter' end
    if domain_suff.include? 'suzuki' then domain_suff = 'Suzuki' end
    if domain_suff.include? 'triumph' then domain_suff = 'Triumph' end
    if domain_suff.include? 'yamaha' then domain_suff = 'Yamaha' end                      

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
   return cl_image_tag("/assets/honda_cbr_600rr_black_wide.jpg", :width => 4000, :height => 5500, :crop => :fill) if domain_suff1.include? 'ducati'
   return cl_image_tag("/assets/honda_cbr_600rr_black_wide.jpg", :width => 4000, :height => 5500, :crop => :fill) if domain_suff1.include? 'hareley'
   return cl_image_tag("/assets/honda_cbr_600rr_black_wide.jpg", :width => 4000, :height => 5500, :crop => :fill) if domain_suff1.include? 'kawasaki'
   return cl_image_tag("/assets/honda_cbr_600rr_black_wide.jpg", :width => 4000, :height => 5500, :crop => :fill) if domain_suff1.include? 'scooter'
   return cl_image_tag("/assets/honda_cbr_600rr_black_wide.jpg", :width => 4000, :height => 5500, :crop => :fill) if domain_suff1.include? 'suzuki'
   return cl_image_tag("/assets/honda_cbr_600rr_black_wide.jpg", :width => 4000, :height => 5500, :crop => :fill) if domain_suff1.include? 'triumph'
   return cl_image_tag("/assets/honda_cbr_600rr_black_wide.jpg", :width => 4000, :height => 5500, :crop => :fill) if domain_suff1.include? 'yamaha'

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
    domain_suff_logo = request.host
    logger.info "Logo Make #{domain_suff1}"
    return image_tag("/assets/BIKEORIGINAL.png", :alt => "logo") if domain_suff_logo.include? 'bike'
    return image_tag("/assets/HONDAnew.png", :alt => " honda logo") if domain_suff_logo.include? 'honda'
    return image_tag("/assets/DUCATInew.png", :alt => "ducati logo") if domain_suff_logo.include? 'ducati'
    return image_tag("/assets/HARLEYnew.png", :alt => "harley logo") if domain_suff_logo.include? 'hareley'
    return image_tag("/assets/KAWASAKInew.png", :alt => "kawasaki logo") if domain_suff_logo.include? 'kawasaki'
    return image_tag("/assets/SCOOTERnew.png", :alt => "scooter logo") if domain_suff_logo.include? 'scooter'
    return image_tag("/assets/SUZUKInew.png", :alt => "suzuki logo") if domain_suff_logo.include? 'suzuki'
    return image_tag("/assets/TRIUMPHnew.png", :alt => "triumph logo") if domain_suff_logo.include? 'triumph'
    return image_tag("/assets/YAMAHAnew.png", :alt => "yamaha logo") if domain_suff_logo.include? 'yamaha'
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
    if domain_suff_logo.include? 'honda' then
      logger.info "Serve Honda bike image"
    end

  end

end