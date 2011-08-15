module Scarcity

  class Segment
    
    attr_reader :directory, :name, :datasets
    
    def initialize(directory)
      @directory = directory
      @name = File.basename(directory)
      @datasets = Dir.directories(@directory).sort.map do |data_id|
        SegmentDataset.new("#{directory}/#{data_id}")
      end
    end
    
  end


  class SegmentDataset
    
    attr_reader :directory, :data_id, :logfile, :dag_outfile
    
    def initialize(directory)
      @directory = directory
      @data_id = File.basename(directory)
      @logfile = "#{@directory}/#{@data_id}.dag.dagman.log"
      @dag_outfile = "#{@directory}/#{@data_id}.dag.dagman.out"
      @executible_logfile = "#{@directory}/executibles.log"
    end
    
    def daglog
      @daglog ||= DagLog.new(@logfile)
    end
    
    def dag_outlog
      @dag_outlog ||= DagLog.new(@dag_outfile)
    end
    
    def executible_log
      @executible_log ||= DagLog.new(@executible_logfile)
    end
    
    def status
      stat = :unavailable
      if File.directory?(@directory)
        stat = :provisioned
        if File.exist?(@logfile)
          stat = daglog.status
        end
      end
      return stat
    end
    
    def running?
      daglog.status =~ /executing/ && executible_log.running?
    end
    
    def return_value
      daglog.return_value
    end
    
  end

  
end