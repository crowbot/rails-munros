class MunrosController < ApplicationController

  def index
    @munros = Munro.where('heightf >= ?', 4000)
  end

end
