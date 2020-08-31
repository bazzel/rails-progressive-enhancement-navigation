class CompaniesController < ApplicationController
  def index
    @companies = Company.all
    render 'index'
  end

  alias :all :index
  alias :next :index
  alias :more :index
  alias :endless :index
end
