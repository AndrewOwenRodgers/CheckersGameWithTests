//
//  BoardPiece.h
//  CheckersGameWithTests
//
//  Created by Andrew Rodgers on 2/19/14.
//  Copyright (c) 2014 Andrew Rodgers. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BoardPiece : NSObject

@property (nonatomic) NSString *color;
@property (nonatomic) BOOL isKinged;
@property (nonatomic) NSInteger row;
@property (nonatomic) NSInteger column;

- (BoardPiece *) initInColumn:(NSInteger) column andRow:(NSInteger) row;
@end
