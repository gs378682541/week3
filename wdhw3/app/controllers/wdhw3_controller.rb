class Wdhw3Controller < ApplicationController
  $numCheck = 0
  def rps
    @rpsTitle = "Rock, Paper, Scissors"
    @rpsSubtitle = "Let's Play! Choose One:"
    @image = {0 => 'rock.jpg', 1 => 'paper.png', 2 => 'scissors.jpg'}
    @num = rand(3)
    if ((params[:choose] == 'rock' && @num == 0)||(params[:choose] == 'paper' && @num == 1)||(params[:choose] == 'scissors' && @num == 2))
      @rpsSubtitle = "IT'S A TIE!"
    elsif((params[:choose] == 'rock' && @num == 1)||(params[:choose] == 'paper' && @num == 2)||(params[:choose] == 'scissors' && @num == 0))
      @rpsSubtitle = "I WIN!"
    elsif((params[:choose] == 'rock' && @num == 2)||(params[:choose] == 'paper' && @num == 0)||(params[:choose] == 'scissors' && @num == 1))
      @rpsSubtitle = "YOU WIN!"
    end
  end
  def poker
    @pokerTitle = "Poker Cards"
    @imagePoker = {1 => '1.png', 2 => '2.png', 3 => '3.png', 4 => '4.png', 5 => '5.png', 6 => '6.png', 7 => '7.png', 8 => '8.png', 9 => '9.png', 10 => '10.png', 11 => '11.png', 12 => '12.png', 13 => '13.png',
                   14 => '14.png', 15 => '15.png', 16 => '16.png', 17 => '17.png', 18 => '18.png', 19 => '19.png', 20 => '20.png', 21 => '21.png', 22 => '22.png', 23 => '23.png', 24 => '24.png', 25 => '25.png', 26 => '26.png',
                   27 => '27.png', 28 => '28.png', 29 => '29.png', 30 => '30.png', 31 => '31.png', 32 => '32.png', 33 => '33.png', 34 => '34.png', 35 => '35.png', 36 => '36.png', 37 => '37.png', 38 => '38.png', 39 => '39.png',
                   40 => '40.png', 41 => '41.png', 42 => '42.png', 43 => '43.png', 44 => '44.png', 45 => '45.png', 46 => '46.png', 47 => '47.png', 48 => '48.png', 49 => '49.png', 50 => '50.png', 51 => '51.png', 52 => '52.png',
                   53 => '52.png', 54 => '54.png', }
    @numPoker = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54]
    @numChoose = @numPoker.sample(5)
  end
  def dice
    @diceTitle = "Dice Game"
    @diceSubTitle = "Welcome."
    @introduction = "Here are the rules:"
  end
  def roll
    @rollTitle = "Dice Game"
    @imageDice = {1 => 'dice1.png', 2 => 'dice2.png', 3 => 'dice3.png', 4 => 'dice4.png', 5 => 'dice5.png', 6 => 'dice6.png'}
    @numDice = [1,2,3,4,5,6]
    @numDicechoose=@numDice.sample(2)
    @numSum = @numDicechoose[0] + @numDicechoose[1]

  end


end
