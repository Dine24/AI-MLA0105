import random
def objective_function(x):
    return -(x ** 2)  
def hill_climbing(initial_solution, step_size, iterations):
    current_solution = initial_solution

    for _ in range(iterations):
        current_value = objective_function(current_solution)
        neighbor_solution = current_solution + random.uniform(-step_size, step_size)
        neighbor_value = objective_function(neighbor_solution)
        if neighbor_value > current_value:
            current_solution = neighbor_solution

    return current_solution

if __name__ == "__main__":
    
    initial_solution = 2.0
    step_size = 0.1
    iterations = 100

    
    result = hill_climbing(initial_solution, step_size, iterations)

    print("Optimal Solution:", result)
    print("Objective Function Value:", objective_function(result))
