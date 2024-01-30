require 'rails_helper'

RSpec.describe Book, type: :model do
  subject do
    described_class.new(title: 'harry potter')
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a name' do
    subject.title = nil
    expect(subject).not_to be_valid
  end
end

RSpec.describe Book, type: :model do
    subject do
      described_class.new(title: 'harry potter', author: 'jk rowling')
    end
  
    it 'is valid with valid attributes' do
      expect(subject).to be_valid
    end

    it 'is not valid without a name' do
      subject.title = nil
      expect(subject).not_to be_valid
    end
end

RSpec.describe Book, type: :model do
    subject do
      described_class.new(title: 'harry potter', price: '15.99')
    end
  
    it 'is valid with valid attributes' do
      expect(subject).to be_valid
    end

    it 'is not valid without a name' do
      subject.title = nil
      expect(subject).not_to be_valid
    end

end

RSpec.describe Book, type: :model do
    subject do
      described_class.new(title: 'harry potter', published_date: '2013-04-16')
    end
  
    it 'is valid with valid attributes' do
      expect(subject).to be_valid
    end

    it 'is not valid without a name' do
      subject.title = nil
      expect(subject).not_to be_valid
    end
    
end
