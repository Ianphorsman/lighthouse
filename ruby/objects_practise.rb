
class Person

    attr_accessor :first_name, :last_name, :name, :gender

    def initialize attributes = {}
        attributes.each do |key, value|
            instance_variable_set "@#{key}".intern, value
        end
        @name = "#{@first_name if @first_name} #{@last_name if @last_name}"
    end

end

me = Person.new ({
    :first_name => 'Ian',
    :last_name => 'Horsman',
    :gender => 'male'
})

puts me.first_name, me.last_name, me.gender, me.name
