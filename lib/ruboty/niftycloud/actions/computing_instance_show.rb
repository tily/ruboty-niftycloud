module Ruboty
  module Niftycloud
    module Actions
      class ComputingInstanceShow < Base
        def call
          instance_id = message[:instance_id]
          instance = computing.instances.find {|instance| instance['instanceId'] == instance_id }
          instance.each do |k, v|
            message.reply "#{k}: #{v}"
          end
        end
      end
    end
  end
end
