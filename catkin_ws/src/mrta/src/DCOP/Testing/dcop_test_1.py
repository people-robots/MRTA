import sys, os

cur_dir = os.path.dirname(os.path.realpath(__file__))

sys.path.append(os.path.abspath(cur_dir + '/../maxsum'))
sys.path.append(os.path.abspath(cur_dir + '/../solver'))
sys.path.append(os.path.abspath(cur_dir + '/../system'))
sys.path.append(os.path.abspath(cur_dir + '/../graph'))
sys.path.append(os.path.abspath(cur_dir + '/../misc'))
sys.path.append(os.path.abspath(cur_dir + '/../function'))
sys.path.append(os.path.abspath(cur_dir + '/../operation'))
sys.path.append(os.path.abspath(cur_dir + '/../messages'))

from Agent import Agent
from NodeVariable import NodeVariable
from NodeFunction import NodeFunction
from TabularFunction import TabularFunction
from NodeArgument import NodeArgument
from COP_Instance import COP_Instance
from MaxSum import MaxSum
from Max import Max
from MessageFactory import MessageFactory

def test():

    nodeVariable1 = NodeVariable(1)
    nodeVariable2 = NodeVariable(2)
    nodeVariable3 = NodeVariable(3)

    nodeVariable1.addDomain([1, -1])
    nodeVariable2.addDomain([1, -1]) 
    nodeVariable3.addDomain([1, 2, 3, 4, 5, -1, -2, -3, -4, -5])

    nodefunction1 = NodeFunction(1)
    nodefunction2 = NodeFunction(2)
    nodefunction3 = NodeFunction(3)
    nodefunction4 = NodeFunction(4)
    nodefunction5 = NodeFunction(5)

    nodefunction1.setFunction(TabularFunction())
    nodefunction2.setFunction(TabularFunction())
    nodefunction3.setFunction(TabularFunction())
    nodefunction4.setFunction(TabularFunction())
    nodefunction5.setFunction(TabularFunction())

    nodeVariable1.addNeighbour(nodefunction1)
    nodeVariable2.addNeighbour(nodefunction1)
    nodeVariable3.addNeighbour(nodefunction1)
    nodeVariable3.addNeighbour(nodefunction2)   
    nodeVariable3.addNeighbour(nodefunction3)
    nodeVariable3.addNeighbour(nodefunction4) 
    nodeVariable3.addNeighbour(nodefunction5)
     
    nodefunction1.addNeighbour(nodeVariable1)
    nodefunction1.addNeighbour(nodeVariable2)
    nodefunction1.addNeighbour(nodeVariable3)

    nodefunction2.addNeighbour(nodeVariable3)
    nodefunction3.addNeighbour(nodeVariable3)
    nodefunction4.addNeighbour(nodeVariable3)                                                
    nodefunction5.addNeighbour(nodeVariable3)


    nodefunction1.getFunction().addParametersCost([NodeArgument(1), NodeArgument(1), NodeArgument(1)], 7)
    nodefunction1.getFunction().addParametersCost([NodeArgument(-1), NodeArgument(1), NodeArgument(1)], 8)
    nodefunction1.getFunction().addParametersCost([NodeArgument(1), NodeArgument(-1), NodeArgument(1)], 5)
    nodefunction1.getFunction().addParametersCost([NodeArgument(1), NodeArgument(1), NodeArgument(-1)], 10)
    nodefunction1.getFunction().addParametersCost([NodeArgument(-1), NodeArgument(-1), NodeArgument(1)], 4)
    nodefunction1.getFunction().addParametersCost([NodeArgument(-1), NodeArgument(1), NodeArgument(-1)], 6)
    nodefunction1.getFunction().addParametersCost([NodeArgument(1), NodeArgument(-1), NodeArgument(-1)], 4)
    nodefunction1.getFunction().addParametersCost([NodeArgument(-1), NodeArgument(-1), NodeArgument(-1)], 0)    
     
    mfactory = MessageFactory()    
    #sum = Sum(mfactory) 
    op = Max(mfactory)

    rmessege = op.Op(nodefunction1, nodeVariable3, nodefunction1.getFunction(), [])

    print ([rmessege.getValue(i) for i in range(rmessege.size())])

    return rmessege  

