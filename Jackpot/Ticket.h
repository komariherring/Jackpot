//
//  Ticket.h
//  Jackpot
//
//  Created by Komari Herring on 7/26/16.
//  Copyright © 2016 The Iron Yard. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Ticket : NSObject

@property (strong, nonatomic) NSMutableArray *ticketDigitsArray;

@property (strong, nonatomic) NSString *ticketAs6Digits;
@property (strong, nonatomic) NSString *prizeMoney;
@property (assign) NSNumber *numberOfMatchingDigits;
@property BOOL winner;


@property (strong, nonatomic) NSArray *winningTicketArray;


-(NSString*)generateLotteryTicketNumbers;

// ******* method declared her to make visible to other files********

-(void)checkForWinningNumbers:(NSArray*)winningTicketArrayToCheck;

@end
