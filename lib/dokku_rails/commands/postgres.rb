module DokkuRails
  # @abstract
  class Postgres

    def self.create(name)
      res = DokkuRails.execute("dokku postgres:create #{name}")
      return res
    end

    def self.link(appname, dbname)
      res = DokkuRails.execute("dokku postgres:link #{appname} #{dbname}")
      return res
    end
    
    def self.destroy(name)
      res = DokkuRails.execute("dokku --force postgres:destroy #{name}")
      return res
    end

  end
end
