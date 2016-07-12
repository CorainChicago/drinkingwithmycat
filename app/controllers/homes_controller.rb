class HomesController < ApplicationController

  def index
    @charlie = Charlie.order("created_at DESC").first(3)
  end
end