//
//  RegisterViewController.h
//  kaohe
//
//  Created by 蒲悦蓉 on 2019/8/6.
//  Copyright © 2019 蒲悦蓉. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@protocol RegisterViewControllerDelegate <NSObject>
-(void)pushNameText:(NSString*)nameText;
-(void)pushPsdText:(NSString*)psdText;
@end

@interface RegisterViewController : UIViewController
<UITextFieldDelegate>
@property id<RegisterViewControllerDelegate> delegate;
@property UITextField *nameTextFiled;
@property UITextField *padTextFiled;
@end

NS_ASSUME_NONNULL_END
