#OAR -n Project_MInd
#OAR -l /core=16,walltime=00:05:30
#OAR --stdout PMind.out
#OAR --stderr PMind.err
#OAR --project pr-mind 
#OAR -t devel
source /applis/site/guix-start.sh
java -version
java -jar EvoAgentZENG.jar -nog ./Minds/T7/Tasks/learningTasks/learnAvoid.simbatch
