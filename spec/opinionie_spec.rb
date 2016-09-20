require 'spec_helper'

describe Opinionie::Opinion do
  it 'does not like your opinions' do
    expect(Opinionie::Opinion.judge('Kanye West is a God.')).to eq('Your opinion is ok. Not great. But also not good.')
  end

  it 'likes its own opinions' do
    expect(Opinionie::Opinion.judge(Opinionie::Opinion.new('Watermelons are true to their name.'))).to eq('This opinion is a fountain of knowledge from which you should quench your thirst. My gift to you.')
  end
end
