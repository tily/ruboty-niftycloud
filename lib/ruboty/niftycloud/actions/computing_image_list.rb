module Ruboty
  module Niftycloud
    module Actions
      class ComputingImageList < Base
        def call
          computing.images.each do |image|
            # TODO: OS name
            message.reply("#{image['name']} #{image['imageId']} #{image['architecture']} #{image['imageState']} #{image['imageOwnerAlias']}(#{image['imageOwnerId']}) #{image['description']} #{image['placement'] ? image['placement']['availabilityZone'] : ''}")
          end
        end
      end
    end
  end
end
