require 'tmpdir'
require 'pathname'

class Tempdir
  attr_reader :dir
  def initialize(name = nil)
    @dir = create_tmpdir(name)
    @dir.mkpath
    @exit_proc = add_exit
    if block_given?
      begin 
        yield @dir
      ensure
        close
      end
    end
  end

  def close
    @dir.rmtree if @dir.directory?
  end

  def self.open(name = nil, &block)
    new(name, &block)
  end

  private
  def add_exit
    at_exit {
      self.close if self
    }
  end

  def create_tmpdir(name)
    tmp = Pathname.new(Dir.tmpdir)
    if name
      tmp = tmp.join(name)
      raise "#{tmp.to_s} is exist." if tmp.exist?
    else
      tmp = tmp.join('_')
      begin
        tmp = tmp.parent.join randname
      end while tmp.exist?
    end
    tmp
  end

  TMPDIR_PREFIX = 'ruby.tempdir.'
  def randname
    TMPDIR_PREFIX + (0..8).map{rand(36).to_s(36)}.join
  end
end


