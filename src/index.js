import React from "react";
import ReactDOM from "react-dom/client";
import "./index.css";

//three React Components Square, Board, Game

//Renders a single button
class Square extends React.Component {
  render() {
    return (
      <button
        className="square"
        onClick={function () {
          console.log("Clicked");
        }}
      >
        {this.props.value}
      </button>
    );
  }
}

//renders 9 squares
class Board extends React.Component {
  renderSquare(i) {
    return <Square value={i} />;
  }

  render() {
    const status = "Next player: X";

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

// ========================================

//renders the game inside the div in the html
const root = ReactDOM.createRoot(document.getElementById("root"));
root.render(<Game />);
