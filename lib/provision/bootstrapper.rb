=begin rdoc
  Bootstrapper gets the appropriate script for the os given
=end
module Provision
  class Bootstrapper
    
    def self.bootstrap_script(os=:ubuntu)
      file = File.expand_path(File.dirname(__FILE__)/"bootstrap_scripts"/"build_#{os}.sh")
      raise StandardError.new("#{os} is not supported by PoolParty's Bootstrapper") unless File.file?(file)
      file
    end
    
    def self.configure_script(os=:ubuntu)
      file = File.expand_path(File.dirname(__FILE__)/"configure_scripts"/"configure_#{os}.sh")
      raise StandardError.new("#{os} is not supported by PoolParty's Bootstrapper") unless File.file?(file)
      file
    end
    
  end
end