//
//  ContentView.swift
//  Homework005
//
//  Created by Chun-Yi Lin on 2021/11/20.
//

import SwiftUI
struct DrawView: UIViewRepresentable {
    func makeUIView(context: Context) -> UIView {
        let view = UIView()
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 241, height: 240))
        imageView.image = UIImage(named: "umbrella.jpg")
        imageView.alpha = 0.3
        view.addSubview(imageView)
        view.layer.addSublayer(topBall())
        view.layer.addSublayer(waterProof())
        view.layer.addSublayer(stick())
        
        return view
    }
    func topBall() -> CAShapeLayer {
        let aDegree = CGFloat.pi / 180
        let path = UIBezierPath(arcCenter: CGPoint(x: 126, y: 20), radius: 15, startAngle: aDegree * 0, endAngle: aDegree * 360, clockwise: true)
        
        let layer = CAShapeLayer()
        layer.path = path.cgPath
        layer.fillColor = CGColor(red: 0, green: 0, blue: 1, alpha: 1)
        
        return layer
    }
    func waterProof () -> CAShapeLayer {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 126, y: 32))

        path.addQuadCurve(to: CGPoint(x: 34, y: 124), controlPoint:CGPoint(x: 52, y: 40))
        path.addQuadCurve(to: CGPoint(x: 77, y: 124), controlPoint:CGPoint(x: 60, y: 110))
        path.addQuadCurve(to: CGPoint(x: 126, y: 124), controlPoint:CGPoint(x: 100, y: 110))
        path.addQuadCurve(to: CGPoint(x: 175, y: 124), controlPoint:CGPoint(x: 150, y: 110))
        path.addQuadCurve(to: CGPoint(x: 214, y: 124), controlPoint:CGPoint(x: 195, y: 110))
        
        path.addQuadCurve(to: CGPoint(x: 126, y: 32), controlPoint:CGPoint(x: 200, y: 40))
        path.close()
        
        let layer = CAShapeLayer()
        layer.path = path.cgPath
        layer.fillColor = UIColor.clear.cgColor
        layer.strokeColor = CGColor(red: 0, green: 0, blue: 1, alpha: 1)
        layer.lineWidth = 23
        layer.lineJoin = .round
        
        
        return layer
    }
    
    func stick () -> CAShapeLayer {
        let path = UIBezierPath()

        path.move(to: CGPoint(x: 126, y: 122))
        
        path.addLine(to: CGPoint(x: 126, y: 210))
        path.addQuadCurve(to: CGPoint(x: 110, y: 227), controlPoint:CGPoint(x: 122, y: 230))
        path.addQuadCurve(to: CGPoint(x: 94, y: 210), controlPoint:CGPoint(x: 96, y: 225))
        path.addLine(to: CGPoint(x: 94, y: 200))

        let layer = CAShapeLayer()
        layer.path = path.cgPath
        layer.fillColor = UIColor.clear.cgColor
        layer.strokeColor = CGColor(red: 0, green: 0, blue: 1, alpha: 1)
        layer.lineWidth = 23
        layer.lineCap = .round


        
        return layer
    }

    func updateUIView(_ uiView: UIView, context: Context) {
    }
}

struct ContentView: View {
    var body: some View {
        DrawView()
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

