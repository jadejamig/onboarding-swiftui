//
//  Wave.swift
//  Background1
//
//  Created by Anselm Jade Jamig on 5/31/21.
//

import SwiftUI

struct Wave: View {
    var body: some View {
        LinearGradient(
                    gradient: Gradient(stops: [
                .init(color: Color(#colorLiteral(red: 1, green: 0.46666663885116577, blue: 0.46666663885116577, alpha: 1)), location: 0),
                .init(color: Color(#colorLiteral(red: 0.9372549057006836, green: 0.13725490868091583, blue: 0.2980392277240753, alpha: 1)), location: 1)]),
                    startPoint: UnitPoint(x: 0.5316935571890685, y: 0.6423840327307966),
                    endPoint: UnitPoint(x: 0.6143517283169669, y: 0.37086080408153693))
            .mask(wave().frame(width: 1948, height: 913))
            .frame(width: 1948, height: 913)
            .offset(x: 0, y: 350)
    }
}

struct Wave_Previews: PreviewProvider {
    static var previews: some View {
        Wave()
    }
}
struct wave: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.64355*width, y: 0.41725*height))
        path.addCurve(to: CGPoint(x: 0.52147*width, y: 0.26579*height), control1: CGPoint(x: 0.59337*width, y: 0.34309*height), control2: CGPoint(x: 0.56836*width, y: 0.29212*height))
        path.addCurve(to: CGPoint(x: 0.34175*width, y: 0.01658*height), control1: CGPoint(x: 0.47459*width, y: 0.23947*height), control2: CGPoint(x: 0.45858*width, y: 0.05008*height))
        path.addCurve(to: CGPoint(x: -0.00729*width, y: 0.02852*height), control1: CGPoint(x: 0.22491*width, y: -0.01691*height), control2: CGPoint(x: 0.00156*width, y: 0.00725*height))
        path.addCurve(to: CGPoint(x: -0.00729*width, y: 1.21733*height), control1: CGPoint(x: -0.00729*width, y: 0.14323*height), control2: CGPoint(x: -0.00729*width, y: 1.21733*height))
        path.addLine(to: CGPoint(x: 1.00727*width, y: 1.21733*height))
        path.addLine(to: CGPoint(x: 1.00727*width, y: 0.73157*height))
        path.addCurve(to: CGPoint(x: 1.00102*width, y: 0.67693*height), control1: CGPoint(x: 1.00727*width, y: 0.73157*height), control2: CGPoint(x: 1.00805*width, y: 0.68203*height))
        path.addCurve(to: CGPoint(x: 0.80813*width, y: 0.55375*height), control1: CGPoint(x: 0.96611*width, y: 0.65161*height), control2: CGPoint(x: 0.9156*width, y: 0.58067*height))
        path.addCurve(to: CGPoint(x: 0.64355*width, y: 0.41725*height), control1: CGPoint(x: 0.70067*width, y: 0.52684*height), control2: CGPoint(x: 0.66958*width, y: 0.45572*height))
        path.closeSubpath()
        return path
    }
}
