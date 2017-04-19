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

class Test# < Minitest::Test
  def setup
    @rot13 = Rot13.creer("How d that taste?")
    @cesar = Cesar.creer("How d that taste?")
    @vigenere = Vigenere.creer("How d that taste?")
  end

  def test_cesar
    assert_equal "Mtb i ymfy yfxyj?",@cesar.codage(5).texte
  end

  def test_rot13
    assert_equal "Ubj q gung gnfgr?",@rot13.codage.texte
  end

  def test_vigenere
    assert_equal "CV�E�=<@=O*GS.",@vigenere.codage("always").texte
  end
end
