class CompaniesController < ApplicationController
  def index
    @q = Company.ransack(params[:q])
    @companies = @q.result.page(params[:page])
  end
end
