//
//  Business2JumpHandle.m
//  ChieryBusiness2
//
//  Created by chiery on 2018/1/9.
//  Copyright © 2018年 com.chiery.com. All rights reserved.
//

#import "Business2JumpHandle.h"
#import "ChieryBusiness2.h"
#import "ChieryVCController.h"
#import "ChieryJumpHandle.h"

@implementation Business2JumpHandle

+ (BOOL)jumpHandleOpenURL:(NSURL *)url
              withUrlData:(NSDictionary *)urlData
             responseDelg:(id<ChieryJumpHandleResponsePrt>)responseDelg
                 userInfo:(id)userInfo {
    
    // url query和urlData合并
    //    NSMutableDictionary * dictionaryParameter = [NSMutableDictionary dictionaryWithDictionary:[[url query] dictionaryFromQueryComponents]];
    //
    //    if (urlData != nil && urlData.count > 0)
    //    {
    //        [dictionaryParameter addEntriesFromDictionary:urlData];
    //    }
    
    NSString *searchType = [url relativePath];
    
    // 跳转酒店首页
    if ([searchType isEqualToString:@"/homePage"])
    {
        ChieryBusiness2 *business2 = [ChieryBusiness2 new];
        [[ChieryVCController getInstance].navigationController pushViewController:business2 animated:YES];
        
        return YES;
    }
    
    if ([searchType isEqualToString:@"/fetchData"]) {
        
#ifdef DEBUG
        NSDictionary *dict = @{@"Debug":@YES, @"key":@"3",@"key2":@"hello world"};
#else
        NSDictionary *dict = @{@"Release":@YES, @"key":@"3",@"key2":@"hello world"};
#endif
        
        [ChieryJumpHandle jumpHandleResponse:responseDelg responseData:dict withOpenURL:url urlData:urlData userInfo:userInfo];
        return YES;
    }
    
    return NO;
}

@end
