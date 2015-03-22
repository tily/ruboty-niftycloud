module Ruboty
  module Niftycloud
    module Actions
      class ComputingVolumeList < Base
        def call
          computing.volumes.each do |volume|
            message.reply("#{volume['volumeId']} #{volume['diskType']} #{volume['size']} #{volume['status']} #{volume['attachmentSet'] ? [volume['attachmentSet']['item']].flatten.first['instanceId'] : ''} #{volume['availabilityZone']}")
          end
        end
      end
    end
  end
end
