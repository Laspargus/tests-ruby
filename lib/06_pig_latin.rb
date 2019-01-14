def translate(expression)

  myarray=expression.split(" ")
  myarray.map!{
    |word|
    #translates a word beginning with a vowel
    #apple ==============> appleay
     if word[0].downcase =~ /^[aeiouy]/ 
        word=word+"ay"
    
       #counts 'qu' as a consonant even when it's preceded by a consonant" do
       #square ==========> aresquay
     elsif
      word[1..2]=="qu"
      word=word[3..5]+word[0..2]+"ay"


     #translates a word beginning with a consonant and then a vowel
     elsif   word[1].downcase =~ /^[aeiouy]/ 
       
   
            #counts 'qu' as a single phoneme" 
            if word[0..1]=="qu"
            
            #quiet ============> ietquay
            word=word[2..4]+word[0..1]+"ay"
            else
           
            #banana ==============> ananabay
            word=word[1..5]+word[0]+"ay" 
            
            end
      else
    
          if word[2].downcase =~ /^[aeiouy]/ 
            #translates a word beginning with two consonants
            #cherry =======> errychay
            word=word[2..5]+word[0..1]+"ay"
          else

                  #counts 'sch' as a single phoneme"
                  #school ========> oolschay
                  if word[0..2]=="sch"
                     word=word[3..5]+word[0..2]+"ay"
                  else
                 
                    #translates a word beginning with three consonants
                  #three =======> eethray
                  word=word[3..4]+word[0..2]+"ay"
                 end
            end
                
    end
   #Si 3 consonnes three ==> eethray
  }
  return myarray.join(" ")
end

translate("apple banana eat pie cherry three school quiet")



