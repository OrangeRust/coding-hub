file='OlympicRosterGenFile.txt'
f = File.open(file, "r")
f.each_line { |line|
    
    input = line.split(",")
    nation = input[0]
    event = input[1]
    sex = input[2]
    name = input[3]
    age = 21 + rand(20)
    exp = 0
    skill = 0
    if sex.downcase == "male" || sex.downcase == "m"
        sex = "Male"
    else
        sex = "Female"
    end
    until exp > 2 do
        exp = rand(age) - 16
    end
    until skill > 2 && skill <= 20 do
        skill = rand(exp) + exp/2
    end
    name = name.split(" ")
    name.each do |n|
        n.capitalize!
    end
    name = name.join(" ")

    open('output_OlympicRosterGen.out', 'a') do |file|
        file.puts "[box]"
        file.print "[b]Nation:[/b] "
        file.puts nation
        file.print "[b]Event:[/b] "
        file.puts event
        file.print "[b]Age:[/b] "
        file.puts age
        file.print "[b]# Yrs. Experience in Event/Sport:[/b] "
        file.puts exp
        file.print "[b]Skill Lvl (1-20):[/b] "
        file.puts skill
        file.print "[b]Sex (M/F):[/b] "
        file.puts sex
        file.print "[b]Name:[/b] "
        file.puts name
        file.puts "[/box]"
        file.puts "[hr][/hr]"
        file.puts " "
    end
  
}
f.close