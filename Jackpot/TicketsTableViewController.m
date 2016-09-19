//
//  TicketsTableViewController.m
//  Jackpot
//
//  Created by Komari Herring on 7/26/16.
//  Copyright © 2016 The Iron Yard. All rights reserved.
//

#import "TicketsTableViewController.h"
#import "WinningTicketViewController.h"

@interface TicketsTableViewController () <WinningTicketDelegate>

{
    // instance variable
    Ticket *winningTicket;
}



@property (strong, nonatomic) NSMutableArray *lotteryTicketsGeneratedArray;



@end

@implementation TicketsTableViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.tempArray = [[NSArray alloc] init];
    
    self.lotteryTicketsGeneratedArray = [[NSMutableArray alloc] init];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Action Handlers

- (IBAction)addTicketTapped:(UIBarButtonItem *)sender
{
    Ticket *aTicket = [[Ticket alloc] init];
    
    // Adds randomly gererated tickets to the array of Ticket objects
    
    [self.lotteryTicketsGeneratedArray addObject:aTicket];
    
//refresh
    
    [self.tableView reloadData];
    
}



#pragma mark - Table view data source ********* Normal stuff for tableViews...

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    return self.lotteryTicketsGeneratedArray.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"TicketCell" forIndexPath:indexPath];
    
    // Configure the cell...
    Ticket *aTicket = self.lotteryTicketsGeneratedArray[indexPath.row];
    
    cell.textLabel.text = aTicket.ticketAs6Digits;
    cell.detailTextLabel.text = aTicket.prizeMoney;
    
   //changes color of background
    if (aTicket.winner)
    {
        cell.backgroundColor = [UIColor greenColor];
    }
    else
    {
        cell.backgroundColor = [UIColor clearColor];
    }
    
    return cell;
}


#pragma mark - WinningTicketDelegate


- (void)winningTicketWasChosen:(Ticket *)winTicket
{
    
    winningTicket = winTicket;
    for (Ticket *ticket in self.lotteryTicketsGeneratedArray)
    {
        [ticket checkForWinningNumbers:winningTicket.winningTicketArray];
    }
    
    [self.tableView reloadData];
}




#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"CheckTicketSegue"])
    {
        WinningTicketViewController *winTicketVC = [segue destinationViewController];
        winTicketVC.delegate = self;
    }
}





@end
