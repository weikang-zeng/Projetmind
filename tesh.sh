#OAR -n Project_PMind
#OAR --stderr PMind.err
#OAR --stdout PMind.out
#OAR -l /core=16,walltime=08:00:00
#OAR --project pr-mind

source /applis/site/guix-start.sh
java -version
java -jar EvoAgentZENG.jar -nog ./Minds/T7/Tasks/learningTasks/learnGTO_NoObs.simbatch
