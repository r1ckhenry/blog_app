require 'rails_helper'

describe Post do

  it 'must have a title' do 
    post = Post.new 
    expect(post.valid?).to eq false
  end

  it 'must have an author' do
    post = Post.new(title: 'This is a title')
    expect(post.valid?).to eq false
  end

  it 'must have content' do
    post = Post.new( title: 'This is a title', 
                      author: 'Rick')
    expect(post.valid?).to eq false
  end

end
