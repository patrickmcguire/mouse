class PositionsController < ApplicationController

  def create
    pos_json = params[:positions]
    puts "actually has value of #{pos_json}"
    positions = ActiveSupport::JSON.decode(pos_json)
    position_models = positions.collect do |p|
      Position.new({
        :x => p['x'],
        :y => p['y'],
        :sequence => p['sequence'],
        :session_id => p['session']
      })
    end
    Position.import(position_models)

    render :nothing => true
    return
    # no "no template whining"
  end
end
