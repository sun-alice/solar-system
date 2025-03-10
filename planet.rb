class Planet
  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact
  
  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
    raise ArgumentError.new("Mass must be greater than 0.") unless mass_kg > 0
    raise ArgumentError.new("Distance from the sun must be greater than 0.") unless distance_from_sun_km > 0
    
    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact
  end
  
  def summary
    return "#{@name} is #{@color}, is #{@mass_kg} kg, #{@distance_from_sun_km} km from the sun, and the #{@fun_fact.downcase}."
  end
  
end

