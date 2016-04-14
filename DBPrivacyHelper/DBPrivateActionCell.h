//
//  DBPrivateActionCell.h
//  DBPrivacyHelperExample
//
//  Created by Dao Ngoc Anh on 4/14/16.
//  Copyright © 2016 iBo. All rights reserved.
//

#import <UIKit/UIKit.h>

extern NSString *const kDBPrivateActionCellIdentifier;
extern NSString *const kDBPrivateActionOpenSettings;

@interface DBPrivateActionCell : UITableViewCell

- (void)setActionText:(NSString *)text;

@end
