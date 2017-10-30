# puts "$0：#{$0}"
unless ARGV.length == 3
    puts "invalid args! Please [#{$0} 1, 1, 1]" 
    exit 
end

a = ARGV[0].to_i
b = ARGV[1].to_i
c = ARGV[2].to_i


class Triangle
    def self.ask(a,b,c)
        return "三角形じゃないです＞＜" unless is_triangle(a,b,c)
        return "正三角形ですね！" if is_squere(a,b,c)
        return "二等辺三角形ですね！" if is_isosceles(a,b,c)
        "不等辺三角形ですね！"
    end
    def self.is_isosceles(a,b,c)
        return false if is_squere(a,b,c)
        a == b || b==c || a==c
    end
    def self.is_squere(a,b,c)
        a == b && a == c
    end
    def self.is_triangle(a,b,c)
        a < b+c &&
        b < a+c &&
        c < a+b
    end
end

puts Triangle.ask(a,b,c)
