pragma solidity ^0.5.0;

contract TodoList{
 uint public taskcount = 0;

 struct Task{
  uint id;
  string content;
  bool checked;
 }

 mapping (uint => Task) public tasks;

 constructor() public{
  createTask("Check out dappuniversity.com");
 }

 function createTask(string memory _content) public {
  taskcount ++;
  tasks[taskcount] = Task(taskcount, _content, false);
 }

}

