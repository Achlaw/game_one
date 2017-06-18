require 'gosu'

class HelloWorldGame < Gosu::Window
  def initialize width=800, height=600, fullscreen=false
    super
    self.caption = "Hello World!"

    @image = Gosu::Image.from_text self,
              "Zombie World",
              Gosu.default_font_name,
              100

    @image2 = Gosu::Image.from_text self,
              "Death Awaits",
              Gosu.default_font_name,
              50
  end

  def button_down id
    close if id = Gosu::KbEscape
  end

  def update
  end

  def draw
    @image.draw 0,0,0
    @image2.draw 100,100,0
  end
end

HelloWorldGame.new.show
