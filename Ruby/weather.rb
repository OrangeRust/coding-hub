puts "What is the TWI temp?"
temp = gets.chomp.to_i
def getTemp(temp, mod)
  x = temp - mod + rand(mod * 2) + 1
  return x.to_i
end
def toC(t)
  x = (t - 32) / 1.8
  x.to_i
end

temps = Array.new
temps_c = Array.new
11.times do
  t = getTemp(temp, 5)
  temps << t
  temps_c << toC(t)
end

puts "[floatleft][box][table=plain]"\
"[tr][td]City[/td][td]Temp f / c[/td][/tr]"\
"[tr][td]Alhill[/td][td]#{temps[0]} / #{temps_c[0]}[/td][/tr]"\
"[tr][td]Ash[/td][td]#{temps[1]} / #{temps_c[1]}[/td][/tr]"\
"[tr][td]Babylon[/td][td]#{temps[2]} / #{temps_c[2]}[/td][/tr]"\
"[tr][td]Industrae[/td][td]#{temps[3]} / #{temps_c[3]}[/td][/tr]"\
"[tr][td]Lite[/td][td]#{temps[4]} / #{temps_c[4]}[/td][/tr]"\
"[tr][td]Mana[/td][td]#{temps[5]} / #{temps_c[5]}[/td][/tr]"\
"[tr][td]Mewwood[/td][td]#{temps[6]} / #{temps_c[6]}[/td][/tr]"\
"[tr][td]New Iosy[/td][td]#{temps[7]} / #{temps_c[7]}[/td][/tr]"\
"[tr][td]Skarentel[/td][td]#{temps[8]} / #{temps_c[8]}[/td][/tr]"\
"[tr][td]Spaero[/td][td]#{temps[9]} / #{temps_c[9]}[/td][/tr]"\
"[tr][td]Waypool[/td][td]#{temps[10]} / #{temps_c[10]}[/td][/tr]"\
"[/table][/box][/floatleft]"
