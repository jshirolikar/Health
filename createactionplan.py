'''
Created on May 5, 2018

@author: local
'''
import csv
with open('/Users/local/Documents/health/problemdescription.csv') as csvfile:
    reader = csv.DictReader(csvfile)
    for row in reader:


        with open('/Users/local/Documents/health/userprofile.csv') as csvfile:
            reader = csv.DictReader(csvfile)
            for row1 in reader:
                   

                
                if(row1['name'] == row['name']):
                    
                    print('Found ' + row1['name'] + ' in user profiles')
                    print('Creating action plan for ' + row1['name'])
                    print('------------------------------------------')
                    
                    print(row['name'] + ', your problem is : ' + row['problem'])
                    print('\n')
                    print('You indicated that you need improvement in the following areas of wellbeing:')
                    
                    if(row['professional']=='1'):
                        print("\nProfessional:")
                        print("-------------")
                        if(row1['employed'] == '1'):
                            print('You are currently employed.  Keep up the good work!')
                        if(row1['undergraduate']=='1'):
                            print('You might want to look into taking classes to further your education')
                        if(int(row1['weeklyearnings'])<4000):
                            print('Perhaps you need to speak with management for a raise or look for a new job')
                    if(row['physical']=='1'):
                        print("\nPhysical:")
                        print("--------")
                        if(row1['physicalhandicap']=='1'):
                            print('Please consult your physician for exercise program. We can suggest one for you')
                    if(row['relational']=='1'):
                        print("\nRelational:")
                        print("-----------")
                        print('We will put you in touch with a counseller soon.')
                    if(row['financial']=='1'):
                        print("\nFinancial:")
                        print("----------")
                        if(row1['homeloans']!='1'):
                            print('We will find an expert financial adviser for you.')
                        
                    if(row['spiritual']=='1'):
                        print("\nSpiritual:")
                        print("---------")
                        print("Be grateful for everything you have")

                    if(row['emotional']=='1'):
                        print("\nEmotional:")
                        print("----------")
                        if(row1['cacna1c']!='1'):
                            print('You are at risk for mental health issues.')
                        if(int(row1['opioidriskscore']) < 0.3):
                            print(row['name'] + ' has a low risk score for opioids')
                        
                    if(row['dontknow']=='1'):
                        print("    ?")    

                    



