class CompaniesController < ApplicationController
  def index
    @companies = Company.all
    render 'index'
  end

  def all
    @companies = Company.all
  end

  def next
    @companies = Company.page(params[:page])
  end

  alias :more :index
  alias :endless :index
end
