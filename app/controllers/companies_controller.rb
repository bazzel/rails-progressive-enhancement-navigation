class CompaniesController < ApplicationController
  def index
    @q = Company.ransack(params[:q])
    @companies = @q.result
    @companies = @companies.page(params[:page]) if params[:type].present?
  end
end
