module DokkuRails

  # @abstract
  class Domains

    def self.fetch(app)
      res = DokkuRails.execute("dokku domains [#{app}]")
      return res
    end
  end
end
