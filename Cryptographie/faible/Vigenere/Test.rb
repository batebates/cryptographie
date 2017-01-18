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
require './Cryptographie/faible/Vigenere/Vigenere.rb'

class Test
  cle = "BANANE"
  txt1 = Vigenere.creer("HOW D THAT TASTE?")
  txt1c = Vigenere.creer("")
  txt1c = txt1.codage(cle)
  puts txt1c.texte


end
