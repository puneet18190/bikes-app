class BikesController < ApplicationController
  # GET /bikes
  # GET /bikes.json
  layout 'iwill'
  def index
    if request.host.include? 'bike'
      @bikes = Bike.all
    else
      @bike_make = get_bike_make
      @bikes = Bike.where(:make => @bike_make)
    end 
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @bikes }
    end
  end

  # GET /bikes/1
  # GET /bikes/1.json
  def show
    @bike = Bike.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @bike }
    end
  end

  # GET /bikes/new
  # GET /bikes/new.json
  def new
    @bike = Bike.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @bike }
    end
  end

  # GET /bikes/1/edit
  def edit
    @bike = Bike.find(params[:id])
  end

  # POST /bikes
  # POST /bikes.json
  def create
    @bike = Bike.new(params[:bike])

    respond_to do |format|
      if @bike.save
        format.html { redirect_to @bike, notice: 'Bike was successfully created.' }
        format.json { render json: @bike, status: :created, location: @bike }
      else
        format.html { render action: "new" }
        format.json { render json: @bike.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /bikes/1
  # PUT /bikes/1.json
  def update
    @bike = Bike.find(params[:id])

    respond_to do |format|
      if @bike.update_attributes(params[:bike])
        format.html { redirect_to @bike, notice: 'Bike was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @bike.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bikes/1
  # DELETE /bikes/1.json
  def destroy
    @bike = Bike.find(params[:id])
    @bike.destroy

    respond_to do |format|
      format.html { redirect_to bikes_url }
      format.json { head :no_content }
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
end
