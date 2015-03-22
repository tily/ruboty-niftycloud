module Ruboty
  module Niftycloud
    module Actions
      class ComputingSslCertificateShow < Base
        def call
          ssl_certificate = computing.ssl_certificates.find {|ssl_certificate| ssl_certificate['fqdnId'] == message[:fqdn_id] }
          ssl_certificate.each do |k, v|
            message.reply "#{k}: #{v}"
          end
        end
      end
    end
  end
end
