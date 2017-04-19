#<b>Auteur  :</b> Decrand Baptiste
#
#<b>Version :</b> 1.0
#
#<b>Date    :</b> 18/01/2017
#
#===Contient les methodes concernant le chiffre de vigenere
#<b>Liste des méthodes
#*
#</b>

class Vigenere
  #== Variables d'instance ==
  @texte
  # @!attribute texte
  # @return [String] text to code
  attr_accessor :texte
  #===========================

  private_class_method :new

  def initialize(texte)#:nodoc:
    @texte = texte
  end

  # Constructor
  #
  # @param texte [String]  text value
  def Vigenere.creer(texte)
    new(texte)
  end

# code a letter
#
# @param lettre [char] letter value
# @param clef [char] key letter value
# @return [char]
def substitution(lettre,clef)
    return (( clef.ord + lettre.ord)%152).chr
end

  # code a text
  #
  # @param clef [String] key value
  def codage(clef)
    arrayClef = clef.split("")
    arrayTexte = @texte.split("")
    arrayTexte.each_index do |indice|
      arrayTexte[indice] = substitution(arrayTexte[indice],arrayClef[indice%arrayClef.length])
    end
    @texte = arrayTexte.join
    return self
  end

end
