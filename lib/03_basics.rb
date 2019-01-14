def who_is_bigger (a, b , c)
    
    if a==nil ||b==nil || c==nil  
        final= "nil detected"
    else 

        array =[a,b,c]
        position=array.index(array.max)
   
        case position
            when 0 
            final= "a is bigger"
            when 1 
            final= "b is bigger"
            when 2 
            final ="c is bigger"
        end
    end

    return final
end
 



def reverse_upcase_noLTA (phrase)
    return phrase.upcase!.reverse!.gsub!(/[LTA]/,"")    
end



def array_42 (myarray)
    result=false
    myarray.each {|value| if 
                        value==42 
                        result=true
                          end
         }
    return result
    end


    def magic_array(myarray)
        newarray= myarray.flatten.sort.delete_if {|x| x%3==0 }.map{ |y| y=y*2 }.uniq
        return newarray
      end
