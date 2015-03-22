module Ruboty
  module Niftycloud
    module Actions
      class ComputingAvailabilityZoneList < Base
        def call
          computing.availability_zones.each do |availability_zone|
            # TODO: {"zoneName"=>"east-11", "zoneState"=>"available", "regionName"=>"east-1", "messageSet"=>nil, "securityGroupSupported"=>"false", "isDefault"=>"false"}
            message.reply(availability_zone.values.join(' '))
          end
        end
      end
    end
  end
end
