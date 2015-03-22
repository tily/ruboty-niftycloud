module Ruboty
  module Niftycloud
    module Actions
      class ComputingKeyPairList < Base
        def call
          computing.key_pairs.each do |key_pair|
            message.reply("#{key_pair['keyName']} #{key_pair['keyFingerprint']}")
          end
        end
      end
    end
  end
end
