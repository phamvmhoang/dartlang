void main(){
  PowerGrid powerGrid = PowerGrid();

  NuclearPlan nuclearPlan = NuclearPlan();
  SolarPlan solarPlan = SolarPlan();


  powerGrid.addPlan(nuclearPlan);
  powerGrid.addPlan(solarPlan);

}

class PowerGrid<T extends PowerPlan> {

  List<T> connectedPlans = [];

  addPlan (T plan){
    plan.turnOn('5 minutes');
    connectedPlans.add(plan);
  }

}

abstract class PowerPlan {
  int timeOn;
  bool turnOn(String duration);
}


class NuclearPlan implements PowerPlan {

  bool turnOn(String duration){
    print('Nuclear plan has been turn on in : $duration .....');
    return true;
  }

  get timeOn {
    return timeOn;
  }

  set timeOn(int val){
    timeOn = val;
  }
}

class SolarPlan implements PowerPlan {

  bool turnOn(String duration){
    print('Solar plan has been turn on in : $duration .....');
    return true;
  }

  get timeOn {
    return timeOn;
  }

  set timeOn(int val){
    timeOn = val;
  }
}