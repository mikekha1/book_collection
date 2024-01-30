# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid title' do
    visit new_book_path
    fill_in "book[title]", with: 'harry potter'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
  end

  scenario 'empty title' do 
    visit new_book_path
    fill_in "book[title]", with: ''
    click_on'Create Book'
    expect(page).to have_content('1 error prohibited this book from being saved:')
  end

  scenario 'valid author' do
    visit new_book_path
    fill_in "book[title]", with: 'harry potter'
    fill_in "book[author]", with: 'jk rowling'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('jk rowling')
  end
  scenario 'valid price' do
    visit new_book_path
    fill_in "book[title]", with: 'harry potter'
    fill_in "book[price]", with: '15.99'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('15.99')
  end
  scenario 'valid published_date' do
    visit new_book_path
    fill_in "book[title]", with: 'harry potter'
    fill_in "book[published_date]", with: '2013-04-16'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('2013-04-16')
  end
end