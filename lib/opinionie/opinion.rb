module Opinionie
  class Opinion
    def initialize(opinion)
      @opinion = opinion
    end

    def self.judge(opinion)
      if opinion.class == Opinion
        # Extract out into Constant
        'This opinion is a fountain of knowledge from which you should quench your thirst. My gift to you.'
      else
        # Extract out into Constant
        'Your opinion is ok. Not great. But also not good.'
      end
    end
  end
end
