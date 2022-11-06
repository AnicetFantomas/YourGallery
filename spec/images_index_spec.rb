require 'rails_helper'

RSpec.describe 'images#index', type: :feature do
  describe 'Post' do
    before(:each) do
     
      @image1 = Image.create(title: 'First Image', description: 'This is my first')
      @image2 = Image.create(title: 'Second Image', description: 'This is my second')
      @image3 = Image.create(title: 'Third Image', description: 'This is my third')
    end

    it 'shows the image title' do
      expect(page).to have_content('First Image')
    end

    it 'shows number of images created' do
      image = Image.all
      expect(image.size).to eql(3)
    end

    it 'can see some description' do
      expect(page).to have_content 'This is my first'
    end
  end
end
