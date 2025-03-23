class DashboardsController < ApplicationController
  def index
    @import_processes = ImportProcess.order(created_at: :desc).limit(5)
    @export_processes = ExportProcess.order(created_at: :desc).limit(5)
    @latest_freight_quotes = FreightQuote.order(created_at: :desc).limit(5)
    @latest_exchange_rate = ExchangeRate.last
  end
end
