module Ruboty
  module Niftycloud
    module Actions
      class ComputingVolumeShow < Base
        def call
          volume = computing.volumes.find {|volume| volume['volumeId'] == message[:volume_id] }
          volume.each do |k, v|
            puts "#{k}: #{v}"
          end
        end
      end
    end
  end
end
