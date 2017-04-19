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
   # @attr_reader [String] texte text to code
   attr_accessor :texte
  #===========================

  private_class_method :new

  def initialize(texte)#:nodoc:
    @texte = texte
  end

  # Constructor
  #
  # @param texte [String]  text value
  def Cesar.creer(texte)
    new(texte)
  end

# code a text with cesar method
#
# @param decalage [int]  offset value
def codage(decalage)
  1.upto(decalage) do
    @texte = @texte.tr('a-z','b-za-b').tr('A-Z','B-ZA-B')
  end
  return self
end

end
