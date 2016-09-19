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

- (void)winningTicketWasChosen:(Ticket *)winTicket; 


@end

@interface TicketsTableViewController : UITableViewController

@property (strong, nonatomic) NSArray * tempArray;

@end
