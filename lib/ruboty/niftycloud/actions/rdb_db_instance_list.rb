module Ruboty
  module Niftycloud
    module Actions
      class RdbDbInstanceList < Base
        def call
          rdb.db_instances.each do |db_instance|
            # TODO: Type(master or replica)
            message.reply("#{db_instance['DBInstanceIdentifier']} #{db_instance['DBInstanceClass']} #{db_instance['Engine']}#{db_instance['EngineVersion']} #{db_instance['DBInstanceStatus']} #{db_instance['AllocatedStorage']} #{db_instance['AvailabilityZone']} #{db_instance['Endpoint']['Address']} #{db_instance['Endpoint']['NiftyPrivateAddress']}")
          end
        end
      end
    end
  end
end
