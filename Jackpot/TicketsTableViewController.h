//
//  TicketsTableViewController.h
//  Jackpot
//
//  Created by Komari Herring on 7/26/16.
//  Copyright © 2016 The Iron Yard. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Ticket.h"


@protocol WinningTicketDelegate

- (void)winningTicketWasChosen:(Ticket *)winTicket; // goes in this header cause it will receive data
// The .m file must implement this function


@end

@interface TicketsTableViewController : UITableViewController

@property (strong, nonatomic) NSArray * tempArray;

@end
