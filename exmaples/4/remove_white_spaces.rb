def initialize(class_name)
  @vertex_class = class_name   
  class_is_valid  
end

def class_is_valid   
  methods = [:neighbours, :edge_weight]
  methods.each do |method|   
    fail NOT_IMPLEMENTED_ERROR_MSG unless @vertex_class.method_defined? method  
  end
end

def type_check(object)
  fail NOT_IMPLEMENTED_ERROR_MSG unless object.is_a?(@vertex_class)    
end

def hash_min(hash, to_visit_vertices)
    min = FIXNUM_MAX
    min_key = ''
    hash.each do |key, value|
      if to_visit_vertices.include?(key) && value < min
        min = value
        min_key = key
      end
    end
    min_key
end
