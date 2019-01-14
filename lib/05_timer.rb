
def time_string(i)
    #Time.at crée un objet date
    #La méthode strftime permet de formater l'objet Time
    return  Time.at(i).strftime "%H:%M:%S"
      
end

