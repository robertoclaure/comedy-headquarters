class LongJokesController < ApplicationController
  before_action :set_long_joke, only: [:show, :edit, :update, :destroy]

  # GET /long_jokes
  # GET /long_jokes.json
  def index
    @long_jokes = LongJoke.all
  end

  # GET /long_jokes/1
  # GET /long_jokes/1.json
  def show
  end

  # GET /long_jokes/new
  def new
    @long_joke = LongJoke.new
  end

  # GET /long_jokes/1/edit
  def edit
  end

  # POST /long_jokes
  # POST /long_jokes.json
  def create
    @long_joke = LongJoke.new(long_joke_params)

    respond_to do |format|
      if @long_joke.save
        format.html { redirect_to @long_joke, notice: 'Long joke was successfully created.' }
        format.json { render action: 'show', status: :created, location: @long_joke }
      else
        format.html { render action: 'new' }
        format.json { render json: @long_joke.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /long_jokes/1
  # PATCH/PUT /long_jokes/1.json
  def update
    respond_to do |format|
      if @long_joke.update(long_joke_params)
        format.html { redirect_to @long_joke, notice: 'Long joke was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @long_joke.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /long_jokes/1
  # DELETE /long_jokes/1.json
  def destroy
    @long_joke.destroy
    respond_to do |format|
      format.html { redirect_to long_jokes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_long_joke
      @long_joke = LongJoke.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def long_joke_params
      params.require(:long_joke).permit(:contents, :user_id)
    end
end
