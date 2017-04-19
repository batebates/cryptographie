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
  attr_accessor :texte
  #===========================

  private_class_method :new

  def initialize(texte)#:nodoc:
    @texte = texte
  end

  def Vigenere.creer(texte)
    new(texte)
  end

#===renvoie la valeur de la lettre selon la clef et la Table de Vigenère
#
#===Paramètres :
#* <b>lettre</b> : char : contient la valeur de la lettre a chiffrer
#* #* <b>clef</b> :  char : contient la valeur de la clef
def substitution(lettre,clef)
  if(lettre>='A' && lettre<='Z')
    return (( clef.ord + lettre.ord - 'A'.ord*2)%26 +'A'.ord).chr
  else
    return lettre
  end
end

  #===code un texte avec la methode Vigenere
  #
  #===Paramètres :
  #* <b>clef</b> : String contient la chaine de caractere representant la clef 
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
