class String
  def is_number?
    true if Float(self) rescue false
  end
end

class Chunker
  def initialize
    @subjects = ["Dan","Píro","Canale","Rak","Zymonová","Ender Dragon","Creeper","Jolanda","Kuruteku_09","Keralis","Miley Cyrus","Mumbo","Mike Shinoda","Lindsey Stirling","Superpennys139","Herout","Nemčoková","Sakalová","Štěpánek","Gynekolog","Prezident Semen","Andršová","Exner","Niňuňu","Justin Bieber","Roko","Metrix","SethBling","Dragnoz"]
    @verbs = ["se dělá","si mastí","onanuje","znásilňuje Mařku","znásilňuje Ivonu","sleduje porno","jí majonézu","stříká do sklenice od okurkového salátu","honí buřtíka","vraždí učitele","twerkuje","líže kladivo","mlátí do klávesnice a druhou rukou s hladí pubické ochlupení","olizuje plakát s fotkou Dana","trhá učebnici němčiny","poslouchá Pe Cimpoi","se nechává mlátit Vlasákem","ničí Vlasákovo auto","hází balalajkou"]
    @endings = ["v lednici","na záchodě","ve sborovně","v kabinetě fyziky","na fairwayi","u Dana doma","v Supermarketu","ve stánku s kuřaty","na Fortune Islandu","v Polsku","na koncertě Lindsey Stirling","za tvými zády","na střeše Danova domu","v bordelu","v Drážďanech","ve vlaku","v Biografu Modřany","v posteli","na balkóně","v taxíku","na pláži","v učebně IKT","ve Vlasákově autě","na greenu"]
  end
  
 
  def get_sentence
    loop do
      subject = @subjects.sample
      verb = @verbs.sample
      ending = @endings.sample
      
      if !ending.include? subject
        return "#{subject} #{verb} #{ending}."
      end
      
    end
  end

  def roll

    split = @command.split(' ', 2)
    split_roll = split[0]
    if !split_roll.eql? "roll"

      return "Unknown command!"
    end
    if !split[1]

      return "Invalid number of arguments!"
    end

    if !split[1].is_number?
      return "#{split[1]} is not a number!"
    end

    split_count = split[1].to_i
    results = []
    
    split_count.times do
      results.push(get_sentence)
    end
    
    results

  end

  def run
    puts "Welcome to Chunker Beta 1.3.22!"

   

    while true
      puts "Type 'roll number' to roll the dice and get your sentences! Or you can type exit to exit..."
      command = gets.chomp
      case command
      when "exit"
        break
      else
      @command = command
      puts roll
      end
    end
  end

end

chunker = Chunker.new
chunker.run