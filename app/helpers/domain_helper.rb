module DomainHelper

  # Returns the make part of the domain.
  def domain_suff
    domain_suff = request.host
      logger.info "Domain #{domain_suff}"
    if domain_suff.include? 'localhost' then domain_suff = 'localhost' end
    if domain_suff.include? '2wheels' then domain_suff = '' end
    if domain_suff.include? 'bike' then domain_suff = '' end
    if domain_suff.include? 'honda' then domain_suff = 'Honda' end
    if domain_suff.include? 'ducati' then domain_suff = 'Ducati' end
    if domain_suff.include? 'harley' then domain_suff = 'Harley' end
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

  def rel
    @rel = ENV["HEROKU_RELEASE_NAME"]
  end

  def make_image
    domain_suff1 = request.host
    logger.info "Image Make #{domain_suff1}"
   return cl_image_tag("VT750.png", :width => 4000, :height => 5500) if domain_suff1.include? 'bike'
   return cl_image_tag("2009-Honda-InterceptorVFR800FIa-small.jpg", :width => 4000, :height => 5500) if domain_suff1.include? '2wheels'
   return cl_image_tag("honda_cbr_600rr_black_wide.jpg", :width => 4000, :height => 5500) if domain_suff1.include? 'honda'
   return cl_image_tag("ducati-1199-panigale-black.jpg", :width => 4000, :height => 5500) if domain_suff1.include? 'ducati'
   return cl_image_tag("0808_hbkp_03_z+Harley-Davidson_Night_Rod_Special+Black.jpg", :width => 4000, :height => 5500) if domain_suff1.include? 'harley'
   return cl_image_tag("122_0609_02_z+2007_kawasaki_ninja_zx_6r+black_static1.jpg", :width => 4000, :height => 5500) if domain_suff1.include? 'kawasaki'
   return cl_image_tag("vespa_s_50_black_scooter.jpg", :width => 4000, :height => 5500) if domain_suff1.include? 'scooter'
   return cl_image_tag("suzuki_hayabusa_pure_black-normal.jpg", :width => 4000, :height => 5500) if domain_suff1.include? 'suzuki'
   return cl_image_tag("matt-black-triumph.jpg", :width => 4000, :height => 5500) if domain_suff1.include? 'triumph'
   return cl_image_tag("yamaha_r6_black-HD.jpg", :width => 4000, :height => 5500) if domain_suff1.include? 'yamaha'

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
    logger.info "Logo Make #{domain_suff_logo}"
    return cl_image_tag("BIKEORIGINAL.png", :alt => "logo") if domain_suff_logo.include? 'bike'
    return cl_image_tag("HONDAnew.png", :alt => "honda logo") if domain_suff_logo.include? 'honda'
    return cl_image_tag("DUCATInew.png", :alt => "ducati logo") if domain_suff_logo.include? 'ducati'
    return cl_image_tag("HARLEYnew.png", :alt => "harley logo") if domain_suff_logo.include? 'harley'
    return cl_image_tag("KAWASAKInew.png", :alt => "kawasaki logo") if domain_suff_logo.include? 'kawasaki'
    return cl_image_tag("SCOOTERnew.png", :alt => "scooter logo") if domain_suff_logo.include? 'scooter'
    return cl_image_tag("SUZUKInew.png", :alt => "suzuki logo") if domain_suff_logo.include? 'suzuki'
    return cl_image_tag("TRIUMPHnew.png", :alt => "triumph logo") if domain_suff_logo.include? 'triumph'
    return cl_image_tag("YAMAHAnew.png", :alt => "yamaha logo") if domain_suff_logo.include? 'yamaha'
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

  def featured_image_left
    domain_featured_left = request.host
    return cl_image_tag("vt7501.jpg", :width => 4000, :height => 5500) if domain_featured_left.include? 'bike'
    return cl_image_tag("honda_cbr_600rr_black_wide.jpg", :width => 4000, :height => 5500) if domain_featured_left.include? 'honda'
    return cl_image_tag("ducati-1199-panigale-black.jpg", :width => 4000, :height => 5500) if domain_featured_left.include? 'ducati'
    return cl_image_tag("0808_hbkp_03_z+Harley-Davidson_Night_Rod_Special+Black.jpg", :width => 4000, :height => 5500) if domain_featured_left.include? 'harley'
    return cl_image_tag("122_0609_02_z+2007_kawasaki_ninja_zx_6r+black_static1.jpg", :width => 4000, :height => 5500) if domain_featured_left.include? 'kawasaki'
    return cl_image_tag("vespa_s_50_black_scooter.jpg", :width => 4000, :height => 5500) if domain_featured_left.include? 'scooter'
    return cl_image_tag("busa002.jpg", :width => 4000, :height => 5500) if domain_featured_left.include? 'suzuki'
    return cl_image_tag("matt-black-triumph.jpg", :width => 4000, :height => 5500) if domain_featured_left.include? 'triumph'
    return cl_image_tag("yamaha_r6_black-HD.jpg", :width => 4000, :height => 5500) if domain_featured_left.include? 'yamaha'
  end 
  def featured_image_middle
    domain_featured_middle = request.host
    return cl_image_tag("vt7502.jpg", :width => 4000, :height => 5500) if domain_featured_middle.include? 'bike'
    return cl_image_tag("honda_cbr_600rr_black_wide.jpg", :width => 4000, :height => 5500) if domain_featured_middle.include? 'honda'
    return cl_image_tag("ducati-1199-panigale-black.jpg", :width => 4000, :height => 5500) if domain_featured_middle.include? 'ducati'
    return cl_image_tag("0808_hbkp_03_z+Harley-Davidson_Night_Rod_Special+Black.jpg", :width => 4000, :height => 5500) if domain_featured_middle.include? 'harley'
    return cl_image_tag("122_0609_02_z+2007_kawasaki_ninja_zx_6r+black_static1.jpg", :width => 4000, :height => 5500) if domain_featured_middle.include? 'kawasaki'
    return cl_image_tag("vespa_s_50_black_scooter.jpg", :width => 4000, :height => 5500) if domain_featured_middle.include? 'scooter'
    return cl_image_tag("apriliarsv006.jpg", :width => 4000, :height => 5500) if domain_featured_middle.include? 'suzuki'
    return cl_image_tag("matt-black-triumph.jpg", :width => 4000, :height => 5500) if domain_featured_middle.include? 'triumph'
    return cl_image_tag("yamaha_r6_black-HD.jpg", :width => 4000, :height => 5500) if domain_featured_middle.include? 'yamaha'
  end 
  def featured_image_right
    domain_featured_right = request.host
    return cl_image_tag("vt7503.jpg", :width => 4000, :height => 5500) if domain_featured_right.include? 'bike'
    return cl_image_tag("honda_cbr_600rr_black_wide.jpg", :width => 4000, :height => 5500) if domain_featured_right.include? 'honda'
    return cl_image_tag("ducati-1199-panigale-black.jpg", :width => 4000, :height => 5500) if domain_featured_right.include? 'ducati'
    return cl_image_tag("0808_hbkp_03_z+Harley-Davidson_Night_Rod_Special+Black.jpg", :width => 4000, :height => 5500) if domain_featured_right.include? 'harley'
    return cl_image_tag("122_0609_02_z+2007_kawasaki_ninja_zx_6r+black_static1.jpg", :width => 4000, :height => 5500) if domain_featured_right.include? 'kawasaki'
    return cl_image_tag("vespa_s_50_black_scooter.jpg", :width => 4000, :height => 5500) if domain_featured_right.include? 'scooter'
    return cl_image_tag("tl1000_001.jpg", :width => 4000, :height => 5500) if domain_featured_right.include? 'suzuki'
    return cl_image_tag("matt-black-triumph.jpg", :width => 4000, :height => 5500) if domain_featured_right.include? 'triumph'
    return cl_image_tag("yamaha_r6_black-HD.jpg", :width => 4000, :height => 5500) if domain_featured_right.include? 'yamaha'
  end 

  def random_image_left
    domain_random_left = request.host
    return cl_image_tag("vt7501.jpg", :width => 4000, :height => 5500) if domain_random_left.include? 'bike'
    return cl_image_tag("honda_cbr_600rr_black_wide.jpg", :width => 4000, :height => 5500) if domain_random_left.include? 'honda'
    return cl_image_tag("ducati-1199-panigale-black.jpg", :width => 4000, :height => 5500) if domain_random_left.include? 'ducati'
    return cl_image_tag("0808_hbkp_03_z+Harley-Davidson_Night_Rod_Special+Black.jpg", :width => 4000, :height => 5500) if domain_random_left.include? 'harley'
    return cl_image_tag("122_0609_02_z+2007_kawasaki_ninja_zx_6r+black_static1.jpg", :width => 4000, :height => 5500) if domain_random_left.include? 'kawasaki'
    return cl_image_tag("vespa_s_50_black_scooter.jpg", :width => 4000, :height => 5500) if domain_random_left.include? 'scooter'
    return cl_image_tag("busa002.jpg", :width => 4000, :height => 5500) if domain_random_left.include? 'suzuki'
    return cl_image_tag("matt-black-triumph.jpg", :width => 4000, :height => 5500) if domain_random_left.include? 'triumph'
    return cl_image_tag("yamaha_r6_black-HD.jpg", :width => 4000, :height => 5500) if domain_random_left.include? 'yamaha'
  end 
  def random_image_middle
    domain_random_middle = request.host
    return cl_image_tag("vt7502.jpg", :width => 4000, :height => 5500) if domain_random_middle.include? 'bike'
    return cl_image_tag("honda_cbr_600rr_black_wide.jpg", :width => 4000, :height => 5500) if domain_random_middle.include? 'honda'
    return cl_image_tag("ducati-1199-panigale-black.jpg", :width => 4000, :height => 5500) if domain_random_middle.include? 'ducati'
    return cl_image_tag("0808_hbkp_03_z+Harley-Davidson_Night_Rod_Special+Black.jpg", :width => 4000, :height => 5500) if domain_random_middle.include? 'harley'
    return cl_image_tag("122_0609_02_z+2007_kawasaki_ninja_zx_6r+black_static1.jpg", :width => 4000, :height => 5500) if domain_random_middle.include? 'kawasaki'
    return cl_image_tag("vespa_s_50_black_scooter.jpg", :width => 4000, :height => 5500) if domain_random_middle.include? 'scooter'
    return cl_image_tag("apriliarsv006.jpg", :width => 4000, :height => 5500) if domain_random_middle.include? 'suzuki'
    return cl_image_tag("matt-black-triumph.jpg", :width => 4000, :height => 5500) if domain_random_middle.include? 'triumph'
    return cl_image_tag("yamaha_r6_black-HD.jpg", :width => 4000, :height => 5500) if domain_random_middle.include? 'yamaha'
  end 
  def random_image_right
    domain_random_right = request.host
    return cl_image_tag("vt7503.jpg", :width => 4000, :height => 5500) if domain_random_right.include? 'bike'
    return cl_image_tag("honda_cbr_600rr_black_wide.jpg", :width => 4000, :height => 5500) if domain_random_right.include? 'honda'
    return cl_image_tag("ducati-1199-panigale-black.jpg", :width => 4000, :height => 5500) if domain_random_right.include? 'ducati'
    return cl_image_tag("0808_hbkp_03_z+Harley-Davidson_Night_Rod_Special+Black.jpg", :width => 4000, :height => 5500) if domain_random_right.include? 'harley'
    return cl_image_tag("122_0609_02_z+2007_kawasaki_ninja_zx_6r+black_static1.jpg", :width => 4000, :height => 5500) if domain_random_right.include? 'kawasaki'
    return cl_image_tag("vespa_s_50_black_scooter.jpg", :width => 4000, :height => 5500) if domain_random_right.include? 'scooter'
    return cl_image_tag("tl1000_001.jpg", :width => 4000, :height => 5500) if domain_random_right.include? 'suzuki'
    return cl_image_tag("matt-black-triumph.jpg", :width => 4000, :height => 5500) if domain_random_right.include? 'triumph'
    return cl_image_tag("yamaha_r6_black-HD.jpg", :width => 4000, :height => 5500) if domain_random_right.include? 'yamaha'
  end 
  

end