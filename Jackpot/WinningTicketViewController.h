//
//  ViewController.h
//  Jackpot
//
//  Created by Komari Herring on 7/26/16.
//  Copyright © 2016 The Iron Yard. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TicketsTableViewController.h"
#import "Ticket.h"

@interface WinningTicketViewController : UIViewController

@property (strong, nonatomic) id<WinningTicketDelegate> delegate; // required for using the delegate

@property (strong, nonatomic) NSMutableArray *winningNumbersArray2;

@property (strong, nonatomic) Ticket *possibleWinningTicket;


@end

