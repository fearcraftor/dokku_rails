require 'net/ssh'

require 'dokku_rails/version'

require 'dokku_rails/commands/apps'
require 'dokku_rails/commands/config'
require 'dokku_rails/commands/domains'
require 'dokku_rails/commands/postgres'
require 'dokku_rails/commands/run'
require 'dokku_rails/commands/tar'


module DokkuRails

  class Configuration
    attr_accessor :host, :user
  end

  class << self
    attr_accessor :config
  end

  def self.configure
    self.config ||= Configuration.new
    yield config
  end

  def self.execute(cmd)
    begin
      ssh = Net::SSH.start(config.host, config.user)
      res = ssh.exec!(cmd)
      ssh.close
    rescue
      res = "Unable to connect to #{config.host} with user #{config.user}"
    end

    return res
  end
end