def create_DCop2():
    
    nodeVariables = list()
    nodeFunctions = list()    

    agent1 = Agent(1)
    agent2 = Agent(2)  
    agent3 = Agent(3)
    agent4 = Agent(4)
    agents = [agent1, agent2, agent3, agent4]

    nodeVariable1 = NodeVariable(1)
    nodeVariable2 = NodeVariable(2)
    nodeVariable3 = NodeVariable(3)
    nodeVariable4 = NodeVariable(4)

    nodeVariable1.addDomain([1, -1]) #robot1 can do task 1 or -1
    nodeVariable2.addDomain([2, -2])
    nodeVariable3.addDomain([1, 2, -1, -2])
    nodeVariable4.addDomain([2, -2])

    nodefunction1 = NodeFunction(1)
    nodefunction2 = NodeFunction(2)

    nodefunction1.setFunction(TabularFunction())
    nodefunction2.setFunction(TabularFunction())

    nodeVariable1.addNeighbour(nodefunction1)
    nodeVariable2.addNeighbour(nodefunction2)
    nodeVariable3.addNeighbour(nodefunction1)
    nodeVariable3.addNeighbour(nodefunction2)
    nodeVariable4.addNeighbour(nodefunction2)

    nodefunction1.addNeighbour(nodeVariable1)
    nodefunction1.addNeighbour(nodeVariable3)
    nodefunction2.addNeighbour(nodeVariable2)
    nodefunction2.addNeighbour(nodeVariable3)
    nodefunction2.addNeighbour(nodeVariable4)

    #NodeArgument is a possible NodeVariable's value
    #function is task, variable is robot; agent=???
    #taks1 -> robot1, robot3
    #task2 -> robot2, robot3, robot4

    '''
    f1:
        best case with r3 -> line4, 22
        best case without r3 -> line1, 20
    f2:
        best case with r3 -> line8 58
        best case without r3 -> line7 57
    r3 making decision:
        r3 chooses f1 -> 22 + 57 = 79 
        r3 chooses f2 -> 20 + 58 = 78
       ==>r3 chooses f1 
    '''
    nodefunction1.getFunction().addParametersCost([NodeArgument(-1), NodeArgument(-1)], 20)
    nodefunction1.getFunction().addParametersCost([NodeArgument(-1), NodeArgument(1)], 15)
    nodefunction1.getFunction().addParametersCost([NodeArgument(1), NodeArgument(-1)], 10)
    nodefunction1.getFunction().addParametersCost([NodeArgument(1), NodeArgument(1)], 22)

    nodefunction2.getFunction().addParametersCost([NodeArgument(-2), NodeArgument(-2), NodeArgument(-2)], 51)
    nodefunction2.getFunction().addParametersCost([NodeArgument(-2), NodeArgument(-2), NodeArgument(2)], 52)
    nodefunction2.getFunction().addParametersCost([NodeArgument(-2), NodeArgument(2), NodeArgument(-2)], 53)
    nodefunction2.getFunction().addParametersCost([NodeArgument(2), NodeArgument(-2), NodeArgument(-2)], 54)
    nodefunction2.getFunction().addParametersCost([NodeArgument(2), NodeArgument(2), NodeArgument(-2)], 55)
    nodefunction2.getFunction().addParametersCost([NodeArgument(-2), NodeArgument(2), NodeArgument(2)], 56)
    nodefunction2.getFunction().addParametersCost([NodeArgument(2), NodeArgument(-2), NodeArgument(2)], 57)
    nodefunction2.getFunction().addParametersCost([NodeArgument(2), NodeArgument(2), NodeArgument(2)], 58)

    print(nodefunction1.getFunction().getCostValues())
    print(nodefunction2.getFunction().getCostValues())

    nodeVariables.append(nodeVariable1)
    nodeVariables.append(nodeVariable2)
    nodeVariables.append(nodeVariable3)
    nodeVariables.append(nodeVariable4)

    nodeFunctions.append(nodefunction1)
    nodeFunctions.append(nodefunction2)

    agent1.addNodeVariable(nodeVariable1)
    agent2.addNodeVariable(nodeVariable2)
    agent3.addNodeVariable(nodeVariable3)
    agent4.addNodeVariable(nodeVariable4)

    agent1.addNodeFunction(nodefunction1)
    agent2.addNodeFunction(nodefunction2)
          
    cop = COP_Instance(nodeVariables, nodeFunctions, agents)    
    
    return cop  


