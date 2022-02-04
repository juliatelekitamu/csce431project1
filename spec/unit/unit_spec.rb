# location: spec/unit/unit_spec.rb
require 'rails_helper'
require 'date'

RSpec.describe Book, type: :model do
  subject do
    described_class.new(title: 'harry potter', author: 'j. k. rolling', price: 10, published_date: DateTime.now())
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a name' do
    subject.title = nil
    expect(subject).not_to be_valid
  end
  it 'it is not valid without an author' do
    subject.author = nil
    expect(subject).not_to be_valid
  end
  it 'it is not valid without a price' do
    subject.price = nil
    expect(subject).not_to be_valid
  end
  it 'it is not valid without a published_date' do
    subject.published_date = nil
    expect(subject).not_to be_valid
  end
end