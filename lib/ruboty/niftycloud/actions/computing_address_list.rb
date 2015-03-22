module Ruboty
  module Niftycloud
    module Actions
      class ComputingAddressList < Base
        def call
          computing.addresses.each do |address|
            # TODO: instance
            message.reply("#{address['publicIp']} #{address['privateIpAddress']} #{address['description']} #{address['availabilityZone']}")
          end
        end
      end
    end
  end
end
