def game_hash 
  hash = {
    :home => {
      :team_name => "Brooklyn Nets",
      :colors => ["Black", "White"],
      :players => [
        "Alan Anderson" => {
          :number => 0, 
          :shoe => 16, 
          :points => 22, 
          :rebounds => 12, 
          :assists => 12, 
          :steals => 3, 
          :blocks => 1, 
          :slam_dunks => 1
          },
          "Reggie Evans" => {
          :number => 30, 
          :shoe => 14, 
          :points => 12, 
          :rebounds => 12, 
          :assists => 12, 
          :steals => 12, 
          :blocks => 12, 
          :slam_dunks => 7
          },
          "Brook Lopez" => {
          :number => 11, 
          :shoe => 17, 
          :points => 17, 
          :rebounds => 19, 
          :assists => 10, 
          :steals => 3, 
          :blocks => 1, 
          :slam_dunks => 15
          },
          "Mason Plumlee" => {
          :number => 1 , 
          :shoe => 19, 
          :points => 26, 
          :rebounds => 11, 
          :assists => 6, 
          :steals => 3, 
          :blocks => 8, 
          :slam_dunks => 5
          },          
          "Jason Terry" => {
          :number => 31, 
          :shoe => 15, 
          :points => 19, 
          :rebounds => 2, 
          :assists => 2, 
          :steals => 4, 
          :blocks => 11, 
          :slam_dunks => 1
          }
        ]
    },
    :away => {
      :team_name => "Charlotte Hornets",
      :colors => ["Turquoise", "Purple"],
      :players => [
        "Jeff Adrien" => {
          :number => 4, 
          :shoe => 18, 
          :points => 10, 
          :rebounds => 1, 
          :assists => 1, 
          :steals => 2, 
          :blocks => 7, 
          :slam_dunks => 2
          },
          "Bismack Biyombo" => {
          :number => 0, 
          :shoe => 16, 
          :points => 12, 
          :rebounds => 4, 
          :assists => 7, 
          :steals => 22, 
          :blocks => 15, 
          :slam_dunks => 10
          },
          "DeSagna Diop" => {
          :number => 2, 
          :shoe => 14, 
          :points => 24, 
          :rebounds => 12, 
          :assists => 12, 
          :steals => 4, 
          :blocks => 5, 
          :slam_dunks => 5
          },
          "Ben Gordon" => {
          :number => 8 , 
          :shoe => 15, 
          :points => 33, 
          :rebounds => 3, 
          :assists => 2, 
          :steals => 1, 
          :blocks => 1, 
          :slam_dunks => 0
          },
          "Kemba Walker" => {
          :number => 33, 
          :shoe => 15, 
          :points => 6, 
          :rebounds => 12, 
          :assists => 12, 
          :steals => 7, 
          :blocks => 5, 
          :slam_dunks => 12
          }
        ]
    }
  } 
end

def num_points_scored(player)
  game_hash[:away][:players][0].include?(player) ? 
  game_hash[:away][:players][0][player][:points] : game_hash[:home][:players][0][player][:points]
end

def shoe_size(player)
  game_hash[:away][:players][0].include?(player) ? 
  game_hash[:away][:players][0][player][:shoe] : game_hash[:home][:players][0][player][:shoe]
end

def team_colors(team)
  game_hash[:away][:team_name] == team ? game_hash[:away][:colors] : game_hash[:home][:colors] 
end

def team_names() 
  result = [game_hash[:away][:team_name], game_hash[:home][:team_name] ]

end

def player_numbers(team)
  result = []
  if game_hash[:away][:team_name] == team
    game_hash[:away][:players][0].each do |key, value|
      result << value[:number]
    end
    else
    game_hash[:home][:players][0].each do |key, value|
      result << value[:number]
    end
  end
  result.sort
end

def player_stats(player)
  game_hash[:away][:players][0].include?(player) ? 
  game_hash[:away][:players][0][player] : game_hash[:home][:players][0][player]
end

def big_shoe_rebounds()
  max = 0
  player_max = ""
  
  game_hash[:away][:players][0].each do |player, info| 
    if max < info[:shoe]
      max = info[:shoe]
      player_max = player
    end
  end
  
  game_hash[:home][:players][0].each do |player, info| 
    if max < info[:shoe]
      max = info[:shoe]
      player_max = player
    end
  end
  game_hash[:away][:players][0].include?(player_max) ? 
  game_hash[:away][:players][0][player_max][:rebounds] : game_hash[:home][:players][0][player_max][:rebounds]
end





