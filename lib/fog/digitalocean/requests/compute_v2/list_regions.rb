module Fog
  module Compute
    class DigitalOceanV2
      class Real
        def list_regions(options = {})
          request(
            :expects  => [200],
            :method   => 'GET',
            :path     => 'v2/regions'
          )
        end
      end

      class Mock
        def list_regions
          response = Excon::Response.new
          response.status = 200
          response.body = {
            "regions" => [
              {
                "name" => "New York 1",
                "slug" => "nyc1",
                "sizes" => [
                  "32gb",
                  "16gb",
                  "2gb",
                  "1gb",
                  "4gb",
                  "8gb",
                  "512mb",
                  "64gb",
                  "48gb"
                ],
                "features" => [
                  "virtio",
                  "backups"
                ],
                "available" => true
              },
              {
                "name" => "Amsterdam 1",
                "slug" => "ams1",
                "sizes" => [],
                "features" => [
                  "virtio",
                  "backups"
                ],
                "available" => false
              },
              {
                "name" => "San Francisco 1",
                "slug" => "sfo1",
                "sizes" => [
                  "32gb",
                  "16gb",
                  "2gb",
                  "1gb",
                  "4gb",
                  "8gb",
                  "512mb",
                  "64gb",
                  "48gb"
                ],
                "features" => [
                  "virtio",
                  "backups",
                  "ipv6",
                  "metadata"
                ],
                "available" => true
              },
              {
                "name" => "New York 2",
                "slug" => "nyc2",
                "sizes" => [
                  "32gb",
                  "16gb",
                  "2gb",
                  "1gb",
                  "4gb",
                  "8gb",
                  "512mb",
                  "64gb",
                  "48gb"
                ],
                "features" => [
                  "virtio",
                  "private_networking",
                  "backups"
                ],
                "available" => true
              },
              {
                "name" => "Amsterdam 2",
                "slug" => "ams2",
                "sizes" => [
                  "32gb",
                  "16gb",
                  "2gb",
                  "1gb",
                  "4gb",
                  "8gb",
                  "512mb",
                  "64gb",
                  "48gb"
                ],
                "features" => [
                  "virtio",
                  "private_networking",
                  "backups",
                  "ipv6",
                  "metadata"
                ],
                "available" => true
              },
              {
                "name" => "Singapore 1",
                "slug" => "sgp1",
                "sizes" => [
                  "32gb",
                  "16gb",
                  "2gb",
                  "1gb",
                  "4gb",
                  "8gb",
                  "512mb",
                  "64gb",
                  "48gb"
                ],
                "features" => [
                  "virtio",
                  "private_networking",
                  "backups",
                  "ipv6",
                  "metadata"
                ],
                "available" => true
              },
              {
                "name" => "London 1",
                "slug" => "lon1",
                "sizes" => [
                  "32gb",
                  "16gb",
                  "2gb",
                  "1gb",
                  "4gb",
                  "8gb",
                  "512mb",
                  "64gb",
                  "48gb"
                ],
                "features" => [
                  "virtio",
                  "private_networking",
                  "backups",
                  "ipv6",
                  "metadata"
                ],
                "available" => true
              },
              {
                "name" => "New York 3",
                "slug" => "nyc3",
                "sizes" => [
                  "32gb",
                  "16gb",
                  "2gb",
                  "1gb",
                  "4gb",
                  "8gb",
                  "512mb",
                  "64gb",
                  "48gb"
                ],
                "features" => [
                  "virtio",
                  "private_networking",
                  "backups",
                  "ipv6",
                  "metadata"
                ],
                "available" => true
              },
              {
                "name" => "Amsterdam 3",
                "slug" => "ams3",
                "sizes" => [
                  "32gb",
                  "16gb",
                  "2gb",
                  "1gb",
                  "4gb",
                  "8gb",
                  "512mb",
                  "64gb",
                  "48gb"
                ],
                "features" => [
                  "virtio",
                  "private_networking",
                  "backups",
                  "ipv6",
                  "metadata"
                ],
                "available" => true
              }
            ]
          }
          response
        end
      end
    end
  end
end
