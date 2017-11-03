require 'rails_helper'

RSpec.describe 'User visits snack page' do
  scenario 'user sees snack information' do
    owner = Owner.create(name: "Sam's Snacks")
    dons  = owner.machines.create(location: "Don's Mixed Drinks")
    snack = Snack.create(name: "donut", price: 1.50)

    visit snack_path(snack)

    expect(current_path).to eq("/snacks/#{snack.id}")
    expect(page).to have_content(snack.name)
    expect(page).to have_content(snack.price)
  end

end