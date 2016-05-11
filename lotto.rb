arr_los = []
arr_ret = []


def losoj( arr_los,
typ_los
)
i = 0
repeat = 0
liczba = 0

  if( typ_los == '-dl' )
    while( i <= 5 )
      liczba = rand(50)
      if( liczba != 0 )
        arr_los[i] = liczba
        liczba = 0
        i = i + 1
      end
      if( i == 6 and arr_los.uniq.size != 6 )
        print "UNIQ problem, tylko: "
        print arr_los.uniq.size
        puts " na 6 liczb jest unikalnych"
        puts "UNIQ zawartosc: "
        puts arr_los
        puts "************************"
        i = 0
        repeat = repeat + 1
      end
    end # while

  elsif typ_los == '-el'

    while( i <= 4 )
      liczba = rand(43)
      if( liczba != 0 )
        arr_los[i] = liczba
        liczba = 0
        i = i + 1
      end
      if( i == 5 and arr_los.uniq.size != 5 )
        print "UNIQ problem, tylko: "
        print arr_los.uniq.size
        puts " na 5 liczb jest unikalnych"
        puts "UNIQ zawartosc: "
        puts arr_los
        puts "************************"
        i = 0
        repeat = repeat + 1
      end
    end # while
  end # elsif

  if( repeat != 0 )
    puts; print("Wykonano powtorzen: "); puts repeat; puts
  end
  return( arr_los )
end # def losoj



# Begin

#if ARGV[0] == nil or ARGV[0] != '-dl' or ARGV[0] != '-el'
#  puts "Uzycie: l -dl lub -el"
#  exit
#end

system("clear")

typ_los = ARGV[0]


if typ_los == '-dl'
  arr_ret = losoj( arr_los, typ_los )
elsif typ_los == '-el'
  arr_ret = losoj( arr_los, typ_los )
else
  puts "Dozwolone opcje to: '-dl' i '-el'"
  puts "Uzycie: l -dl lub -el"
  exit
end


puts( arr_ret.sort )
puts





