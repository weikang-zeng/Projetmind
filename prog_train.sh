#OAR -n Project_MInd
#OAR -l /nodes=2/core=16,walltime=00:08:00
#OAR --stdout PMind.out
#OAR --stderr PMind.err
#OAR --project pr-mind

java -jar -nog EvoAgentZENG.jar ./Minds/T7/Tasks/learningTasks/learnAvoid.simbatch