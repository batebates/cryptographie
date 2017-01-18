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
require './Cryptographie/faible/cesar/Cesar.rb'

class Test
  decalage = 3
  
  txt1 = Cesar.creer("How d that taste?")
  txt1c = Cesar.creer("")
  txt1c = txt1.codage(decalage)
  puts txt1c.texte

  txt1.texte=("HOW D THAT TASTE?")
  txt1c = txt1.codage(decalage)
  puts txt1c.texte

  txt1.texte=("how d that taste?")
  txt1c = txt1.codage(decalage)
  puts txt1c.texte

end
