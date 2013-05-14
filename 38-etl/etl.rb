class ETL

  def self.transform(old)
    old.each_with_object({}) do |(k, v), hsh|
      v.each {|orig_val| hsh[orig_val.downcase] = k }
    end
  end 
end
