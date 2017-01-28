pragma solidity ^0.4.8;

contract MyContract {

    function sumtail(uint n, uint acc) constant returns(uint) {
        return n == 1 ? acc + 1 :
          sumtail(n - 1, acc + n);
    }

    function sum(uint n) constant returns(uint) {
        return sumtail(n, 0);
    }
}
