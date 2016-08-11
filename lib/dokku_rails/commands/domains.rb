module DokkuRails

  # @abstract
  class Domains

    def self.create(app, domain)
      res = DokkuRails.execute("dokku domains:add #{app} #{domain}")
      return res
    end

    def self.fetch(app)
      res = DokkuRails.execute("dokku domains #{app}")
      domains = res.split("\n").drop(3)
      return domains
    end

    def self.destroy(app, domain)
      res = DokkuRails.execute("dokku domains:remove #{app} #{domain}")
      return res
    end
  end
end
