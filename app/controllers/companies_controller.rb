class CompaniesController < ApplicationController
  def uno
    @q = Company.ransack(params[:q])
    @companies = @q.result
  end

  def due
    @q = Company.ransack(params[:q])
    @companies = @q.result
  end

  def tre
    @q = Company.ransack(params[:q])
    @companies = @q.result.page(params[:page])
  end

  def quattro
    @q = Company.ransack(params[:q])
    @companies = @q.result.page(params[:page])
  end

  def cinque
    @q = Company.ransack(params[:q])
    @companies = @q.result.page(params[:page])
  end

  def sei
    @q = Company.ransack(params[:q])
    @companies = @q.result.page(params[:page])
  end
end
