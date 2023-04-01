# frozen_string_literal: true

class BrokersController < ApplicationController
  before_action :set_broker, only: %i[show edit update destroy]

  # GET /brokers or /brokers.json
  def index
    @brokers = Broker.all
  end

  # GET /brokers/1 or /brokers/1.json
  def show; end

  # GET /brokers/new
  def new
    @broker = Broker.new
  end

  # GET /brokers/1/edit
  def edit; end

  # POST /brokers or /brokers.json
  def create
    @broker = Broker.new(broker_params)

    respond_to do |format|
      if @broker.save
        format.html do
          redirect_to broker_url(@broker),
                      notice: 'Broker was successfully created.'
        end
        format.json { render :show, status: :created, location: @broker }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json do
          render json: @broker.errors, status: :unprocessable_entity
        end
      end
    end
  end

  # PATCH/PUT /brokers/1 or /brokers/1.json
  def update
    respond_to do |format|
      if @broker.update(broker_params)
        format.html do
          redirect_to broker_url(@broker),
                      notice: 'Broker was successfully updated.'
        end
        format.json { render :show, status: :ok, location: @broker }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json do
          render json: @broker.errors, status: :unprocessable_entity
        end
      end
    end
  end

  # DELETE /brokers/1 or /brokers/1.json
  def destroy
    @broker.destroy

    respond_to do |format|
      format.html do
        redirect_to brokers_url, notice: 'Broker was successfully destroyed.'
      end
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_broker
    @broker = Broker.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def broker_params
    params.require(:broker).permit(:address, :country, :email, :mc, :name,
                                   :phone, :usdot)
  end
end
