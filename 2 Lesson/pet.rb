# frozen_string_literal: true

class Cat
  def initialize(name)
    @name                           = name.capitalize
    @mood = @eat = @health          = 10
    @asleep                         = false
    @wsleep = @sleep_count = @dirty = 0
    puts 'Ураа! Папа принес домой котенка, назовем его ' + @name + '.'
  end

  def help
    puts
    puts '***'
    puts 'command list:'
    puts 'hl - отвезти к ветеринару'
    puts 'wsh - искупать(помыть) питомца'
    puts 'st - инофрмация о питомце'
    puts 'l - смотреть за питомцем'
    puts 'fd - дать питомцу еды'
    puts 'pl - поиграть с питомцем'
    puts 's - уложить спать'
    puts 'wu - разбудить питомца'
    puts 'e - выйти'
    puts 'rnm - переименовать питомца'
    puts '***'
    puts
  end

  def rename
    puts 'Введите новое имя для Вашего питомца'
    @name = gets.chomp.capitalize
    puts 'Теперь Вашего питомца зовут ' + @name + '.'
  end

  def food
    if @asleep
      @asleep = false
      puts @name + ' медленно просыпаеться от манящего запаха еды и идёт к своей миске.'
    end
    @eat = 11
    @health += 1 if @health < 10
    puts 'Вы покормили ' + @name + '.'
    timeleft
  end

  def play
    if @asleep
      puts @name + ' спит. Наверное не стоит тревожить котика пока он спит :D'
    else
      @mood = 10
      @wsleep += 1
      @dirty += 1
      puts 'Вы играете с ' + @name + ' '
      timeleft
    end
  end

  def look
    if @asleep
      puts 'Вы смотрите как ' + @name + ' спит.'
    else
      case rand(1..3)
      when 1
        puts 'Вы наблюдаете за ожесточенной войной ' + @name + ' с Вашим тапочком.'
      when 2
        puts 'Ищете ' + @name + ' взглядом и слышите шорох в шкафу.'
      when 3
        puts 'Вы смотрите за тем, что делает ' + @name + '.'
      end
    end
    timeleft
  end

  def sleep
    if @asleep
      puts 'Ваш питомец уже спит.'
      timeleft
    else
      @asleep = true
      @health += 1 if @health < 10
      puts 'Вы уложили ' + @name + ' спать....'
      timeleft
    end
  end

  def status
    puts '***'
    puts 'Вашего питомца зовут ' + @name
    puts @name + (@health >= 4 ? ' чувствует себя хорошо.' : ' выглядит подавлено.')
    puts @name + (@mood >= 5 ? ' доволен(на) жизнью.' : ' выглядит злым(ой)')
    puts @name + (@eat > 5 ? ' сыт(а).' : ' хочет есть.')
    puts @name + (@asleep ? ' сейчас спит.' : (' выглядит ' + (@wsleep >= 6 ? 'сонно.' : 'бодро.')))
    puts '***'
  end

  def wash
    if @asleep
      puts 'Ваш питомец спит. С начала разбудите его.'
    else
      @dirty = 0
      puts 'Вы помыли своего питомца и теперь он чист.'
      timeleft
    end
  end

  def wake_up
    if @asleep
      @asleep = false
      puts 'Вы разбудили ' + @name + '.'
      timeleft
    else
      puts @name + ' не спит.'
    end
  end

  def heal
    puts 'Вы отвезли котика к ветеринару, после курса лечения ' + @name + ' стало лучше.'
    @asleep = false
    @health = 10
    @mood -= 1
    timeleft
   end

  private

  def wsleep?
    @wsleep >= 6
  end

  def heal?
    @health <= 3
  end

  def dirty?
    @dirty >= 4
  end

  def hungry?
    @eat <= 3
  end

  def boring?
    @mood <= 4
  end

  def timeleft
    @eat -= 1
    @mood -= 1

    if @asleep
      @wsleep -= 3
      puts @name + ' ритмично сопит.'
    else
      @wsleep += 1
    end

    if hungry?
      if @asleep
        @asleep = false
        puts @name + ' проснулся(ась).'
      end
      puts 'У ' + @name + ' громко урчит живот.'
      @health -= 1
    end

    if dirty?
      puts 'Питомец испачкался, пора мыться!'
      @health -= 1
    end

    if boring?
      if @asleep
        @asleep = false
        puts @name + ' проснулся(ась).'
      end
      puts @name + ' очень заскучал(а), поиграйте с Вашим котиком.'
    end

    if heal?
      puts 'Ваш питомец заболел, отвезите его к ветеринару.'
      @mood -= 1
    end

    if wsleep?
      puts 'Котик выглядит очень уставшим, уложите его спать.'
      @health -= 1
    end

    if @wsleep >= 8
      if rand(1..3) == 1
        puts @name + ' упал(а) по среди комнаты и уснул(а).'
        @asleep = true
      else
        puts 'Уставший(ая) ' + @name + ' пытаеться дойти до своего спального места.'
      end
    end

    if @mood < 0
      puts 'Ваш питомец сбежал от вас в поисках приколючений :('
      exit
    end

    if @eat < 0
      puts 'Ваш питомец умер от голода :('
      exit
    end

    @health -= 2 if @dirty >= 6

    if @health < 0
      puts 'Ваш питомец умер от болезни :('
      puts '...которую заработал потому что был грязнулей.' if @dirty > 6
      exit
    end
    random_action unless @asleep
  end

  def random_action
    case rand(15)
    when 1
      puts @name + ' запрыгнул(а) на кухонный стол и наступив на горячую плиту сделал(а) себе ожог :('
      @health += rand(-3..-1)
    when 2
      puts @name + ' испортил(а) интернет провод.'
      @mood += rand(0..1)
    when 3
      puts @name + ' перевернул(а) вазон на кухне.'
      @dirty += rand(1..3)
      @mood += rand(0..1)
    when 4
      puts @name + ' стало интерестно что находиться в банке с под огурцов, и он(а) там застрял(а).'
      @mood -= 1
      @dirty += rand(1..3)
    when 5
      puts @name + ' поцарапал(а) мебель.'
      @mood += rand(0..1)
    when 6
      puts @name + ' вылез на улицу через форточку и пошел гулять.'
      @eat -= 2
      @mood += rand(-2..2)
      @dirty += rand(1..3)
      @health += rand(-2..0)
      end
  end
end

puts 'Назовите своего питомца.'
pet = Cat.new gets.chomp
puts 'Напишите \'help\' чтобы получить список доступный команд.'
puts

loop do
  case gets.chomp
  when 'rnm'
    pet.rename
  when 'help'
    pet.help
  when 'hl'
    pet.heal
  when 'wsh'
    pet.wash
  when 'st'
    pet.status
  when 'l'
    pet.look
  when 'fd'
    pet.food
  when 'pl'
    pet.play
  when 's'
    pet.sleep
  when 'wu'
    pet.wake_up
  when 'e'
    exit
  end
  puts
end
