class IwillController < ApplicationController

  layout "iwill"

  def index
  end

  def contact

  end

  def random

  end

  def valuation

    Rails.logger.info "My info message"
    Rails.logger.debug "My info message"
    Rails.logger.warn "My info message"

    @submission = Submission.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @submission }
    end
      @submission = Submission.new(params[:submission])
      @submission.save!
    end




  def help
  end
end
