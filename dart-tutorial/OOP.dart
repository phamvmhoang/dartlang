void main() {
  
  var desk = Desk();
  //desk.shuffle();
  /* print(desk.cardsWithSuit('Diamond'));
  print(desk.cards.length); */

  /* print(desk);
  print(desk.deal(5));
  print(desk); */

  //desk.removeCard('Diamond', 'Ace');
  print(desk);

}

class Desk {

  List<Card> cards = [];

  Desk () {
    var ranks = ['Ace', 'Two', 'Three', 'Four', 'Five'];
    var suits = ['Diamond', 'Hearts','Clubs', 'Spades'];

    for (var suit in suits) {
      for (var rank in ranks) {
        // var card = new Card(suit, rank);
        var card = new Card(
          rank:rank,
          suit:suit
        );
        cards.add(card);
      }  
    }

  }

  shuffle(){
    cards.shuffle();
  }

  cardsWithSuit(String suit){
    return cards.where((card) => card.suit == suit);

    /* return cards.where((card){
      return card.suit == suit;
    }); */
  }

  deal(int handSize) {
    var hand = cards.sublist(0, handSize);
    cards = cards.sublist(handSize);
    return hand;
  }

  removeCard(String suit, String rank){
    cards.removeWhere((card) => card.suit == suit && card.rank == rank);
  }

  @override
    String toString() {
      // TODO: implement toString
      return cards.toString();
    }
}

class Card {

  String suit;
  String rank;

  Card({this.suit, this.rank});

  @override
    String toString() {
      // TODO: implement toString
      return '$rank of $suit';
    }

}