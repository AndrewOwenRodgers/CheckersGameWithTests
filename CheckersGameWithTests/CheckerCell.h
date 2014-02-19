//
//  CheckerCell.h
//  CheckersGameWithTests
//
//  Created by Andrew Rodgers on 2/19/14.
//  Copyright (c) 2014 Andrew Rodgers. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BoardPiece.h"

@interface CheckerCell : NSObject

@property (strong, nonatomic) BoardPiece *piece;
@property (nonatomic) BOOL isWhite;
@property (nonatomic) NSInteger row;
@property (nonatomic) NSInteger column;

- (CheckerCell *) initWithColumn:(NSInteger) column andRow: (NSInteger) andRow;

@end
