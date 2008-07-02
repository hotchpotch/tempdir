
require 'tempdir'
require 'tempfile'

class Tempdir
  class Tempfile < ::Tempfile
    def self.open(name = nil, dir = nil)
      name ||= (0..8).map{rand(36).to_s(36)}.join
      args = dir ? [name, dir] : [name]
      tmp = ::Tempfile.new *args
      begin
        yield tmp
      ensure
        tmp.close true
      end
    end
  end
end
