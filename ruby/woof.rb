class Dog

    attr_reader :name, :sad, :barking, :alone, :in_conversation

    def initialize name
        @name               = name
        @in_conversation    = true
        @alone              = false
        @barking            = true
        @sad                = false
        @stop               = false
        @command            = ''
        @talking_to_cat     = false
        @talking_to_dog     = false
        @getting_a_treat    = false
        @bark_back          = 1
        while @in_conversation do
            @command = gets.chomp
            init
            stop?
            meowing?
            barking?
            leave?
            reward?
            respond
            puts
        end
    end

    def init
        @in_conversation    = true
        @alone              = false
        @barking            = true
        @sad                = false
        @stop               = false
        @talking_to_cat     = false
        @talking_to_dog     = false
        @getting_a_treat    = false
        @bark_back          = 1
    end

    def respond
        bark if @in_conversation
    end

    def stop?
        @stop = true if @command.include?("#{@name} stop")
        @bark_back = false if @stop
    end

    def meowing?
        @talking_to_cat = true if @command.include?('meow')
        @bark_back = 5 if @talking_to_cat
        @talking_to_dog = false if @talking_to_cat
    end

    def barking?
        @talking_to_dog = true if @command.include?('woof')
        @bark_back = 3 if @talking_to_dog
        @talking_to_cat = false if @talking_to_dog
    end

    def reward?
        @getting_a_treat = true if @command.include?('treat')
        @bark_back = false if @getting_a_treat
    end

    def bark
        @bark_back.times { print 'woof ' } unless !@bark_back
    end

    def leave?
        if @command.include?('go away')
            @in_conversation = false
            @sad = true
            @alone = true
        end
    end

end

dog = Dog.new('shoe')


