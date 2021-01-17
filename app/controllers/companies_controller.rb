class CompaniesController < ApplicationController
  before_action :set_companies
  before_action :scope_companies, unless: -> { params[:id].in?(%w[1 2]) }

  def show
    render params[:id]
  end

  private

  def set_companies
    @q = Company.ransack(params[:q])
    @companies = @q.result
  end

  def scope_companies
    @companies = @companies.page(params[:page])
  end
end
