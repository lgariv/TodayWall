@interface SBHomeScreenTodayViewController : UIViewController
@end

@interface NSUserDefaults (fix)
- (NSDictionary<NSString *,id> *)persistentDomainForName:(NSString *)domainName;
@end

NSData* data;
UIImage* bgImage;
UIImageView *newWallpaper;

%hook SBHomeScreenTodayViewController
-(void)viewWillAppear:(BOOL)arg1 {
	%orig;
	data = [[[NSUserDefaults standardUserDefaults] persistentDomainForName:@"com.miwix.todaywallprefs"] objectForKey:@"backgroundImage"];
	bgImage = [UIImage imageWithData:data];
	newWallpaper = [[UIImageView alloc] initWithImage:bgImage];
	newWallpaper.frame = self.view.frame;
	[self.view addSubview:newWallpaper];
	[self.view sendSubviewToBack:newWallpaper];
}
-(void)viewDidDisappear:(BOOL)arg1 {
	%orig;
	
}
%end