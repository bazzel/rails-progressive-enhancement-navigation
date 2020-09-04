class CompaniesController < ApplicationController
  def index
    unless params[:type]
      @companies = Company.all
    else
      @companies = Company.page(params[:page])
    end
  end
end
