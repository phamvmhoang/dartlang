void main(){
  PowerGrid powerGrid = PowerGrid();

  NuclearPlan nuclearPlan = NuclearPlan();
  SolarPlan solarPlan = SolarPlan();


  powerGrid.addPlan(nuclearPlan);
  powerGrid.addPlan(solarPlan);

}

class PowerGrid {

  List<PowerPlan> connectedPlans = [];

  addPlan (PowerPlan plan){
    plan.turnOn();
    connectedPlans.add(plan);
  }

}

abstract class PowerPlan {
  void turnOn();
}


class NuclearPlan implements PowerPlan {

  void turnOn(){
    print('Nuclear plan has been turn on .....');
  }
}

class SolarPlan implements PowerPlan {

  void turnOn(){
    print('Solar plan has been turn on .....');
  }
}