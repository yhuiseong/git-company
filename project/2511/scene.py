from manim import *

class Object(Scene):
    def construct(self):
        title = Text("Essential of Logarithm", font_size = 82, slant = "ITALIC", t2c = {"Logarithm":BLUE}).shift(UP * 1)
        logformula = MathTex("\log_a {(b^x)} = x", font_size = 72).next_to(title, DOWN).shift(DOWN * 0.5)
        log1 = MathTex("\log_a {x \over y} = \log_a {x} - \log_a {y}", font_size = 50).to_corner(LEFT).shift(RIGHT * 0.5)
        log2 = MathTex("\log_a {xy} = \log_a {x} + \log_a {y}", font_size = 50).to_corner(RIGHT).shift(LEFT * 0.5)
        log3 = MathTex("\log_a {(x)^p} = p \log_a {x}", font_size = 50).next_to(log1, DOWN).shift(DOWN * 0.5)
        log4 = MathTex("\log_a {\sqrt[p]{x}} = {\log_a {x} \over p}", font_size = 50).next_to(log2, DOWN).shift(DOWN * 0.5)
        subtitle = Text("Logarithmic Identities", font_size = 72, slant = "ITALIC").to_edge(UP)



        #Scene 
        self.play(Write(title))
        self.wait(0.7)
        self.play(Write(logformula))
        self.wait(2)
        self.remove(title, logformula)
        self.wait(1)
        self.play(Write(subtitle))
        self.wait(0.5)
        self.play(Write(log1),Write(log2))
        self.wait(0.3)
        self.play(Write(log3),Write(log4))
        self.wait(2)