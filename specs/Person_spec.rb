require('minitest/autorun')
require('minitest/rg')
require_relative('../Person.rb')

class PersonTest < MiniTest::Test

  def setup()
    @person1 = Person.new("Bob", "38")
    @person2 = Person.new("Claudia", "6")
  end

  def test_person_has_name
    assert_equal("Bob", @person1.name)
  end
  
end
