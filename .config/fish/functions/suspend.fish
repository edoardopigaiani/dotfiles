# Defined in - @ line 0
function suspend --description 'alias suspend=i3lock --fuzzy -u & systemctl suspend'
	i3lock --fuzzy -u & systemctl suspend $argv;
end
