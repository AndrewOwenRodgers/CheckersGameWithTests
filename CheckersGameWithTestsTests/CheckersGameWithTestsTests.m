//
//  CheckersGameWithTestsTests.m
//  CheckersGameWithTestsTests
//
//  Created by Andrew Rodgers on 2/19/14.
//  Copyright (c) 2014 Andrew Rodgers. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "CheckerCell.h"
#import "Board.h"
#import "BoardPiece.h"
#import "Player.h"
#import "Constants.h"

@interface CheckersGameWithTestsTests : XCTestCase

@property (strong, nonatomic) Board *board;

@end

@implementation CheckersGameWithTestsTests

- (void)setUp
{
    [super setUp];
	self.board = [[Board alloc] init];
}

- (void)tearDown
{
    [super tearDown];
}

- (void)testExample
{
    XCTFail(@"No implementation for \"%s\"", __PRETTY_FUNCTION__);
}

-(void)testBoard
{
	XCTAssertTrue(self.board.columnsOfRows.count == 8, @"Board does not have eight columns");
	for (NSArray *column in self.board.columnsOfRows)
	{
		XCTAssertTrue(column.count == 8, @"Column does not have eight rows");
	}
	
}

-(void)testInitialBoardPeices{
	for (NSArray *column in self.board.columnsOfRows)
	{
		for (CheckerCell *cell in column)
		{
			if(cell.isWhite){
				XCTAssertNil(cell.piece, @"White cells should not have peices");
			}
			else{
				// This is checking all black cells.
				
				
				if([self.board.columnsOfRows indexOfObject:cell] < 3){
					XCTAssertEqual(cell.piece.color, RED_PIECE,@"Pieces on top should be red");
				} else if ([self.board.columnsOfRows indexOfObject:cell] < 5) {
					XCTAssertNil(cell.piece, @"Cells in the middle should be empty");
				} else if ([self.board.columnsOfRows indexOfObject:cell] < 8){
					XCTAssertEqual(cell.piece.color, BLACK_PIECE,@"Pieces on bottom should be black");
				}
			}
		}
	}
}

-(void) testTurns
{
	XCTAssertNotNil(self.board.currentPlayer, @"First player is nil");
	
	Player *firstPlayer = self.board.currentPlayer;
	[self.board switchPlayers];
	XCTAssertNotEqual(self.board.currentPlayer, firstPlayer, @"player after turn is the same");
	
}

-(void) testMove
{	
//	[self.board movePieceFromCell:<#(CheckerCell *)#> toCell:<#(CheckerCell *)#>
//	XCTAssertNil(cell.piece, @"White cells should not have peices");
}

@end
