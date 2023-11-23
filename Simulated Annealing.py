import math
import random

def objective_function(x):
    return math.sin(x) + math.sin(2 * x)

def simulated_annealing(initial_solution, temperature, cooling_rate, iterations):
    current_solution = initial_solution
    best_solution = current_solution

    for i in range(iterations):
        neighbor_solution = current_solution + random.uniform(-0.1, 0.1)


        current_energy = objective_function(current_solution)
        neighbor_energy = objective_function(neighbor_solution)

        
        if neighbor_energy < current_energy or random.random() < math.exp((current_energy - neighbor_energy) / temperature):
            current_solution = neighbor_solution

        
        if objective_function(current_solution) < objective_function(best_solution):
            best_solution = current_solution

        temperature *= 1 - cooling_rate

    return best_solution

if __name__ == "__main__":
    
    initial_solution = 3.0
    initial_temperature = 1.0
    cooling_rate = 0.01
    iterations = 10000

    
    result = simulated_annealing(initial_solution, initial_temperature, cooling_rate, iterations)

    print("Optimal Solution:", result)
    print("Objective Function Value:", objective_function(result))
