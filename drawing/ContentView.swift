//
//  ContentView.swift
//  drawing
//
//  Created by Kumo on 2019/9/19.
//  Copyright © 2019 Kumo. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Group{
                //頭
                Path(ellipseIn: CGRect(x: 81, y: 71, width: 240, height: 219))
                    .fill(Color(red: 170/255, green: 103/255, blue: 77/255))
                //皮膚色部分
                Path(ellipseIn: CGRect(x: 176, y: 180, width: 54, height: 65))
                    .fill(Color(red: 254/255, green: 213/255, blue: 180/255))
                //眼
                Path(ellipseIn: CGRect(x: 172, y: 158, width: 20, height: 20))
                Path(ellipseIn: CGRect(x: 212, y: 158, width: 20, height: 20))
                //左耳
                Path { (path) in
                    path.move(to: CGPoint(x: 175, y: 74))
                    path.addQuadCurve(to: CGPoint(x: 148, y: 50), control: CGPoint(x: 166, y: 50))
                    path.addQuadCurve(to: CGPoint(x: 117, y: 70), control: CGPoint(x: 129, y: 47))
                    path.addQuadCurve(to: CGPoint(x: 118, y: 102), control: CGPoint(x: 113, y: 88))
                }
                .fill(Color(red: 170/255, green: 103/255, blue: 77/255))
                Path { (path) in
                    path.move(to: CGPoint(x: 167, y: 74))
                    path.addQuadCurve(to: CGPoint(x: 142, y: 56), control: CGPoint(x: 160, y: 53))
                    path.addQuadCurve(to: CGPoint(x: 123, y: 77), control: CGPoint(x: 123, y: 65))
                    path.addQuadCurve(to: CGPoint(x: 125, y: 99), control: CGPoint(x: 120, y: 90))
                }
                .fill(Color(red: 125/255, green: 73/255, blue: 51/255))
                //右耳
                Path { (path) in
                    path.move(to: CGPoint(x: 242, y: 78))
                    path.addQuadCurve(to: CGPoint(x: 273, y: 54), control: CGPoint(x: 250, y: 50))
                    path.addQuadCurve(to: CGPoint(x: 295, y: 68), control: CGPoint(x: 288, y: 53))
                    path.addQuadCurve(to: CGPoint(x: 297, y: 114), control: CGPoint(x: 303, y: 80))
                }
                .fill(Color(red: 170/255, green: 103/255, blue: 77/255))
                Path { (path) in
                    path.move(to: CGPoint(x: 246, y: 83))
                    path.addQuadCurve(to: CGPoint(x: 280, y: 60), control: CGPoint(x: 250, y: 60))
                    path.addQuadCurve(to: CGPoint(x: 290, y: 69), control: CGPoint(x: 288, y: 64))
                    path.addQuadCurve(to: CGPoint(x: 285, y: 110), control: CGPoint(x: 300, y: 85))
                }
                .fill(Color(red: 125/255, green: 73/255, blue: 51/255))
            }
            Group{
                //鼻
                Path { (path) in
                    path.move(to: CGPoint(x: 202, y: 204))
                    path.addQuadCurve(to: CGPoint(x: 202, y: 188), control: CGPoint(x: 182, y: 191))
                    path.addQuadCurve(to: CGPoint(x: 202, y: 204), control: CGPoint(x: 226, y: 191))
                }
                //嘴巴三部分
                Path(CGRect(x: 200, y: 200, width: 5, height: 16))
                Path { (path) in
                    path.move(to: CGPoint(x: 196, y: 232))
                    path.addLine(to: CGPoint(x: 203, y: 212))
                    path.addLine(to: CGPoint(x: 212, y: 226))
                }
                .stroke(lineWidth: 5)
                //左手
                Path { (path) in
                    path.move(to: CGPoint(x: 147, y: 278))
                    path.addLine(to: CGPoint(x: 141, y: 275))
                    path.addQuadCurve(to: CGPoint(x: 124, y: 386), control: CGPoint(x: 68, y: 374))
                }
                .fill(Color(red: 170/255, green: 103/255, blue: 77/255))
                //衣服
                Path { (path) in
                    path.move(to: CGPoint(x: 147, y: 280))
                    path.addLine(to: CGPoint(x: 124, y: 386))
                    path.addQuadCurve(to: CGPoint(x: 290, y: 386), control: CGPoint(x: 200, y: 400))
                    path.addLine(to: CGPoint(x: 267, y: 274))
                    path.addQuadCurve(to: CGPoint(x: 227, y: 288), control: CGPoint(x: 250, y: 278))
                    path.addQuadCurve(to: CGPoint(x: 187, y: 288), control: CGPoint(x: 207, y: 318))
                    path.closeSubpath()
                }
                .stroke(Color.orange,lineWidth: 5)
                //右手
                Path { (path) in
                    path.move(to: CGPoint(x: 267, y: 270))
                    path.addLine(to: CGPoint(x: 273, y: 270))
                    path.addQuadCurve(to: CGPoint(x: 290, y: 386), control: CGPoint(x: 346, y: 374))
                }
                .fill(Color(red: 170/255, green: 103/255, blue: 77/255))
                //黃區
                Path { (path) in
                    path.move(to: CGPoint(x: 172, y: 288))
                    path.addLine(to: CGPoint(x: 160, y: 284))
                    path.addLine(to: CGPoint(x: 138, y: 330))
                    path.addLine(to: CGPoint(x: 124, y: 386))
                    path.addQuadCurve(to: CGPoint(x: 290, y: 386), control: CGPoint(x: 200, y: 400))
                    path.addLine(to: CGPoint(x: 276, y: 330))
                    path.addLine(to: CGPoint(x: 254, y: 280))
                    path.addLine(to: CGPoint(x: 242, y: 284))
                    path.addQuadCurve(to: CGPoint(x: 174, y:288 ), control: CGPoint(x: 210, y: 348))
                }
                .fill(Color(red: 244/255, green: 219/255, blue: 0))
            }
            Group{
                //鞋
                Path(ellipseIn: CGRect(x: 120, y: 340, width: 92, height: 106))
                    .fill(Color(red: 81/255, green: 163/255, blue: 221/255))
                Path(ellipseIn: CGRect(x: 206, y: 340, width: 92, height: 106))
                    .fill(Color(red: 81/255, green: 163/255, blue: 221/255))
                Path(ellipseIn: CGRect(x: 135, y: 364, width: 60, height: 70))
                    .fill(Color.white)
                Path(ellipseIn: CGRect(x: 225, y: 364, width: 60, height: 70))
                    .fill(Color.white)
                Path(CGRect(x: 146, y: 388, width: 36, height: 3))
                    .fill(Color.gray)
                Path(CGRect(x: 146, y: 400, width: 36, height: 3))
                    .fill(Color.gray)
                Path(CGRect(x: 146, y: 412, width: 36, height: 3))
                    .fill(Color.gray)
                Path(CGRect(x: 238, y: 388, width: 36, height: 3))
                    .fill(Color.gray)
                Path(CGRect(x: 238, y: 400, width: 36, height: 3))
                    .fill(Color.gray)
                Path(CGRect(x: 238, y: 412, width: 36, height: 3))
                    .fill(Color.gray)
            }
            //脖子
            Path { (path) in
                path.move(to: CGPoint(x: 224, y: 288))
                path.addQuadCurve(to: CGPoint(x: 190, y: 288), control: CGPoint(x: 207, y: 316))
            }
            .fill(Color(red: 170/255, green: 103/255, blue: 77/255))
            //頭帶e
            Path { (path) in
                path.move(to: CGPoint(x: 92, y: 134))
                path.addQuadCurve(to: CGPoint(x: 119, y: 110), control: CGPoint(x: 100, y: 114))
                path.addQuadCurve(to: CGPoint(x: 298, y: 114), control: CGPoint(x: 210, y: 98))
                path.addQuadCurve(to: CGPoint(x: 310, y: 134), control: CGPoint(x: 296, y: 110))
                path.closeSubpath()
            }
            .fill(Color.red)
        }.background(Image("images")
            .resizable()
            .scaledToFill()
            .clipped())
            .edgesIgnoringSafeArea([.top])
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
