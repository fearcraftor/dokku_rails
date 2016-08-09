module DokkuRails
  # @abstract
  class Apps

    def self.create(name)
      res = DokkuRails.execute("dokku apps:create #{name}")
      return res
    end

    def self.fetch()
      res = DokkuRails.execute("dokku apps")
      return res
    end

    def self.rename(oldapp, newapp)
      res = DokkuRails.execute("dokku apps:rename #{oldapp} #{newapp}")
      return res
    end

    def self.destroy(app)
      res = DokkuRails.execute("dokku --force apps:destroy #{app}")
      return res
    end

  end
end
