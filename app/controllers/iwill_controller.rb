class IwillController < ApplicationController
  require 'json'
  layout "iwill"
 # resources :notifier
 # resources :submission

  def index
    #flash[:notice] = 'Under development'
	if request.host.include? 'bike'
      @bikes = Bike.all
    else
      @bike_make = get_bike_make
      @bikes = Bike.where(:make => @bike_make).all
    end
  end

  def contact

  end

  def faq
  end

def create

    Rails.logger.info "My info message"
    Rails.logger.debug "My info message"
    Rails.logger.warn "My info message"

    #@submission = Submission.new


    #respond_to do |format|
    #  format.html # new.html.erb
    #  format.json { render json: @submission }
     @submission = Submission.new(submission_params)
    logger.debug "New post: #{@submission.attributes.inspect}"

      # @submission = @machine.submission.build(params[:submission])
    #@product = @event.product.build(params[:product])


      #@submission.save!
    if !Rails.env.test?
      captcha = verify_recaptcha
      flash[:error] = "Incorrect captcha" unless captcha
    else
      captcha = true
    end
    
    if captcha && @submission.save
      logger.info "Valuation data stored in database"
      # index
      flash[:notice] = "Successfully updated feature."

     # render :controller => 'iwill', :action => :index
      # redirect_to :action => :index and return
      # return

      #Notifier.sub_received(request.host,@submission).deliver
      logger.info "Valuation submission sent to Phil"

      @bike = Bike.create(:make => @submission.make,:model=> @submission.model,:registration=> @submission.registration, :mileage=> @submission.mileage, :postcode=> @submission.postcode, :other=> @submission.other, :value_wanted=> @submission.value_wanted,:submission_id=>@submission.id)
   
     @bike.photos << @submission.photos

	Notifier.sub_received(request.host,@bike, @submission).deliver
	Notifier.sub_ack(request.host,@bike, @submission).deliver	

     # Notifier.sub_received(request.host,@submission).deliver
     # Notifier.sub_ack(request.host,@submission).deliver

      logger.info "Acknowledgement sent to #{@submission.email}"

      redirect_to :index, notice: "Thank you for valuating !"
     # redirect_to(root_path, :notice => "Sent.")

    else

     # flash[:alert] = 'Errors'
      render :action => 'valuation' # ,   notice: "Its all fucked"

    end
    #logger.debug "New post: #{@submission.attributes.inspect}"



    #flash[:notice] = 'saved!'



    #redirect_to :action => :index and return



#    borrowed code
#    @event = Event.new(params[:event])
#    @feature = Feature.new(params[:feature])
#    @feature.event = @event if params[:save_event_id]
#    if @event.valid? && @feature.valid? # Don't save them unless both are valid
#      @event.save
#      @feature.save
#      flash[:notice] = 'saved!'
#      redirect_to :controller => 'frontpage', :action => 'index'
#    else
#      render :action => 'new'
#    end
#
    end


  def contact_us
    @contact_us  = Contact.new(contact_params)
    logger.debug "New post: #{@contact_us.attributes.inspect}"
    if !Rails.env.test?
      captcha = verify_recaptcha
      flash[:error] = "Incorrect captcha" unless captcha
    else
      captcha = true
    end
    if captcha && @contact_us.save
      logger.info "Contact data stored in database"
      # index
      flash[:notice] = "Your feedack was sent.We will contact you soon."
      Notifier.feedback_received(request.host,@contact_us).deliver     
      Notifier.feedback_ack(request.host,@contact_us).deliver
      redirect_to :index, notice: "Thank you for your feedback. We will contact you soon !"
    else
      flash[:alert] = 'Errors'
      render :action => 'contact'  ,   notice: "Its all fucked"
    end

  end

  def random
	if request.host.include? 'bike'
      @bikes = Bike.all
    else
      @bike_make = get_bike_make
      @bikes = Bike.where(:make => @bike_make).all
    end
  end

  def featured
	if request.host.include? 'bike'
      @bikes = Bike.all
    else
      @bike_make = get_bike_make
      @bikes = Bike.where(:make => @bike_make).all
    end
  end

 private
  def get_bike_make
    domain_suff = request.host
    if domain_suff.include? 'honda' then domain_suff = 'Honda' end
    if domain_suff.include? 'ducati' then domain_suff = 'Ducati' end
    if domain_suff.include? 'harley' then domain_suff = 'Harley' end
    if domain_suff.include? 'kawasaki' then domain_suff = 'Kawasaki' end
    if domain_suff.include? 'scooter' then domain_suff = 'Scooter' end
    if domain_suff.include? 'suzuki' then domain_suff = 'Suzuki' end
    if domain_suff.include? 'triumph' then domain_suff = 'Triumph' end
    if domain_suff.include? 'yamaha' then domain_suff = 'Yamaha' end   
    return domain_suff
  end

  def valuation
    #@submission = Submission.new(submission_params)
  end

  



  def help
  end

private

    def submission_params
      params.require(:submission).permit(:first_name, :last_name, :email, :phone, :make, :model, :registration, :mileage, :postcode, :other, :value_wanted,:avatar ,photos:[])


    end

    def contact_params
      params.require(:contact).permit(:name, :email, :city,:phone, :comment)
    end 


end
