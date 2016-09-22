# * `G` -> `C`
# * `C` -> `G`
# * `T` -> `A`
# * `A` -> `U`

module BookKeeping
  VERSION = 4 # Where the version number matches the one in the test.
end

class Complement
  def self.of_dna(nucleotides)
    nuc_arr = []
    nucleotides.split("").each do |n|
      case n
      when 'C' then nuc_arr << 'G'
      when 'G' then nuc_arr << 'C'
      when 'T' then nuc_arr << 'A'
      when 'A' then nuc_arr << 'U'
      else return nuc_arr.clear.join
      end
    end
    nuc_arr.join
  end
end
