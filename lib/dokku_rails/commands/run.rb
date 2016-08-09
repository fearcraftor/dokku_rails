module DokkuRails
  # @abstract
  class Run

    def self.create(app, cmd)
      res = DokkuRails.execute("dokku run #{app} #{cmd}")
    end
  end
end
