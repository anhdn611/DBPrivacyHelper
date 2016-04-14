//
//  DBPrivateActionCell.m
//  DBPrivacyHelperExample
//
//  Created by Dao Ngoc Anh on 4/14/16.
//  Copyright © 2016 iBo. All rights reserved.
//

#import "DBPrivateActionCell.h"
#import "UIViewController+DBPrivacyHelper.h"

NSString *const kDBPrivateActionCellIdentifier = @"kDBPrivateActionCellIdentifier";
NSString *const kDBPrivateActionOpenSettings = @"settings";

@implementation DBPrivateActionCell{
    UILabel *_cellLabel;
}

- (instancetype) initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.backgroundColor = [UIColor clearColor];
        self.contentView.backgroundColor = [UIColor clearColor];
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        
        _cellLabel = [[UILabel alloc] init];
        _cellLabel.translatesAutoresizingMaskIntoConstraints = NO;
        _cellLabel.backgroundColor = [UIColor darkGrayColor];
        _cellLabel.font = [UIFont boldSystemFontOfSize:14.0];
        _cellLabel.textColor = [UIColor whiteColor];
        _cellLabel.textAlignment = NSTextAlignmentCenter;
        _cellLabel.numberOfLines = 0;
        _cellLabel.lineBreakMode = NSLineBreakByWordWrapping;
        _cellLabel.layer.cornerRadius = 25;
        _cellLabel.clipsToBounds = YES;
        [self.contentView addSubview:_cellLabel];
        
        NSDictionary *views = NSDictionaryOfVariableBindings(_cellLabel);
        
        [self.contentView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-40-[_cellLabel]-40-|" options:0 metrics:nil views:views]];
        [self.contentView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-0-[_cellLabel]-0-|"
                                                                                 options:0 metrics:nil views:views]];
    
    }
    return self;
}

- (void)setActionText:(NSString *)text {
    if (text == kDBPrivateActionOpenSettings) {
        _cellLabel.text = [@"Open device settings" dbph_LocalizedString];
    } 
}

@end
