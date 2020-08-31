class CompaniesController < ApplicationController
  def all
    @companies = Company.all
  end

  def next
    @companies = Company.page(params[:page])
  end

  def more
    @companies = Company.page(params[:page])
  end

  def endless
    @companies = Company.page(params[:page])
  end
end
