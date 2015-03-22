module Ruboty
  module Niftycloud
    module Actions
      class ComputingLoadBalancerList < Base
        def call
          computing.load_balancers.each do |load_balancer|
            message.reply "#{load_balancer['LoadBalancerName']} #{load_balancer['DNSName']} #{load_balancer['ListenerDescriptions']} #{load_balancer['Instances'] ? [load_balancer['Instances']['member']].flatten.size : ''} #{}"
          end
        end
      end
    end
  end
end
