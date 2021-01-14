class ExamplesController < ApplicationController
  def show
    render template: "examples/#{params[:example]}"
  end
end
