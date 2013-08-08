class ShortJokesController < ApplicationController
  before_action :set_short_joke, only: [:show, :edit, :update, :destroy]

  # GET /short_jokes
  # GET /short_jokes.json
  def index
    @short_jokes = ShortJoke.all
  end

  # GET /short_jokes/1
  # GET /short_jokes/1.json
  def show
  end

  # GET /short_jokes/new
  def new
    @short_joke = ShortJoke.new
  end

  # GET /short_jokes/1/edit
  def edit
  end

  # POST /short_jokes
  # POST /short_jokes.json
  def create
    @short_joke = ShortJoke.new(short_joke_params)

    respond_to do |format|
      if @short_joke.save
        format.html { redirect_to @short_joke, notice: 'Short joke was successfully created.' }
        format.json { render action: 'show', status: :created, location: @short_joke }
      else
        format.html { render action: 'new' }
        format.json { render json: @short_joke.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /short_jokes/1
  # PATCH/PUT /short_jokes/1.json
  def update
    respond_to do |format|
      if @short_joke.update(short_joke_params)
        format.html { redirect_to @short_joke, notice: 'Short joke was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @short_joke.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /short_jokes/1
  # DELETE /short_jokes/1.json
  def destroy
    @short_joke.destroy
    respond_to do |format|
      format.html { redirect_to short_jokes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_short_joke
      @short_joke = ShortJoke.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def short_joke_params
      params.require(:short_joke).permit(:contents, :user_id)
    end
end
