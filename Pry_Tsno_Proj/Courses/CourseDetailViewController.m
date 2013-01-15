//
//  CourseDetailViewController.m
//  Vinorama2
//
//  Created by Paul on 15/01/13.
//  Copyright (c) 2013 Paul. All rights reserved.
//

#import "CourseDetailViewController.h"

@interface CourseDetailViewController ()

@end

@implementation CourseDetailViewController

@synthesize nameLabel = _nameLabel;
@synthesize dateLabel = _dateLabel;
@synthesize description = _description;
@synthesize course = _course;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil course:(Course*)currentCourse
{
    self = [self initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    _course = currentCourse;
    self.title=_course.name;
    [self fillInfo];
    return self;
}

-(void) fillInfo{
    _nameLabel.text = _course.name;
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc]init];
    [dateFormatter setDateFormat:@"dd/MM/yyyy"];
	NSString *dateString = [dateFormatter stringFromDate:course.date];
    _dateLabel.text = [NSString stringWithFormat:@"%@", dateString];
    _description.text = _course.description;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    _nameLabel.text = _course.name;
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc]init];
    [dateFormatter setDateFormat:@"dd/MM/yyyy"];
	NSString *dateString = [dateFormatter stringFromDate:_course.date];
    _dateLabel.text = [NSString stringWithFormat:@"%@", dateString];
    NSLog(@"before descr");
    NSLog(_course.description);
    
    NSLog(@"after descr");
    if(_course.description==nil){
        
        NSLog(@"nill descrp");
    }
    _description.text = _course.description;

    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
