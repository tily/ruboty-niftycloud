module Ruboty
  module Handlers
    class Niftycloud < Base
      attr_accessor :prev

      def initialize(robot)
        super(robot)
        @prev = {}
      end

      NIFTYCLOUD = "(?:niftycloud|nc)"

      ACCOUNT = "(?:account|a)"
      COMPUTING = "(?:computing|c)"
      RDB = "(?:rdb|r)"

      INSTANCE = "(?:instance|i)"
      KEY_PAIR = "(?:key_pair|kp)"
      SECURITY_GROUP = "(?:security_group|sg)"
      VOLUME = "(?:volume|v)"
      IMAGE = "(?:image)"
      LOAD_BALANCER = "(?:load_balancer|lb)"
      ADDRESS = "(?:address)"
      SSL_CERTIFICATE = "(?:ssl_certificate|ssl)"
      AVAILABILITY_ZONE = "(?:availability_zone|zone)"
      DB_INSTANCE = "(?:db_instance|i)"

      LIST = "(?:list|l)"

      on(
        /#{NIFTYCLOUD} #{ACCOUNT} #{LIST}/,
        name: 'account_list',
        description: 'list niftycloud accounts',
      )

      on(
        /#{NIFTYCLOUD} #{ACCOUNT} use (?<target>.+)/,
        name: 'account_use',
        description: 'use niftycloud account',
      )

      on(
        /#{NIFTYCLOUD} event watch/,
        name: 'event_watch',
        description: 'watch niftycloud events',
      )

      on(
        /#{NIFTYCLOUD} event unwatch/,
        name: 'event_unwatch',
        description: 'unwatch niftycloud events',
      )

      on(
        /#{NIFTYCLOUD} #{COMPUTING} #{INSTANCE} #{LIST}/,
        name: 'computing_instance_list',
        description: 'list computing instances',
      )

      on(
        /#{NIFTYCLOUD} #{COMPUTING} #{INSTANCE} show (?<instance_id>.+)/,
        name: 'computing_instance_show',
        description: 'show computing instance',
      )

      on(
        /#{NIFTYCLOUD} #{COMPUTING} #{SECURITY_GROUP} #{LIST}/,
        name: 'computing_security_group_list',
        description: 'list computing security groups',
      )

      on(
        /#{NIFTYCLOUD} #{COMPUTING} #{SECURITY_GROUP} show (?<group_name>.+)/,
        name: 'computing_security_group_show',
        description: 'show computing security group',
      )

      on(
        /#{NIFTYCLOUD} #{COMPUTING} #{VOLUME} #{LIST}/,
        name: 'computing_volume_list',
        description: 'list computing volumes',
      )

      on(
        /#{NIFTYCLOUD} #{COMPUTING} #{VOLUME} show (?<volume_id>.+)/,
        name: 'computing_volume_show',
        description: 'show computing volume',
      )

      on(
        /#{NIFTYCLOUD} #{COMPUTING} #{LOAD_BALANCER} #{LIST}/,
        name: 'computing_load_balancer_list',
        description: 'list computing load balancers',
      )

      on(
        /#{NIFTYCLOUD} #{COMPUTING} #{LOAD_BALANCER} show (?<load_balancer_name>.+)/,
        name: 'computing_load_balancer_show',
        description: 'show computing load balancer',
      )

      on(
        /#{NIFTYCLOUD} #{COMPUTING} #{ADDRESS} #{LIST}/,
        name: 'computing_address_list',
        description: 'list computing addresss',
      )

      on(
        /#{NIFTYCLOUD} #{COMPUTING} #{AVAILABILITY_ZONE} #{LIST}/,
        name: 'computing_availability_zone_list',
        description: 'list computing availability zones',
      )

      on(
        /#{NIFTYCLOUD} #{COMPUTING} #{IMAGE} #{LIST}/,
        name: 'computing_image_list',
        description: 'list computing images',
      )

      on(
        /#{NIFTYCLOUD} #{COMPUTING} #{IMAGE} show (?<image_id>.+)/,
        name: 'computing_image_show',
        description: 'show computing image',
      )

      on(
        /#{NIFTYCLOUD} #{COMPUTING} #{KEY_PAIR} #{LIST}/,
        name: 'computing_key_pair_list',
        description: 'list computing key pairs',
      )

      on(
        /#{NIFTYCLOUD} #{COMPUTING} #{KEY_PAIR} show (?<key_pair_id>.+)/,
        name: 'computing_key_pair_show',
        description: 'show computing key pair',
      )

      on(
        /#{NIFTYCLOUD} #{COMPUTING} #{SSL_CERTIFICATE} list/,
        name: 'computing_ssl_certificate_list',
        description: 'list computing ssl certificates',
      )

      on(
        /#{NIFTYCLOUD} #{COMPUTING} #{SSL_CERTIFICATE} show (?<fqdn_id>.+)/,
        name: 'computing_ssl_certificate_show',
        description: 'show computing ssl certificate',
      )

      on(
        /#{NIFTYCLOUD} #{RDB} #{DB_INSTANCE} #{LIST}/,
        name: 'rdb_db_instance_list',
        description: 'list rdb db instances',
      )

      on(
        /#{NIFTYCLOUD} #{RDB} #{DB_INSTANCE} show (?<db_instance_id>.+)/,
        name: 'rdb_db_instance_show',
        description: 'show rdb db instance',
      )

      on(
        /#{NIFTYCLOUD} #{COMPUTING} region #{LIST}/,
        name: 'computing_region_list',
        description: 'list computing regions',
      )

      on(
        /#{NIFTYCLOUD} #{COMPUTING} region use (?<region>.+)/,
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

      def computing_address_list(message)
        Ruboty::Niftycloud::Actions::ComputingAddressList.new(message).call
      end

      def computing_availability_zone_list(message)
        Ruboty::Niftycloud::Actions::ComputingAvailabilityZoneList.new(message).call
      end

      def computing_image_list(message)
        Ruboty::Niftycloud::Actions::ComputingImageList.new(message).call
      end

      def computing_image_show(message)
        Ruboty::Niftycloud::Actions::ComputingImageShow.new(message).call
      end

      def computing_key_pair_list(message)
        Ruboty::Niftycloud::Actions::ComputingKeyPairList.new(message).call
      end

      def computing_key_pair_show(message)
        Ruboty::Niftycloud::Actions::ComputingKeyPairShow.new(message).call
      end

      def computing_ssl_certificate_list(message)
        Ruboty::Niftycloud::Actions::ComputingSslCertificateList.new(message).call
      end

      def computing_ssl_certificate_show(message)
        Ruboty::Niftycloud::Actions::ComputingSslCertificateShow.new(message).call
      end

      def rdb_db_instance_list(message)
        Ruboty::Niftycloud::Actions::RdbDbInstanceList.new(message).call
      end

      def rdb_db_instance_show(message)
        Ruboty::Niftycloud::Actions::RdbDbInstanceShow.new(message).call
      end

      def computing_region_list(message)
        Ruboty::Niftycloud::Actions::ComputingRegionList.new(message).call
      end

      def computing_region_use(message)
        Ruboty::Niftycloud::Actions::ComputingRegionUse.new(message).call
      end

      def event_watch(message)
        return if @thread
        @thread = Thread.new do
          base = Ruboty::Niftycloud::Actions::Base.new(message)
          loop do
            base.accounts.each do |account|
              base.current_account(account[:name])

              base.computing.regions.each do |region|
                base.current_region(region['regionName'])

                resources = {
                  'volumes' => 'volumeId',
                  'key_pairs' => 'keyName',
                  'images' => 'imageId',
                  'ssl_certificates' => 'fqdnId',
                  'addresses' => ['publicIp', 'privateIpAddress'],
                  'uploads' => ['conversionTaskId'],
                  'instances' => ['instanceId'],
                }
                resources.each do |resource, id|
                  key = [account[:name], region['regionName'], resource].join(':')
                  prev = @prev[key]
                  curr = base.computing.send(resource)
                  if prev
                    events = D2E.new(id: id).d2e(prev, curr) 
                    events.each do |event|
                      robot.say body: "#{account[:name]}(#{account[:description]}) の #{region['regionName']} で下記 #{resource} が #{event['type']} されました"
                      if event['type'] == 'create' || event['type'] == 'delete'
                        robot.say body: event['item']
                      else
                        robot.say body: event
                      end
                    end
                  end
                  @prev[key] = curr
                end
              end
            end
            sleep 5
          end
        end.run
      end
    end

    def event_unwatch(message)
      @thread.kill if @thread
    end
  end
end
