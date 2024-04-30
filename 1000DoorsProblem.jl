using Pkg
Pkg.activate("C:\\Users\\MM-1\\OneDrive\\PhD\\GitHub\\LearningJulia")
cd("C:\\Users\\MM-1\\OneDrive\\PhD\\GitHub\\LearningJulia")

# There are 100 doors in a row that are all initially closed.
# You make 100 passes by the doors.

#= The first time through, visit every door and toggle the door  
(if the door is closed, open it; if it is open, close it). =#
# The second time, only visit every 2nd door (door #2, #4, #6, ...), and toggle it.
# The third time, visit every 3rd door (door #3, #6, #9, ...), etc,   
# until you only visit the 100th door.

# Task
# Answer the question:  
# What state are the doors in after the last pass?   
#Which are open, which are closed?
# Alternate: As noted in this page's discussion page, the only doors that remain open are those whose numbers are perfect squares.
#= Opening only those doors is an optimization that may also be expressed; however,
as should be obvious, this defeats the intent of comparing implementations across programming languages.=#
num_doors = 100
door = fill(0, num_doors)
factor = 1:num_doors
for i in 1:num_doors
    println("Round", i, "\n")
    for j in 1:num_doors
        if isinteger(j/factor[i])
            println("We pass door:", j, "\n")
            if door[i] == 1
            door[i] = 0
            else
                door[i] = 1
            end 
        end
    end
end
for i in 1:num_doors
    println("Door $i is ", ifelse(door[i] == 0, "closed", "open"))
end

# Solution
doors = falses(100)
for a in 1:100, b in a:a:100
    doors[b] = !doors[b]
end
for a = 1:100
    println("Door $a is " * (doors[a] ? "open." : "closed."))
end