require 'rails_helper'

describe 'adding a post' do 

  before 'Commenting' do
    Post.create(title: 'Post Title', author: 'Rick Henry', content: 'Content')
  end

  it 'a user can add a blog to the site' do 
    visit(root_path)
    click_link('Add post')
    fill_in('Author', :with => 'Rick')
    fill_in('Title', :with => 'My first post')
    fill_in('Content', :with => 'content')
    click_button('Submit')
    expect(page).to have_content 'content'
  end

  it 'allow user to leave a comment' do 
    visit(posts_path)
    click_link('Post Title')
    click_link('Leave comment')

    fill_in('Name', with: 'John') 
    fill_in('Text', with: 'decent post')
    click_button('Submit')
    expect(page).to have_content 'decent post'
  end

end