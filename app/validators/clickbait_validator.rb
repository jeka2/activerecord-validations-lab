class ClickbaitValidator < ActiveModel::Validator 
    def validate(record)
        unless record.title && record.title.match?(/Won't Believe|Secret|Top \[[0-9]+\]|Guess/)
            record.errors[:title] << "Not clickbaity enough"
        end
            
    end
end