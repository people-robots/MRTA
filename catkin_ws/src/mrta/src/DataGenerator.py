import os, sys
import argparse
import pickle
from numpy import random
from Task import Task
from PrecedenceGraph import PrecedenceGraph, Node
from Robot import Robot
from Logger import Logger, LogLevel

class DataSet:

    def __init__(self, p_graphs, beta, bid_alpha, cost_alpha):        
        self.p_graphs = p_graphs
        self.beta = beta
        self.bid_alpha = bid_alpha
        self.cost_alpha = cost_alpha         
        self.schedules = []

class DataGenerator:

    def __init__(self, map_size_x, map_size_y, logger):
        self._map_size = (map_size_x, map_size_y)
        self._logger = logger
        self.task_types = [1, 2]   # was self.task_types = [1, 2]

    def generate_tasks(self, num_of_tasks, task_locations=None):
        if task_locations is not None:
            if len(task_locations) != num_of_tasks:
                self._logger.error("generate_tasks: The number of task locations is not same as the number of tasks.")

        tasks = []
        dur_start = 100
        dur_end = 1000

        duration = random.randint(dur_start, dur_end)
        print(""
              ""
              "duration range:", dur_start, dur_end)
        for i in range(num_of_tasks):
            duration = random.randint(dur_start, dur_end)
            task_id = i + 1
            est = random.randint(10, 7500*0.25)
            #est = random.randint(100,110) #parameters for tight test
            #lft = random.randint(1000,1100) #parameters for tight test
            lft = min(est + duration + random.randint(10, 7500),7500)
            task_type = random.choice(self.task_types, 1, p=[0.5,0.5])[0]  # was p = [0.5, 0.5]
            # print("id", i, "est", est, "lft", lft, "duration", duration)
            if task_locations is not None:
                pos_x = task_locations[i][0]
                pos_y = task_locations[i][1]
            else:
                pos_x, pos_y = self.generate_locations(1)[0]
                #pos_x, pos_y = self.generate_clustered_locations(1)[0]

            tasks.append(Task(est, lft, duration, task_id, pos_x, pos_y, task_type))
        return tasks

    def generate_locations(self, num_of_locations):
        locations = []
        for i in range(num_of_locations):
            pos_x = random.randint(0, self._map_size[0])
            pos_y = random.randint(0, self._map_size[1])
            locations.append((pos_x, pos_y))
        return locations
    def generate_clustered_locations(self, num_of_locations):
        locations = []
        for i in range(num_of_locations):
            randFactor = random.uniform()
            if(randFactor<=0.5):
                pos_x = random.randint(10,30)
                pos_y = random.randint(10,30)
                locations.append((pos_x, pos_y))
            else:
                pos_x = random.randint(70,95)
                pos_y = random.randint(70,95)
                locations.append((pos_x, pos_y))
        return locations

    def generate_pgraph(self, tasks, max_num_of_edges):
        p_graph = PrecedenceGraph(tasks)
        min_num_of_edges = len(tasks) / 2
        num_of_edges = min_num_of_edges

        if max_num_of_edges > min_num_of_edges:
            num_of_edges = random.randint(min_num_of_edges, max_num_of_edges)

        i = 0
        while i < num_of_edges:
            from_task = random.choice(tasks)
            to_task = random.choice(tasks)

            if from_task.lft < to_task.lft:

                if p_graph.are_connected(from_task, to_task):
                    p_graph.remove_edge(from_task, to_task)
                else:
                    if p_graph.add_edge(from_task, to_task):
                        i += 1
        
        p_graph.build_graph()
        return p_graph

    def generate_pgraphs(self, tasks, num_of_pgraphs, max_num_of_edges):
        p_graphs = []    

        for i in range(num_of_pgraphs):
            p_graph = self.generate_pgraph(tasks, max_num_of_edges)
            p_graphs.append(p_graph)

        return p_graphs

    def inRange(self,low,high,num):
        if low < num  and num <= high:
            return True
        else:
            return False

    def generate_robots(self, num_of_robots, robot_speed):
        locations = self.generate_locations(num_of_robots)          
        robots = []
        task_types = [1,2]
        #task_types = [1,2,3,4]   # was task_types = [1, 2]

        for i in range(num_of_robots):
            robot_id = i + 1
            capability = set()
            ran = random.uniform()
            # first robot capable of doing all tasks
            if i == 0 or ran > 0.66:
                capability = set(task_types)
            elif ran > 0.33:
                capability.add(task_types[0])
            else:
                capability.add(task_types[1])

            robot = Robot(robot_id, locations[i][0], locations[i][1], capability, robot_speed, self._logger)
            robots.append(robot)

        return robots

    """
            if i == 0 or (0.0 < ran and ran <= 0.07) == True:
                capability = set(task_types)
            elif (0.07 < ran and ran <= 0.13) == True:
                capability.add(task_types[0])
            elif (0.13 < ran and 0.2 <= ran) == True:
                capability.add(task_types[1])
            elif (0.2 < ran and 0.26 <= ran) == True:
                capability.add(task_types[2])
            elif (0.26 < ran and 0.33 <= ran) == True:
                capability.add(task_types[3])
            elif (0.33 < ran and 0.4 <= ran) == True:
                capability.add(task_types[0])
                capability.add(task_types[1])
            elif (0.4 < ran and 0.46 <= ran) == True:
                capability.add(task_types[0])
                capability.add(task_types[2])
            elif (0.46 < ran and 0.53 <= ran) == True:
                capability.add(task_types[0])
                capability.add(task_types[3])
            elif (0.53 < ran and 0.6 < ran) == True:
                capability.add(task_types[1])
                capability.add(task_types[2])
            elif (0.6 < ran and 0.66 <= ran) == True:
                capability.add(task_types[1])
                capability.add(task_types[3])
            elif (0.66 < ran and 0.73 <= ran) == True:
                capability.add(task_types[2])
                capability.add(task_types[3])
            elif (0.73 < ran and 0.79 <= ran) == True:
                capability.add(task_types[0])
                capability.add(task_types[1])
                capability.add(task_types[2])
            elif (0.79 < ran and  0.86 <= ran) == True:
                capability.add(task_types[0])
                capability.add(task_types[1])
                capability.add(task_types[3])
            elif (0.86 < ran and 0.93 <= ran) == True:
                capability.add(task_types[0])
                capability.add(task_types[2])
                capability.add(task_types[3])
            elif (0.93 < ran and 1.00 <= ran) == True:
                capability.add(task_types[1])
                capability.add(task_types[2])
                capability.add(task_types[3])
        """








