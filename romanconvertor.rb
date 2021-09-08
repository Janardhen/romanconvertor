def fromRoman(romanNumber)
     
    
     final=0
     i=0
     while i<romanNumber.length
         if  romanNumber[i]!="V" && romanNumber[i]!="I"   && romanNumber[i]!="C" && 
         romanNumber[i]!="L" && romanNumber[i]!="X" && romanNumber[i]!="D" && romanNumber[i]!="M"
             raise TypeError
         elsif romanNumber[i]=="C" && romanNumber[i+1]=="M"
             final+=900
             i+=2
         elsif romanNumber[i]=="X" && romanNumber[i+1]=="M"
             final+=990
             i+=2
         elsif romanNumber[i]=="M"
             final+=1000
             i+=1
         elsif romanNumber[i]=="C" && romanNumber[i+1]=="D"
             final+=400
             i+=2
         elsif romanNumber[i]=="D"
             final+=500
             i+=1
         elsif romanNumber[i]=="X" && romanNumber[i+1]=="C"
             final+=90
             i+=2
         elsif romanNumber[i]=="C"
             final+=100
             i+=1
         elsif romanNumber[i]=="L"
             final+=50
             i+=1
         elsif romanNumber[i]=="X" && romanNumber[i+1]=="L"
             final+=40
             i+=2
         elsif romanNumber[i]=="X"
             final+=10
             i+=1
         elsif romanNumber[i]=="I" && romanNumber[i]=="X"
             final+=9
             i+=2
         elsif romanNumber[i]=="V"
             final+=5
             i+=1
         elsif romanNumber[i]=="I" && romanNumber[i+1]=="V"
             final+=4
             i+=2
         elsif romanNumber[i]=="I"
             final+=1
             i+=1
         end
     end
     return final
 end

 def toRoman(arabicNumber)
     # Replace the following line with the actual code!
     
     if arabicNumber>3999 or arabicNumber<1
         raise RangeError
     else
         final=""
         while arabicNumber>0
             if arabicNumber>=1000
                 final=final+"M"
                 arabicNumber-=1000
             elsif arabicNumber>=990
                 final=final+"XM"
                 arabicNumber-=990
             elsif arabicNumber>=900
                 final=final+"CM"
                 arabicNumber-=900
             elsif arabicNumber>=500
                 final=final+"D"
                 arabicNumber-=500
             elsif arabicNumber>=400
                 final=final+"CD"
                 arabicNumber-=400
             elsif arabicNumber>=100
                 final=final+"C"
                 arabicNumber-=100
             elsif arabicNumber>=90
                 final=final+"XC"
                 arabicNumber-=90
             elsif arabicNumber>=50
                 final=final+"L"
                 arabicNumber-=50
             elsif arabicNumber>=40
                 final=final+"XL"
                 arabicNumber-=40
             elsif arabicNumber>=10
                 final=final+"X"
                 arabicNumber-=10
             elsif arabicNumber==9
                 final=final+"IX"
                 arabicNumber-=9
             elsif arabicNumber>=5
                 final=final+"V"
                 arabicNumber-=5
             elsif arabicNumber==4
                 final=final+"IV"
                 arabicNumber-=4
             else
                 final=final+"I"
                 arabicNumber-=1
             end
         end
         return final
     end
end