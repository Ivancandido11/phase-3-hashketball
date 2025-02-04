# Write your code below game_hash
def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end

def num_points_scored(player)
  found_player = []
  game_hash.each do |team, data|
    data.each do |attribute, value|
      if attribute == :players
        pro = value.find do |name| 
          name[:player_name] == player
        end
        pro ? found_player << pro : nil
      end
    end
  end
  found_player[0][:points]
end

def shoe_size(player)
  found_player = []
  game_hash.each do |team, data|
    data.each do |attribute, value|
      if attribute == :players
        pro = value.find do |name| 
          name[:player_name] == player
        end
        pro ? found_player << pro : nil
      end
    end
  end
  found_player[0][:shoe]
end

def team_colors(team)
  found_team = []
  game_hash.each do |t, data|
    if data[:team_name] == team
      found_team << data[:colors]
    end
  end
  found_team[0]
end

def team_names
teams = []
  game_hash.each do |team, data|
    teams << data[:team_name]
  end
  teams
end

def player_numbers(team)
  numbers = []
  game_hash.each do |t, data|
    if data[:team_name] == team
      data[:players].map do |player|
        numbers << player[:number]
      end
    end
  end
  numbers
end

def player_stats(player)
  found_player = []
  game_hash.each do |team, data|
    data.each do |attribute, value|
      if attribute == :players
        pro = value.find do |name| 
          name[:player_name] == player
        end
        pro ? found_player << pro : nil
      end
    end
  end
  found_player[0]
end

def big_shoe_rebounds
  player = []
  game_hash.each do |team, data|
    player << data[:players]
  end
  all_players = player.reduce([], :concat)
  sorted = all_players.sort do |player1, player2|
    player2[:shoe] <=> player1[:shoe]
  end
  sorted[0][:rebounds]
end
