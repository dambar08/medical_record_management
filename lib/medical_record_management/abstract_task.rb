module MedicalRecordManagement
  class AbstractTask < Task
    attr_accessor :executing, :taskDefinition

    alias_method :executing?, :executing

    def initialize(taskDefinition = nil)
      @executing = false
      @taskDefinition = taskDefinition
    end

    def shutdown
      @taskDefinition = nil
    end

    def startExecuting
      @executing = true
    end

    def stopExecuting
      @executing = false
    end
  end
end
