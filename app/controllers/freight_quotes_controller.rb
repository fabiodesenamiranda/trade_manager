class FreightQuotesController < ApplicationController
  before_action :set_freight_quote, only: %i[ show edit update destroy ]

  # GET /freight_quotes or /freight_quotes.json
  def index
    @freight_quotes = FreightQuote.all
  end

  # GET /freight_quotes/1 or /freight_quotes/1.json
  def show
  end

  # GET /freight_quotes/new
  def new
    @freight_quote = FreightQuote.new
  end

  # GET /freight_quotes/1/edit
  def edit
  end

  # POST /freight_quotes or /freight_quotes.json
  def create
    @freight_quote = FreightQuote.new(freight_quote_params)

    respond_to do |format|
      if @freight_quote.save
        format.html { redirect_to @freight_quote, notice: "Freight quote was successfully created." }
        format.json { render :show, status: :created, location: @freight_quote }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @freight_quote.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /freight_quotes/1 or /freight_quotes/1.json
  def update
    respond_to do |format|
      if @freight_quote.update(freight_quote_params)
        format.html { redirect_to @freight_quote, notice: "Freight quote was successfully updated." }
        format.json { render :show, status: :ok, location: @freight_quote }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @freight_quote.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /freight_quotes/1 or /freight_quotes/1.json
  def destroy
    @freight_quote.destroy!

    respond_to do |format|
      format.html { redirect_to freight_quotes_path, status: :see_other, notice: "Freight quote was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_freight_quote
      @freight_quote = FreightQuote.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def freight_quote_params
      params.expect(freight_quote: [ :transport_mode, :cost, :estimated_days, :provider ])
    end
end
