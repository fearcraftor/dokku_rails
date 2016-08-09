module DokkuRails
  # @abstract
  class Tar

    def self.deploy(app, url)
      res = DokkuRails.execute("dokku tar:from #{app} #{url}")
      return res
    end

  end
end
