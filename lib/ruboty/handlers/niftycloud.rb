p 'handl'
module Ruboty
  module Handlers
    class Niftycloud < Base
      on(
        /niftycloud account list/,
        name: 'account_list',
        description: 'list niftycloud accounts',
      )

      on(
        /niftycloud account use (?<target>.+)/,
        name: 'account_use',
        description: 'use niftycloud account',
      )

      on(
        /niftycloud computing instance list/,
        name: 'computing_instance_list',
        description: 'list computing instances',
      )

      on(
        /niftycloud computing instance show (?<instance_id>.+)/,
        name: 'computing_instance_show',
        description: 'show computing instance',
      )

      on(
        /niftycloud computing security_group list/,
        name: 'computing_security_group_list',
        description: 'list computing security groups',
      )

      on(
        /niftycloud computing security_group show (?<group_name>.+)/,
        name: 'computing_security_group_show',
        description: 'show computing security group',
      )

      on(
        /niftycloud computing volume list/,
        name: 'computing_volume_list',
        description: 'list computing volumes',
      )

      on(
        /niftycloud computing volume show (?<volume_id>.+)/,
        name: 'computing_volume_show',
        description: 'show computing volume',
      )

      on(
        /niftycloud computing load_balancer list/,
        name: 'computing_load_balancer_list',
        description: 'list computing load balancers',
      )

      on(
        /niftycloud computing load_balancer show (?<load_balancer_name>.+)/,
        name: 'computing_load_balancer_show',
        description: 'show computing load balancer',
      )

      on(
        /niftycloud computing region list/,
        name: 'computing_region_list',
        description: 'list computing regions',
      )

      on(
        /niftycloud computing region use (?<region>.+)/,
        name: 'computing_region_use',
        description: 'use computing region',
      )

      def account_list(message)
        Ruboty::Niftycloud::Actions::AccountList.new(message).call
      end

      def account_use(message)
        Ruboty::Niftycloud::Actions::AccountUse.new(message).call
      end

      def computing_instance_list(message)
        Ruboty::Niftycloud::Actions::ComputingInstanceList.new(message).call
      end

      def computing_instance_show(message)
        Ruboty::Niftycloud::Actions::ComputingInstanceShow.new(message).call
      end

      def computing_security_group_list(message)
        Ruboty::Niftycloud::Actions::ComputingSecurityGroupList.new(message).call
      end

      def computing_security_group_show(message)
        Ruboty::Niftycloud::Actions::ComputingSecurityGroupShow.new(message).call
      end

      def computing_volume_list(message)
        Ruboty::Niftycloud::Actions::ComputingVolumeList.new(message).call
      end

      def computing_volume_show(message)
        Ruboty::Niftycloud::Actions::ComputingVolumeShow.new(message).call
      end

      def computing_load_balancer_list(message)
        Ruboty::Niftycloud::Actions::ComputingLoadBalancerList.new(message).call
      end

      def computing_load_balancer_show(message)
        Ruboty::Niftycloud::Actions::ComputingLoadBalancerShow.new(message).call
      end

      def computing_region_list(message)
        Ruboty::Niftycloud::Actions::ComputingRegionList.new(message).call
      end

      def computing_region_use(message)
        Ruboty::Niftycloud::Actions::ComputingRegionUse.new(message).call
      end
    end
  end
end
