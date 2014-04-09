class String
  def is_number?
    true if Float(self) rescue false
  end
end

class Chunker
  def initialize
    @subject = ["Dan","Píro","Canale","Rak","Zymonová","Ender Dragon","Creeper","Jolanda","Kuruteku_09","Keralis","Miley Cyrus","Mumbo","Mike Shinoda","Lindsey Stirling","Superpennys139","Herout","Nemčoková","Sakalová","Štěpánek","Gynekolog","Prezident Semen","Andršová","Exner","Niňuňu","Justin Bieber","Roko","Metrix","SethBling","Dragnoz"]
    @verb = ["se dělá","si mastí","onanuje","znásilňuje Mařku","znásilňuje Ivonu","sleduje porno","jí majonézu","stříká do sklenice od okurkového salátu","honí buřtíka","vraždí učitele","twerkuje","líže kladivo","mlátí do klávesnice a druhou rukou s hladí pubické ochlupení","olizuje plakát s fotkou Dana","trhá učebnici němčiny","poslouchá Pe Cimpoi","se nechává mlátit Vlasákem","ničí Vlasákovo auto","hází balalajkou"]
    @ending = ["v lednici","na záchodě","ve sborovně","v kabinetě fyziky","na fairwayi","u Dana doma","v Supermarketu","ve stánku s kuřaty","na Fortune Islandu","v Polsku","na koncertě Lindsey Stirling","za tvými zády","na střeše Danova domu","v bordelu","v Drážďanech","ve vlaku","v Biografu Modřany","v posteli","na balkóně","v taxíku","na pláži","v učebně IKT","ve Vlasákově autě","na greenu"]
  end

  def sub_end
    @subject_sam = @subject.sample
    @ending_sam = @ending.sample
  end

  def roll

    split = @command.split(' ', 2)
    split_roll = split[0]
    if !split_roll.eql? "roll"
      puts "Unknown command!"
    return false
    end
    if !split[1]
      puts "Invalid number of arguments!"
    return false
    end

    if !split[1].is_number?
      puts "#{split[1]} is not a number!"
    return false
    end

    split_i = split[1].to_i
    sub_end
    split_i.times do
      sub_end
      if !@ending_sam.include? @subject_sam
        puts "#{@subject_sam} #{@verb.sample} #{@ending_sam}."
      else
        sub_end
        puts "#{@subject_sam} #{@verb.sample} #{@ending_sam}."
      end

    end

  end

  def run
    exit = false

    while !exit
      puts "Type 'roll number' to roll the dice and get your sentences! Or you can type exit to exit..."
      command = gets.chomp
      case command
      when "exit"
        exit = true
      else
      @command = command
      roll
      end
    end
  end

end

chunker = Chunker.new
chunker.run