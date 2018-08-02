# Implement a group_by_owners function that:
#   1. Accepts a hash containing the file owner name for each file
#   2. Returns a hash containing an array of names for each owner name, in any order.
#
# Example:
#  for hash { 'Input.txt' => 'Randy', 'Code.py' => 'Stan', 'Output.txt' => 'Randy'} the group_by_owners function should return
#  { 'Randy' => ['Input.txt', 'Output.txt'], 'Stan' => ['Code.py'] }
#
require "byebug"
# Hello TargetCW team.
# For this challenge

module FileOwners
  def self.group_by_owners(files)
    finalFiles= {}
    files.map do |file|
      if !finalFiles.include?(file[1])
        finalFiles[file[1]] = [file[0]]
      else
        # byebug
        finalFiles[file[1]] << file[0]
      end
      # can be reduced to
      # files.map do |file|
      #   !finalFiles.include?(file[1]) ? finalFiles[file[1]] = [file[0]] : finalFiles[file[1]] << file[0]
      # end
    finalFiles
  end
end

files = {
  'Input.txt' => 'Randy',
  'Code.py' => 'Stan',
  'Output.txt' => 'Randy'
}

puts FileOwners.group_by_owners(files)
