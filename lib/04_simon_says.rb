def echo(content)
    return content
end 


def shout (content)
    return content.upcase
end


def repeat (x,y=2)
    result=(x+" ")*y
    return result.delete_suffix(" ")
end

def start_of_word (x,y=1)
  return  x[0..y-1]
end


def first_word(para)
    pos=para.index(' ')
    return para[0..pos-1]

end

def titleize(para)
     separation = para.split.each{
       |i|
       if i.length > 3 
        i.capitalize!
        end
        }
     separation[0].capitalize!
     separation.join(' ')
    
    end


