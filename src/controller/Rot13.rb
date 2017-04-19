#<b>Auteur  :</b> Decrand Baptiste
#
#<b>Version :</b> 1.0
#
#<b>Date    :</b> 18/01/2017
#
#===Crypte un texte avec la methode de ROT13, la methode de césar mais decaler de 13
#<b>Liste des méthodes
#*
#</b>
class Rot13
  #== Variables d'instance ==
   @texte
   attr_accessor :texte
  #===========================

  private_class_method :new

  def initialize(texte)#:nodoc:
    @texte = texte
  end
  def Rot13.creer(texte)
    new(texte)
  end
#===Chiffre en ROT13
#
#===Paramètres :
#* <b></b> :
def codage()
    @texte = @texte.tr('a-z','n-za-m').tr('A-Z','N-ZA-M')
  return self
end

end
