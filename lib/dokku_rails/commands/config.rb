module DokkuRails

  # @abstract
  class Config

    def self.create(app, keys)

      vars = ""

      keys.each do |k, v|
        vars += '"' + k.to_s.upcase + '"="' + v.to_s + '" '
      end

      DokkuRails.execute("dokku config:set #{app} #{vars}")

    end

    def self.fetch(app = nil)
      res = DokkuRails.execute("dokku config #{app}")
      s = res.split("\n").drop(1)
      config_vars = Hash[s.each.map { |l| l.chomp.split(': ',2) }].each{ |k,v| v.gsub! " ","" }

      return config_vars
    end

    def self.show(app = nil, key)
      res = DokkuRails.execute("dokku config:get #{app} #{key.upcase}")
      return res
    end

    def self.destroy(app = nil, key)
      res = DokkuRails.execute("dokku config:unset #{app} #{key.upcase}")
      return res
    end

  end
end
