class ProdottisController < ApplicationController
  before_action :set_prodotti, only: %i[ show edit update destroy ]

  # GET /prodottis or /prodottis.json
  def index
    @prodottis = Prodotti.all
  end

  # GET /prodottis/1 or /prodottis/1.json
  def show
  end

  # GET /prodottis/new
  def new
    @prodotti = Prodotti.new
  end

  # GET /prodottis/1/edit
  def edit
  end

  # POST /prodottis or /prodottis.json
  def create
    @prodotti = Prodotti.new(prodotti_params)

    respond_to do |format|
      if @prodotti.save
        format.html { redirect_to @prodotti, notice: "Prodotti was successfully created." }
        format.json { render :show, status: :created, location: @prodotti }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @prodotti.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prodottis/1 or /prodottis/1.json
  def update
    respond_to do |format|
      if @prodotti.update(prodotti_params)
        format.html { redirect_to @prodotti, notice: "Prodotti was successfully updated." }
        format.json { render :show, status: :ok, location: @prodotti }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @prodotti.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prodottis/1 or /prodottis/1.json
  def destroy
    @prodotti.destroy
    respond_to do |format|
      format.html { redirect_to prodottis_url, notice: "Prodotti was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prodotti
      @prodotti = Prodotti.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def prodotti_params
      params.require(:prodotti).permit(:codice, :nome, :numeropezzi, :ingredienti, :prezzo, :cover)
    end
end
