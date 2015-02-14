# Build a class AnimalSorter
class AnimalSorter
# Make sure there are two constants that AnimalSorter knows about, 
# SEA_ANIMALS and LAND_ANIMALS
  LAND_ANIMALS = ["aardvark", "cat", "elephant"]
  SEA_ANIMALS = ["marlin", "octopus", "fish"]

  # AnimalSorter should be able to accept an array of animals on 
  # initialization.
  def initialize(animals)
    @animals = animals
    to_a
  end

# Define a to_a method to account for the species in the test suite.

# Return an array that contains two arrays, the first one
# should include the sea creatures, the second, land animals.

# Read the test suite for an example of a nested array.

  def to_a
    return_array  =[[],[]]
    @animals.each do |animal|
      if SEA_ANIMALS.include?(animal)
        return_array[0] << animal
      elsif LAND_ANIMALS.include?(animal)
        return_array[1] << animal
      end
    end
    return_array
  end
end
