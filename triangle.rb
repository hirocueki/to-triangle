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