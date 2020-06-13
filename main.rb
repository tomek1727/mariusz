
#czesc tomek, pojawiłem sie u góry! Jesteś super kolega

load 'jednostka.rb'
load 'ocena.rb'
load 'osoba.rb'
load 'przedmiot.rb'
load 'student.rb'
load 'wydzial.rb'
load 'wykladowca.rb'

















andrzej = Student.new("Andrzej", "Bisewski", "05.28.1999", "Informatyka", "Dziennikarstwo", 2019, 18, 3)
tomek = Wykladowca.new("Tomek", "Czajkowski", "03.03.1980", "Profesor", "Dziekan")

andrzej.wypisz_info
tomek.wypisz_info
