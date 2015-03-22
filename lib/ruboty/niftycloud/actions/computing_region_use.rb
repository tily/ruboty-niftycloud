module Ruboty
  module Niftycloud
    module Actions
      class ComputingRegionUse < Base
        def call
          region = message[:region]
          current_region(region)
          message.reply("using region: #{region}")
        end
      end
    end
  end
end
