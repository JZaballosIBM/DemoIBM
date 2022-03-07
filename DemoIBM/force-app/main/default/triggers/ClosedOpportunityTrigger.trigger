trigger ClosedOpportunityTrigger on Opportunity (before insert, before update) {
    
    List<Task> lTask = new List<Task>();
    
    for (Opportunity opp : Trigger.new){
        if (opp.StageName == 'Closed Won'){
            Task t = new Task(Subject='Follow Up Test Task', WhatId = opp.Id);
            lTask.add(t);
        }
    }
    
    insert lTask;
}