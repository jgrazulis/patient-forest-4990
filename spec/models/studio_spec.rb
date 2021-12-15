require 'rails_helper'

RSpec.describe Studio, type: :model do
  describe 'relationships' do
    it { should have_many(:movies) }
  end

  describe 'content' do
    universal = Studio.create!(name: 'Universal Studios', location: 'Hollywood')
    visit '/studios' 
    expect(page).to have_content(universal.name)
    expect(page).to have_content(universal.location)
  end
end
