// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.0;


contract Storage {

    uint256 number;

    function store(uint256 nums) public {
        number = nums;
    }


    function retrieve() public view returns (uint256){
        return number;
    }
}