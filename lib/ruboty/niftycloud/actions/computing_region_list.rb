module Ruboty
  module Niftycloud
    module Actions
      class ComputingRegionList < Base
        def call
          computing.regions.each do |region|
            message.reply("#{region['regionName']} #{region['regionEndpoint']} #{region['isDefault']}")
          end
        end
      end
    end
  end
end
