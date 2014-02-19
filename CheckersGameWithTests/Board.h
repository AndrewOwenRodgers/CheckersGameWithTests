//
//  Board.h
//  CheckersGameWithTests
//
//  Created by Andrew Rodgers on 2/19/14.
//  Copyright (c) 2014 Andrew Rodgers. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"
#import "BoardPiece.h"
#import "CheckerCell.h"

@interface Board : NSObject

@property (strong, nonatomic) NSArray *columnsOfRows;
@property (strong, nonatomic) NSMutableArray* activePeices;
@property (strong, nonatomic) Player *player1;
@property (strong, nonatomic) Player *player2;
@property (weak, nonatomic) Player *currentPlayer;

- (void)switchPlayers;

-(void)movePieceFromCell: (CheckerCell *) fromCell toCell:(CheckerCell *) toCell;

@end
