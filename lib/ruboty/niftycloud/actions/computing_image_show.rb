module Ruboty
  module Niftycloud
    module Actions
      class ComputingImageShow < Base
        def call
          image = computing.images.find {|image| image['imageId'] == message[:image_id] }
          image.each do |k, v|
            message.reply "#{k}: #{v}"
          end
        end
      end
    end
  end
end
