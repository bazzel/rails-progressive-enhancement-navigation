class CompaniesController < ApplicationController
  before_action :set_companies
  before_action :scope_companies, expect: %i[uno due]

  private

  def set_companies
    @q = Company.ransack(params[:q])
    @companies = @q.result
  end

  def scope_companies
    @companies = @companies.page(params[:page])
  end
end
