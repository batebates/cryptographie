#<b>Auteur  :</b> Decrand Baptiste
#
#<b>Version :</b>
#
#<b>Date    :</b>
#
#===Test la classe cesar
#<b>Liste des méthodes
#*
#</b>
require_relative '../src/controller/Cesar.rb'
require_relative '../src/controller/Vigenere.rb'
require_relative '../src/controller/Rot13.rb'

class Test < Minitest::Test
  def setup
    @rot13 = Rot13.creer("How d that taste?")
    @cesar = Cesar.creer("How d that taste?")
    @vigenere = Vigenere.creer("How d that taste?")
  end

  def test_cesar
    assert_equal "",@cesar.codage(5)
  end

  def test_rot13
    assert_equal "",@rot13.codage
  end

  def test_vigenere
    assert_equal "",@vigenere.codage("lait")
  end
end
