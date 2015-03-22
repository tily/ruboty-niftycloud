module Ruboty
  module Niftycloud
    module Actions
      class ComputingSecurityGroupList < Base
        def call
          computing.security_groups.each do |security_group|
            message.reply("#{security_group['groupName']} #{security_group['ipPermissions'] ? security_group['ipPermissions']['item'].size : 0} #{security_group['groupStatus']} #{security_group['groupDescription']} #{security_group['availabilityZone']}")
          end
        end
      end
    end
  end
end
