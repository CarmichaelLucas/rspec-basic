$LOAD_PATH.unshift("{File.dirname(__FILE__)}/../lib/")

require 'image/image_flipper'

RSpec.describe 'ImageFlipper' do
  it 'calls the flip method with the correct arguments' do
    mock = double('mini_magick')
    expect(mock).to receive(:flip).with('ruby.jpg')

    img = ImageFlipper.new(mock)
    img.flip('ruby.jpg')
  end
  
end
