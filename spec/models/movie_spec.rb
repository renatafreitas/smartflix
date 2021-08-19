# frozen_string_literal: true

RSpec.describe Movie do
  subject(:instance) { described_class.new(title:'Sharknado') }
  it 'has a title' do
    expect(subject.title).to eq('Sharknado')
  end
end

