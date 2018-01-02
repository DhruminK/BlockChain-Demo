# Blockchain Demo

A basic Implementation of IDMS using ethereum blockchain

### Installation

This Project requires [Node.js](https://nodejs.org/) to run.

Install the dependencies and devDependencies and start the server.

```sh
$ cd blockchain-demo
$ npm install
```

To run the project
```sh
$ npm run dev
```

Above script will open a console for truffle, then
```sh
truffle(develop)> IDMS.new().then(res => sc = res)
truffle(develop)> sc.addStudent(1, 'abc', '6.5')
truffle(develop)> sc.getStudent.call(1)
[ 'abc', '6.5' ]
```
