require 'spec_helper'

feature 'repair orders' do
  
  scenario 'creating a repair order shows it on the list page' do
    visit repair_orders_path
    
    page.should have_content('Listing Repair Orders')
  end
  
end