ENV.each do |k,v|
  next unless k.start_with?("OPENSHIFT")
  Facter.add("#{k.downcase}".to_sym) do
    setcode do
      v
    end
  end
end

