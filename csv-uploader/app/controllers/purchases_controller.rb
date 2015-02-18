class PurchasesController < ApplicationController
  def index
    @documents = Document.all
  end

  def upload
    @purchase = Purchase.import(params[:file])
    redirect_to root_url, notice: "File uploaded."
  end
end
