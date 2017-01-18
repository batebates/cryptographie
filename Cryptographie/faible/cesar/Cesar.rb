#<b>Auteur  :</b> Decrand Baptiste
#
#<b>Version :</b> 1.0
#
#<b>Date    :</b> 18/01/2017
#
#===Crypte un texte avec la methode de césar
#<b>Liste des méthodes
#*
#</b>
class Cesar
  #== Variables d'instance ==
   @texte
   attr_accessor :texte
  #===========================

  private_class_method :new

  def initialize(texte)#:nodoc:
    @texte = texte
  end
  def Cesar.creer(texte)
    new(texte)
  end
#===Applique le code de cesar avec un decalage entré en paramètre
#
#===Paramètres :
#* <b></b> :
def codage(decalage)
  1.upto(decalage) do
    @texte = @texte.tr('a-z','b-za-b').tr('A-Z','B-ZA-B')
  end
  return self
end

end
