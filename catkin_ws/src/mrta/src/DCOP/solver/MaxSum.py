# coding=utf-8

'''
Created on 19 apr 2017

@author: Andrea Montanari

This is the solver module.
It implements the Max Sum Algorithm (max/min)
'''

import time
import sys, os
import datetime

cur_dir = os.path.dirname(os.path.realpath(__file__))
sys.path.append(os.path.abspath(cur_dir + '/../maxsum/'))
sys.path.append(os.path.abspath(cur_dir + '/../messages/'))
sys.path.append(os.path.abspath(cur_dir + '/../operation/'))
sys.path.append(os.path.abspath(cur_dir + '/../system/'))

from MailMan import MailMan
from MessageFactory import MessageFactory
from Sum import Sum
from Max import Max
from Min import Min
from MSumOperator import MSumOperator


class MaxSum:
    '''
        COP_Instance, Constraint Optimization Problem
    '''
    cop = None
    '''
        PostService to send and retrieve messages. Used by the Nodes.
    '''
    ps = None
    '''
        MaxSum operation: maximization/minimization
    '''
    op = None
    
    report = ""
    
    '''
        the latest value of MaxSum
    '''
    latestValue_start = 0
    '''
        number of iterations of MaxSum
    '''
    iterationsNumber = 500
    '''
        update Z-Function only the end of the algorithm
    '''
    updateOnlyAtEnd = True
    '''
        actual value  of MaxSum
    '''
    actualValue = None
    '''
        Interface that permits to create q-message and r-message
    '''
    mfactory = None
    '''
        MaxSum operator: Max - Sum
    '''
    ms = None
    '''
        Sum operator
    '''
    sum = None
    '''
        list of values found in each iteration of the algorithm
    ''' 
    values = list()
    '''
        location where saving the MaxSum report
    '''
    reportpath = None
    
    def __init__(self, cop, plus_operation):
        '''
            cop: COP_Instance, Constraint Optimization Problem
            plus_operation: Sum operator
            report_path: location where saving the MaxSum report
        '''
        #self.reportpath = reportpath  
        self.cop = cop
        self.mfactory = MessageFactory()
        self.ps = MailMan(self.mfactory)
        self.sum = Sum(self.mfactory)
        
        if plus_operation == 'max':
            self.op = Max(self.mfactory)
            self.latestValue_start = float('-Infinity')
            
        elif plus_operation == 'min':
            self.op = Min(self.mfactory)
            self.latestValue_start = float('+Infinity')
         
        '''
            create MaxSumOperator: Max - Sum
        '''    
        self.ms = MSumOperator(self.sum, self.op)
        
        self.values = list()
        
    def getReport(self):
        return self.report
    
    def setReport(self, report):
        self.report = report
        
    def getMFactory(self):
        '''
            returns the Interface that permits to create q-message and r-message
        '''
        return self.mfactory
    
    def getRmessagesAverageDifferenceIteration(self):
        '''
            returns the average of difference of rmessages for each link 
            and for each iteration
        '''
        return self.ps.getRmessagesAverageDifferenceIteration() 
        
    def setIterationsNumber(self, iterations):
        '''
            How many steps to do?
        '''
        self.iterationsNumber = iterations
        
    def getCop(self):
        '''
            returns the cop associated to MaxSum
        '''
        return self.cop
    
    def setCop(self, cop):
        '''
            COP: COP_Instance, Constraint Optimization Problem
            Sets COP of MaxSum with cop
        '''
        self.cop = cop
        
    def getValues(self):
        '''
            returns values for each iteration found by MaxSum
        '''
        return self.values
           
    def getActualValue(self):
        '''
            returns the actual value found by MaxSum in this iteration
        '''
        return self.cop.actualValue()
        
    def stringStatus(self, iteration):
        
        status_i = ""
        
        if(iteration >= 0):
            status_i = status_i + "iteration_" + str(iteration) + "="
        else:
            status_i = status_i + "final="
        
        status_i = status_i + self.cop.status()
        
        return status_i
    
    
    def stringToFile(self, string, file):
        '''
            Simple method that stores a String into a file.
        '''
        output_file = open(file, "w")
        output_file.write(string)
        output_file.write("\n")
        output_file.close()
        
    def setUpdateOnlyAtEnd(self, updateOnlyAtEnd):
        '''
            updateOnlyAtEnd: boolean
            It is True if the update functions of algorithm is at End else False
        '''
        self.updateOnlyAtEnd = updateOnlyAtEnd
        
    def getUpdateOnlyAtEnd(self):
        '''
            returns when is updating of functions
            True at end else False 
        '''
        return self.updateOnlyAtEnd
     
    def solve_complete(self):  
        '''
            Apply the Max Sum algorithm.
        '''  
        i = 0
        
        '''
            set the postservice
        '''
        self.cop.setPostService(self.ps);
        '''
            set the operator
        '''
        self.cop.setOperator(self.ms);
        
        self.report = self.report + "==============================================================================================\n\n" 
        
        self.report = self.report + "\t\t\t\t\t\t\t MAX SUM INIT\n\n"
        
        status = ""
        
        self.report = self.report + "max_iterations_number=" + str(self.iterationsNumber) + "\n"
        self.report = self.report + "agents_number=" + str(self.cop.getAgents().__len__()) + "\n"
        self.report = self.report + "variables_number=" + str(len(self.cop.getNodeVariables())) + "\n"
        self.report = self.report + "functions_number=" + str(len(self.cop.getNodeFunctions())) + "\n"
    
        '''
            if messages don't change It is False
            else It is True
        '''    
        keepGoing = None
        '''
            the last iteration of the algorithm
        '''
        lastIteration = 0
        '''
            it is True when messages don't change
        '''
        ffFound = False
        
        startTime = time.clock()
        
        self.report = self.report + "\n==============================================================================================\n"
        self.report = self.report + "==============================================================================================\n"
        self.report = self.report + "==============================================================================================\n\n" 
        
        for i in range(self.iterationsNumber):
            
            lastIteration = i + 1
            keepGoing = False
            
            self.report = self.report + "\t\t\t\t\t\t\tITERATION " + str(i + 1) + "\n\n"
            
            for agent in self.cop.getAgents():
                
                self.report = self.report + str(datetime.datetime.now())[:23] + "\t\t\t\tAgent: " + str(agent.toString()) + " send Q message\n"

                keepGoing |= agent.sendQMessages()
                
                self.report = self.report + agent.getReport()
            
                self.report = self.report + str(datetime.datetime.now())[:23] + "\t\t\t\tAgent: " + str(agent.toString()) + " send R message\n"
                
                keepGoing |= agent.sendRMessages()
                
                self.report = self.report + agent.getReport()
                
                
                if(keepGoing == False):
                    '''
                        messages not changed!
                    '''
                    ffFound = True                   
                    '''
                        go out from the cycle
                    '''
                    break
                     
                if(self.updateOnlyAtEnd == False):
                    '''
                        updating in each iteration
                    '''
                    self.report = self.report + "\n"

                    if len(self.cop.getNodeFunctions()) == 1:
                        only_function = self.cop.factorgraph.nodefunctions[0]
                        only_function_id = only_function.function_id
                        largest_utility = only_function.functionEvaluator.maxCost
                        agent.updateZMessages([only_function_id, largest_utility])
                        self.report = self.report + agent.getReport() + "\n\n"
                        node_variable_index = [var for var in agent.variables if agent.agent_id == var.id_var]
                        #index = only_function.params.index(node_variable)
                        try:
                            node_variable = [var for var in agent.variables if agent.agent_id == var.id_var][0]
                            index = only_function.params.index(node_variable)
                        except:
                            # print(node_variable_index)
                            index = -1
                        # index = only_function.params.index(node_variable)
                        participate = False
                        for entry in only_function.functionEvaluator.costTable:
                            nodeArguments = entry.getArray()
                            utility_value = only_function.functionEvaluator.costTable[entry]
                            if utility_value == largest_utility:
                                status_value = nodeArguments[index].getValue()
                                if status_value > 0:
                                    participate = True
                                    break
                        if participate:
                            for x in agent.getVariables():
                                x.index_actual_argument = 0
                    else:
                        agent.updateZMessages([])
                        self.report = self.report + agent.getReport() + "\n\n"
                        agent.updateVariableValue()
                    self.report = self.report + agent.getReport() + "\n"
                    
                    '''
                        updating the actual value of MaxSum
                    '''
                    self.actualValue = self.getActualValue()
                    '''
                        append the value found in this iteration
                    '''
                    self.values.append(self.actualValue)
                          
                    status = self.stringStatus(i + 1)
                    self.report = self.report + status + "\n\n"

                    self.report = self.report + "==============================================================================================\n"
                    self.report = self.report + "==============================================================================================\n"
                    self.report = self.report + "==============================================================================================\n\n"
                    # function_list = self.cop.getNodeFunctions()
                    # agent_robot_id = agent.agent_id
                    # node_variable = [var for var in agent.variables if agent_robot_id == var.id_var][0]
                    # current_iteration_result = agent.postservice.zmessages[node_variable]
                    # choosen_function_id = [key for key in current_iteration_result if current_iteration_result[key] == max(current_iteration_result.values())][0]
                    # choosen_function = [function for function in function_list if function.function_id == choosen_function_id][0]
                    # index = choosen_function.params.index(node_variable)
                    #
                    # for entry in choosen_function.functionEvaluator.costTable:
                    #     nodeArguments = entry.getArray()
                    #     status_value = nodeArguments[index].getValue()
                    #     if status_value < 0:
                    #         continue
                    #     old_value = choosen_function.functionEvaluator.costTable[entry]
                    #     choosen_function.functionEvaluator.costTable[entry] = 10 * old_value

            # pause
            if(keepGoing == False):
                '''
                    messages not changed!
                '''
                ffFound = True
                print('Messages Not Changed!!')                    
                '''
                    go out from the cycle
                '''
                break
          
        # finish 
        
        timeElapsed = time.clock() - startTime    
         
        if(keepGoing == False):     
            self.actualValue = self.cop.actualValue()
            '''
                append the value found in the last iteration
            '''
            self.values.append(self.actualValue)
            
        '''
            save the final result of the algorithm
        '''
        status = self.stringStatus((-1))
        self.report = self.report + status + "\n"
        self.report = self.report + "total time [s]=" + str(timeElapsed)[:6] + "\n"
        self.report = self.report + "latest value got at iteration=" + str(i) + "\n"
        self.report = self.report + "total number of iteration=" + str(lastIteration) + "\n"
        self.report = self.report + "fixed point found="
        
        if (ffFound == True):
            '''
                if it finds a fix point: Convergence
            '''
            self.report = self.report + "Y"
        else:
            self.report = self.report + "N"
         
        self.report = self.report + "\n"
        
        '''
            save the final report on file
        '''
        #self.stringToFile(self.report, self.reportpath)  
        #print(self.report)
    # def get_results(self, collab=False):
    def get_results(self, collab):

        result = {} # { variable_id : function_id }
        for agent in self.cop.getAgents():
            for variable in agent.getVariables():
                # print(variable.getStateArgument().value)
                result[variable] = variable.getStateArgument().value
        # print(result)

        if not collab:
            for function_id in set(result.values()):
                variables = [v for v in result if result[v] == function_id]
                if len(variables) > 1:
                    maxZValue = float("-inf")
                    maxVariable = None
                    for variable in variables:
                        zValues = self.ps.readZMessage(variable)                    
                        if result[variable] in zValues:
                            zValue = zValues[result[variable]]
                            if maxZValue < zValue:
                                maxZValue = zValue
                                maxVariable = variable
                    if maxVariable is not None:
                        for variable in variables:
                            if variable.id_var != maxVariable.id_var:
                                result[variable] = -result[variable]
         
        result = {k.id_var:v for k,v in result.iteritems()}

        return result

    
