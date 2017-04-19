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
require '../Cryptographie/faible/ROT13/Rot13.rb'

class Test

  txt1 = Rot13.creer("How d that taste?")
  txt1c = Rot13.creer("")
  txt1c = txt1.codage
  puts txt1c.texte
  txt1c = txt1.codage
  puts txt1c.texte

  txt1.texte=("HOW D THAT TASTE?")
  txt1c = txt1.codage
  puts txt1c.texte
  txt1c = txt1.codage
  puts txt1c.texte

  txt1.texte=("how d that taste?")
  txt1c = txt1.codage
  puts txt1c.texte
  txt1c = txt1.codage
  puts txt1c.texte

end
