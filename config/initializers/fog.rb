CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'                        # required
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     'AKIAILZCQ5MFT7CGZAVA', #ENV['aws_access_key'],       # required for editing authentication
    aws_secret_access_key: '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',#ENV['aws_secret_key'],                        # required for editing authetnication
    region:                'ap-southeast-2',             # optional, defaults to 'us-east-1' southeast-2 is set to Sydney
    # host:                  's3.example.com',             # optional, defaults to nil
    # endpoint:              'https://s3.example.com:8080' # optional, defaults to nil
  }
  config.fog_directory  = 'likelion1357'                                # required
  config.fog_public     = true                                         # optional, defaults to true
  config.fog_attributes = { cache_control: "public, max-age=#{365.day.to_i}" } # optional, defaults to {}
end