if __name__ == "__main__":

    parser = argparse.ArgumentParser(description="MRTA Data Generator")




    parser.add_argument('--x',
        help='X Dimention of Map',
        dest='map_x',
        type=int,
        default=100,
        action='store')

    parser.add_argument('--y',
        help='Y Dimention of Map',
        dest='map_y',
        type=int,
        default=100,
        action='store')

    args = parser.parse_args()

    logger = Logger(LogLevel.OFF[0])
    map_x = args.map_x
    map_y = args.map_y
    
    num_of_pgraphs = 50
    robot_count_arr = [2, 4, 8]
    task_count_arr = [5, 10, 20, 30]     

    dg = DataGenerator(map_x, map_y, logger)
    robots = { }
    for robot_count in robot_count_arr:
        robots[robot_count] = dg.generate_robots(robot_count, 1)
    
    p_graphs = { }
    for task_count in task_count_arr:
        p_graphs[task_count] = {}
        tasks = dg.generate_tasks(task_count)
        max_possible_edges = (task_count * (task_count - 1))/2
        max_num_of_edges = min(3 * task_count, max_possible_edges)
        p_graphs[task_count] = dg.generate_pgraphs(tasks, num_of_pgraphs, max_num_of_edges)

    pickle.dump(robots, open('./robots.pickle', 'w'))
    pickle.dump(p_graphs, open('./pgraphs.pickle', 'w'))



   
