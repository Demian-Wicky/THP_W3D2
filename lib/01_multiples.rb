def is_multiple_of_3_or_5?(n) # Cette méthode permet de déterminer si current_number est multiple de 3 ou 5
  if n % 3 == 0 || n % 5 == 0
    return true
  else
    return false
  end
end


def sum_of_3_or_5_multiples(final_number)

  if (final_number.is_a? Integer) == false || final_number == nil
    return "not an integer"
  end

  final_sum = 0 # Somme finale qui sera retournée, initialisés à zéro.

  # Ici, lance une boucle qui va de zéro au chiffre "final_number" EXCLU (car on est sur du strictement inférieur)
  # cette boucle indente à chaque tour une variable (par exemple "current_number") qui vaudra 0 puis 1 puis 2 ... etc.
  5.upto(final_number-1) do |current_number|

    if is_multiple_of_3_or_5?(current_number)
      # si la réponse est "true", alors je rajoute la valeur de "current_number" à la variable "final_sum".
      final_sum = final_sum + current_number
    else
      # si la réponse est "false"…ben y a pas de else : ce "current_number" n'est pas multiple,
      # donc on passe au suivant en oubliant celui-là. On repart dans la boucle.
    end

  #Ici, positionne la fin de la boucle
  end

  return final_sum #on retourne la variable qui contient la somme du tout
end