def create_DCop():
    nodeVariables = list()
    nodeFunctions = list()

    agent1 = Agent(1)
    agent2 = Agent(2)
    agent3 = Agent(3)
    agent4 = Agent(4)
    agents = [agent1, agent2, agent3, agent4]

    nodeVariable1 = NodeVariable(1)
    nodeVariable2 = NodeVariable(2)


    nodeVariable1.addDomain([1, -1, 2, -2])  # robot1 can do task 1 or -1
    nodeVariable2.addDomain([2, -2, 3, -3])

    nodefunction1 = NodeFunction(1)
    nodefunction2 = NodeFunction(2)
    nodefunction3 = NodeFunction(3)

    nodefunction1.setFunction(TabularFunction())
    nodefunction2.setFunction(TabularFunction())
    nodefunction3.setFunction(TabularFunction())

    nodeVariable1.addNeighbour(nodefunction1)
    nodeVariable1.addNeighbour(nodefunction2)
    nodeVariable2.addNeighbour(nodefunction2)
    nodeVariable2.addNeighbour(nodefunction3)


    nodefunction1.addNeighbour(nodeVariable1)
    nodefunction2.addNeighbour(nodeVariable1)
    nodefunction2.addNeighbour(nodeVariable2)
    nodefunction3.addNeighbour(nodeVariable2)

    # NodeArgument is a possible NodeVariable's value
    # function is task, variable is robot; agent=???
    # taks1 -> robot1
    # task2 -> robot1, robot2
    # task3 -> robot2
    nodefunction1.getFunction().addParametersCost([NodeArgument(1)], 10)
    nodefunction1.getFunction().addParametersCost([NodeArgument(2)], 0)

    nodefunction2.getFunction().addParametersCost([NodeArgument(1), NodeArgument(2)], 4)
    nodefunction2.getFunction().addParametersCost([NodeArgument(1), NodeArgument(3)], 0)
    nodefunction2.getFunction().addParametersCost([NodeArgument(2), NodeArgument(2)], 17)
    nodefunction2.getFunction().addParametersCost([NodeArgument(2), NodeArgument(3)], 5)


    nodefunction3.getFunction().addParametersCost([NodeArgument(2)], 0)
    nodefunction3.getFunction().addParametersCost([NodeArgument(3)], 8)


    print(nodefunction1.getFunction().getCostValues())
    print(nodefunction2.getFunction().getCostValues())

    nodeVariables.append(nodeVariable1)
    nodeVariables.append(nodeVariable2)


    nodeFunctions.append(nodefunction1)
    nodeFunctions.append(nodefunction2)
    nodeFunctions.append(nodefunction3)

    agent1.addNodeVariable(nodeVariable1)
    agent2.addNodeVariable(nodeVariable2)

    agent1.addNodeFunction(nodefunction1)
    agent2.addNodeFunction(nodefunction2)

    cop = COP_Instance(nodeVariables, nodeFunctions, agents)

    return cop


if __name__ == "__main__":
    
    cop = create_DCop2()
    ms = MaxSum(cop, "max")
    ms.setUpdateOnlyAtEnd(False) 
    ms.setIterationsNumber(1)
    ms.solve_complete()

    result = ms.get_results(True)
    print(result)
    for variable in result:        
        print (str(variable) + ": " + str(result[variable]))

    #report = ms.getReport()
    #print report
    
    