module Ruboty
  module Niftycloud
    module Actions
      class RdbDbInstanceShow < Base
        def call
          db_instance = rdb.db_instances.find {|db_instance| db_instance['DBInstanceIdentifier'] == message[:db_instance_id] }
          db_instance.each do |k, v|
            message.reply "#{k}: #{v}"
          end
        end
      end
    end
  end
end
