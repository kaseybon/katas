require 'spec_helper'
require_relative '../bowling-frame'
require_relative '../bowling-player'
#require_relative '../bowling-score'

describe Frame do

  it 'rolls 5 then score equals 5' do
    frame = Frame.new
    expect(frame.roll(5)).to eq([5, 0])
  end

  it 'rolls 10 then score equals X' do
    frame = Frame.new
    expect(frame.roll(10)).to eq(['X', nil])
  end

  it 'rolls 3 and 4 then score equals 7' do
    frame = Frame.new
    expect(frame.roll(3,4)).to eq([3,4])
  end

  it 'rolls 5 and 5 then score equals /' do
    frame = Frame.new
    expect(frame.roll(5,5)).to eq([5,'/'])
  end

end

describe Player do

  it '' do
    player = Player.new
    expect(player.turn(6)).to eq([6, 0])
  end

  # it 'stores two turns equaling 6 and 10 to game array' do
  #   player = Player.new
  #   expect(player.turn(6) && player.turn(10)).to eq([6, 'X'])
  # end

  # it 'stores two turns, (6) and (5,5) to game array' do
  #   player = Player.new
  #   expect(player.turn(6) && player.turn(5,5)).to eq([6, '/'])
  # end

end

# describe Score do

#   # Thought I was ready for this but I'm not...

# end