class FlatsController < ApplicationController
  # Cria uma constante para ser usada no método #set_flats
  FLATS_URL = 'https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json'.freeze

  # Antes de executar qualquer action deste controller, rodar o método #set_flat
  before_action :set_flats

  def index; end

  def show
    @flat = @flats.find { |flat| flat['id'] == params[:id].to_i }
  end

  private

  def set_flats
    @flats = JSON.parse(URI.parse(FLATS_URL).read)
  end
end
