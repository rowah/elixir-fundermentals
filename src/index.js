import React, { Component } from "react";
import ReactDOM from "react-dom/client";
import "./index.css";

//three React Components Square, Board, Game

//Renders a single button
// class Square extends React.Component {
//   render() {
//     return (
//       <button className="square" onClick={() => this.props.onClick()}>
//         {this.props.value}
//       </button>
//     );
//   }
// }

//replaces the Square class with a function component
function Square(props) {
  return (
    <button className="square" onClick={props.onClick}>
      {props.value}
    </button>
  );
}

//renders 9 squares
class Board extends React.Component {
  // declares the shared state of each square in the parent board component
  constructor(props) {
    super(props);
    this.state = {
      //board's initail state now contains 9 squares with value of null
      squares: Array(9).fill(null),
      xIsNext: true,
    };
  }
  //adds the handleClick() function to the board class
  handleClick(i) {
    const squares = this.state.squares.slice();
    squares[i] = this.state.xIsNext ? "X" : "O";
    this.setState({ squares: squares, xIsNext: !this.state.xIsNext });
  }
  //modifies the method to instruct each square about its current state either "O", "X", or null
  renderSquare(i) {
    return (
      <Square
        value={this.state.squares[i]}
        //passes a function from the board which the Square calls on each click
        onClick={() => this.handleClick(i)}
      />
    );
  }

  render() {
    const winner = calculateWinner(this.state.squares);
    let status;
    if (winner) {
      status = "Winner: " + winner;
    } else {
      status = "Next player: " + (this.state.xIsNext ? "X" : "O");
    }

    return (
      <div>
        <div className="status">{status}</div>
        <div className="board-row">
          {this.renderSquare(0)}
          {this.renderSquare(1)}
          {this.renderSquare(2)}
        </div>
        <div className="board-row">
          {this.renderSquare(3)}
          {this.renderSquare(4)}
          {this.renderSquare(5)}
        </div>
        <div className="board-row">
          {this.renderSquare(6)}
          {this.renderSquare(7)}
          {this.renderSquare(8)}
        </div>
      </div>
    );
  }
}

//renders a board
class Game extends React.Component {
  render() {
    return (
      // renders an outer div
      <div className="game">
        {/* renders the second largest div */}
        <div className="game-board">
          {/* class Board then gets called which then calls Square class 9 times thus rendering 9 clickable squares */}
          <Board />
        </div>
        {/* renders the div next to the game */}
        <div className="game-info">
          <div>{/* status */}</div>
          <ol>{/* TODO */}</ol>
        </div>
      </div>
    );
  }
}

//helper function
function calculateWinner(squares) {
  const lines = [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8],
    [0, 3, 6],
    [1, 4, 7],
    [2, 5, 8],
    [0, 4, 8],
    [2, 4, 6],
  ];
  for (let i = 0; i < lines.length; i++) {
    const [a, b, c] = lines[i];
    if (squares[a] && squares[a] === squares[b] && squares[a] === squares[c]) {
      return squares[a];
    }
  }
  return null;
}

// ========================================

//renders the game inside the div in the html
const root = ReactDOM.createRoot(document.getElementById("root"));
root.render(<Game />);
