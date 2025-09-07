module MedicalRecordManagement
  class Task
    def execute
      raise NotImplementedError, "#{self.class} must implement #execute"
    end

    def initialize_task(definition)
      raise NotImplementedError, "#{self.class} must implement #initialize_task"
    end

    def task_definition
      raise NotImplementedError, "#{self.class} must implement #task_definition"
    end

    def executing?
      raise NotImplementedError, "#{self.class} must implement #executing?"
    end

    def shutdown
      raise NotImplementedError, "#{self.class} must implement #shutdown"
    end
  end
end
