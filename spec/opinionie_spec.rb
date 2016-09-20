require 'spec_helper'

# let vs let!
  # let:
  #   When you have to assign a variable instead of using a before block to create an instance variable, use let.
  #   Using let the variable lazy loads only when it is used the first time in the test and get cached until that
  #   specific test is finished.
  #   Initialization code only runs if the example calls it.
  # let!:
  #   Use let! if you want to define the variable when the block is defined.
  #   This can be useful to populate your database to test queries or scopes.

describe Opinionie::Opinion do
  describe :judge do
    it 'does not like your opinions' do
      expect(Opinionie::Opinion.judge('Kanye West is a God.')).to eq('Your opinion is ok. Not great. But also not good.')
    end

    it 'likes its own opinions' do
      expect(Opinionie::Opinion.judge(Opinionie::Opinion.new('Watermelons are true to their name.'))).to eq('This opinion is a fountain of knowledge from which you should quench your thirst. My gift to you.')
    end
  end

  describe :pluralize do
    it 'pluralizes a word' do
      expect(Opinionie::Opinion.pluralize('opinion')).to eq('opinions')
    end
  end
end
