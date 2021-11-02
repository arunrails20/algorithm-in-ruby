# Find the Tournament Winning
# Given an array of competition [[home_team, other_team]]
# array of results[1,0....]
# In results if 1 means home_team wins elsif 0 means other_team wins
# example competitions [["AWS","DO"],["DO","GCP"],["GCP","AWS"]]
# results [0,0,1]
# Tournament winner is GCP, each winning score is 5

def tournament_winner(competitions, results)
    # init with default empty value
    high_score_team = "".to_sym
    score_entry = {}
    score_entry[high_score_team] = 0
    competitions.each_with_index do |match, idx|
        # if the results is 1 than the home_team win the match
        winning_team = results[idx] == 1 ? match[0] : match[1]
        
        update_score_entry(score_entry, winning_team)
        if score_entry[winning_team.to_sym] > score_entry[high_score_team.to_sym]
            high_score_team = winning_team
        end
    end
    high_score_team
end

def update_score_entry(score_entry, winning_team)
    if score_entry[winning_team.to_sym]
        score_entry[winning_team.to_sym] += 5
    else
        score_entry[winning_team.to_sym] = 5
    end
end

competitions = [["AWS","DO"],["DO","GCP"],["GCP","AWS"]]
p tournament_winner(competitions,[0,0,1] )