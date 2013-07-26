class IwillController < ApplicationController
    require 'json'
  layout "iwill"
 # resources :notifier
 # resources :submission

  def index
    #flash[:notice] = 'Under development'
  end

  def contact

  end

  def random

  end

  def valuation
    #@submission = Submission.new(submission_params)

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

    if @submission.save
      logger.info "Valuation data stored in database"
      # index
      flash[:notice] = "Successfully updated feature."

     # render :controller => 'iwill', :action => :index
      # redirect_to :action => :index and return
      # return

      Notifier.sub_received(request.host,@submission).deliver
      logger.info "Valuation submission sent to Phil"
     # Notifier.sub_ack(request.host,@submission).deliver
      logger.info "Acknowledgement sent to #{@submission.email}"
      redirect_to :index, notice: "Thank you for signing up!"
     # redirect_to(root_path, :notice => "Sent.")

    else

      flash[:alert] = 'Errors'
      render :action => 'valuation'  ,   notice: "Its all fucked"

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




  def help
  end



    def submission_params
      params.require(:email).permit(:first_name, :last_name, :email, :phone, :make, :model, :registration, :mileage, :postcode, :other, :value_wanted)

    end


end
