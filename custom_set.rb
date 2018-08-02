require "pry"
require 'set'
class CustomSet

  attr_accessor :data

  def initialize(data)
    @data = data
  end

  def assert_empty
    self.data.size == 0 ? true : false

  end

  def refute_empty
    assert_empty
  end

  def member?(elem)
    self.data.include?(elem) ? true : false
  end

  def subset?(array)
    (array.data - self.data).empty?
  end

  def disjoint?(array_set)
    set_size = self.data.size + array_set.data.size
    uniq_sets = (self.data + array_set.data).uniq.size
    uniq_sets == set_size ? true : false
  end

  def assert_equal(set2)
    (self.data - set2.data).size == 0 && (set2.data - self.data).size == 0 ? true : false
  end

  def refute_equal(set2)
    self.assert_equal(set2)
  end
  def add(num)
    self.data += [num].uniq
  end

  def intersection(set1)
    not_in_both = (self.data - set1.data) + (set1.data - self.data)
    intersect = (self.data + set1.data).uniq - not_in_both
  end

  def difference(set2)
    # in_both = set2.intersection(self)
    # binding.pry
    self.data - set2.data
  end

  def union(set2)
    (self.data + set2.data).uniq
  end

end

set1 = CustomSet.new([1,2,3,4,5])
set2 = CustomSet.new([2,3,4])
set3 = CustomSet.new([])
set4 = CustomSet.new([])
set5 = CustomSet.new([1])
set6 = CustomSet.new [1, 2]
set7 = CustomSet.new [3, 4]
set9 = CustomSet.new([4,3,2])
set10 = CustomSet.new([4,2,3,1,5])
set11 = CustomSet.new([1,3,2])


# puts set1.inspect
# puts "add**************************"
# puts "diff #{set2.difference(set11)}"

# puts "should return 3,4"
# puts "what is #{set7.intersection(set9)}"
#
# puts "should return []"
# puts "what is #{set3.intersection(set4)}"
#
# puts "should return []"
# puts "what is #{set3.intersection(set2)}"

# puts "should return 1,2"
# puts set4.add(1)
# puts 'wil return true'
# puts set4.assert_equal(set5)


# puts "assert and refute equal**************************"
#
# puts set3.assert_equal(set4)
# puts "subset?[]==[] ^should return true"
#
# puts set3.refute_equal(set2)
# puts "subset?[]==[2,3,4] ^should return false"
#
# puts set2.assert_equal(set3)
# puts "subset?[]==[2,3,4] ^should return false"
#
# puts set2.assert_equal(set9)
# puts "subset? ^should return true"
#
# puts set11.refute_equal(set9)
# puts "subset? ^should return false"
#
# puts "**************************"

#
# puts set1.assert_empty
# puts "assert_empty ^should return false"
# puts set3.refute_empty
# puts "refute_empty ^should return true"
#
# puts set1.member?(1)
# puts "member ^should return true"
#
# puts set2.member?(6)
# puts "member ^should return false"
#
# puts "Subset **************************"
#
# puts set2.subset?(set1)
# puts "subset? ^should return true"
#
# puts set3.subset?(set4)
# puts "subset? ^should return true"
#
# puts set4.subset?(set5)
# puts "subset? 1, [] ^should return false"
#
# puts set2.subset?(set9)
# puts "subset? 1,2,3 x2 ^should return true"
#
# puts set10.subset?(set1)
# puts "subset? ^should return true"
#
# puts set6.subset?(set9)
# puts "subset?  ^should return false"
# # puts set1.is_disjoint?(set2)
# puts "**************************"
# puts set3.disjoint?(set4)
# puts "^should return true"
#
# puts set4.disjoint?(set5)
# puts "^will return true"
#
# puts set5.disjoint?(set4)
# puts "^will return true"
#
# puts set6.disjoint?(set2)
# puts "^will return false"
#
# puts set6.disjoint?(set7)
# puts "^will return true"
# puts "**************************"
#
#
#
binding.pry
