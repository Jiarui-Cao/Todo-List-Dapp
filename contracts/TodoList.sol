// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.5.0;

contract TodoList {
    uint public task_count = 0;

    struct Task {
        uint id;
        string content;
        bool completed;
    }

    mapping(uint => Task) public tasks;  

    constructor() public {
        create_task("Build a Web 3.0 Piazza");
    }

    function create_task(string memory _content) public {
        task_count ++;
        tasks[task_count] = Task(task_count, _content, false);
    }
}