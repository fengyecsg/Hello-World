//
//  BezierPathView.m
//  UIBezierPath160105
//
//  Created by chang on 16/1/5.
//  Copyright © 2016年 chang. All rights reserved.
//

#import "BezierPathView.h"

@implementation BezierPathView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
 */
- (void)drawRect:(CGRect)rect {
    // Drawing code
   
    UIBezierPath *path = [UIBezierPath bezierPath];
    [path addArcWithCenter:self.center radius:100.0 startAngle:(M_PI* 0/180) endAngle:(M_PI* 360/180) clockwise:YES];
    //设置描边色
//    [[UIColor blueColor] setStroke];
//   // 设置填充色
//    [[UIColor redColor] setFill];
//    path.lineWidth = 40;
//    path.lineCapStyle = kCGLineCapRound;
////    path.lineJoinStyle = kCGLineJoinMiter;
//    [path stroke];
//    [path fill];

    UIImageView *imageV = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 240, 240)];
    imageV.center = self.center;
    imageV.image = [UIImage imageNamed:@"0"];
    imageV.layer.cornerRadius = 120;
    imageV.layer.masksToBounds = YES;
    [self addSubview:imageV];
    
    CAShapeLayer *shapeLayer = [CAShapeLayer layer];
    shapeLayer.path = path.CGPath;
    shapeLayer.lineWidth = 120;
    shapeLayer.fillColor = [UIColor redColor].CGColor;
    
    shapeLayer.frame = self.frame;
    shapeLayer.masksToBounds = YES;
    UIImage *newImage = [self imageByScalingToSize:shapeLayer.bounds.size Image:[UIImage imageNamed:@"0"]];
    shapeLayer.strokeColor = [UIColor colorWithPatternImage:newImage].CGColor;
    shapeLayer.strokeStart = 0;
    shapeLayer.strokeEnd = 0.75;
    [self.layer addSublayer:shapeLayer];
    
    
    
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"strokeEnd"];
    animation.fromValue = [NSNumber numberWithFloat:0];
    animation.toValue = [NSNumber numberWithFloat:0.75];
    animation.duration = 5;
    [imageV.layer addAnimation:animation forKey:@"strokeEndAnimation"];
    
}
- (UIImage *)imageByScalingToSize:(CGSize)targetSize Image:(UIImage *)oldImage
{
    UIImage *sourceImage = oldImage;
    UIImage *newImage = nil;
    CGSize imageSize = sourceImage.size;
    CGFloat width = imageSize.width;
    CGFloat height = imageSize.height;
    CGFloat targetWidth = targetSize.width;
    CGFloat targetHeight = targetSize.height;
    CGFloat scaleFactor = 0.0;
    CGFloat scaledWidth = targetWidth;
    CGFloat scaledHeight = targetHeight;
    CGPoint thumbnailPoint = CGPointMake(0.0,0.0);
    if (CGSizeEqualToSize(imageSize, targetSize) ==NO) {
        CGFloat widthFactor = targetWidth / width;
        CGFloat heightFactor = targetHeight / height;
        if (widthFactor < heightFactor)
            scaleFactor = widthFactor;
        else
            scaleFactor = heightFactor;
        scaledWidth  = width * scaleFactor;
        scaledHeight = height * scaleFactor;
        // center the image
        if (widthFactor < heightFactor) {
            
            thumbnailPoint.y = (targetHeight - scaledHeight) * 0.5;
        } else if (widthFactor > heightFactor) {
            thumbnailPoint.x = (targetWidth - scaledWidth) * 0.5;
        }
    }
    // this is actually the interesting part:
    UIGraphicsBeginImageContext(targetSize);
    CGRect thumbnailRect = CGRectZero;
    thumbnailRect.origin = thumbnailPoint;
    thumbnailRect.size.width  = scaledWidth;
    thumbnailRect.size.height = scaledHeight;
    [sourceImage drawInRect:thumbnailRect];
    newImage =UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    if(newImage == nil)
        NSLog(@"could not scale image");
    return newImage ;
}
- (void)bezierpath
{
    UIBezierPath *path = [UIBezierPath bezierPath];
    //    [path moveToPoint:CGPointMake(100, 100)];
    //    [path addLineToPoint:CGPointMake(100, 300)];
    float jiaodu = 360/180.0;
    for (int i = 0; i < 180; i++) {
        if (i % 2 == 0) {
            continue;
        }
        UIBezierPath *temppath = [UIBezierPath bezierPath];
        [temppath addArcWithCenter:self.center radius:100.0 startAngle:(M_PI* (i*jiaodu)/180) endAngle:(M_PI* (i*jiaodu+jiaodu)/180) clockwise:YES];
        [path appendPath:temppath];
        //        [temppath closePath];
    }
    //    [path closePath];
    
//     设置描边色
//        [[UIColor blueColor] setStroke];
//     设置填充色
//        [[UIColor redColor] setFill];
//        path.lineWidth = self.bounds.size.width/2.0;
//        path.lineCapStyle = kCGLineCapSquare;
//        path.lineJoinStyle = kCGLineJoinMiter;
//        [path stroke];
//        [path fill];
    
    
    CAShapeLayer *shapeLayer = [CAShapeLayer layer];
    shapeLayer.path = path.CGPath;
    shapeLayer.lineWidth = 100;
    //    shapeLayer.fillColor = [UIColor redColor].CGColor;
    
    shapeLayer.frame = self.frame;
    shapeLayer.strokeColor = [UIColor purpleColor].CGColor;
    shapeLayer.strokeStart = 0;
    shapeLayer.strokeEnd = 1;
    [self.layer addSublayer:shapeLayer];
    
    CAShapeLayer *progressLayer = [CAShapeLayer layer];
    progressLayer.path = path.CGPath;
    progressLayer.lineWidth = 100;
    //    shapeLayer.fillColor = [UIColor redColor].CGColor;
    
    progressLayer.frame = self.frame;
    progressLayer.strokeColor = [UIColor whiteColor].CGColor;
    progressLayer.strokeStart = 0;
    progressLayer.strokeEnd = 0.75;
    
    [self.layer addSublayer:progressLayer];
    
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"strokeEnd"];
    animation.fromValue = [NSNumber numberWithFloat:0];
    animation.toValue = [NSNumber numberWithFloat:0.75];
    animation.duration = 5;
    [progressLayer addAnimation:animation forKey:@"strokeEndAnimation"];

}

@end
