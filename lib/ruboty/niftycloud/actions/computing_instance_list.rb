module Ruboty
  module Niftycloud
    module Actions
      class ComputingInstanceList < Base
        def call
          computing.instances.each do |instance|
            message.reply "#{instance['instanceId']} #{instance['instanceType']} #{instance['instanceState']['name']} #{instance['placement']['availabilityZone']} #{instance['ipAddress']} #{instance['description']} #{instance['launchTime']}"
          end
        end
      end
    end
  end
end
