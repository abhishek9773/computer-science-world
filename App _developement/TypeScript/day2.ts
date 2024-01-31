class Department {
  name: String;

  constructor(name: String) {
    this.name = name;
  }
  describe() {
    console.log(this.name);
  }
}

let depertement = new Department("it depertment");
depertement.describe();
console.log(depertement);

let departmentCopy = {describe : depertement.describe}
