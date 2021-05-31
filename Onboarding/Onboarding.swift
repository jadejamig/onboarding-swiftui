//
//  Onboarding.swift
//  Onboarding
//
//  Created by Anselm Jade Jamig on 5/31/21.
//

import SwiftUI
import SwiftUIX

struct Onboarding: View {
    @State var selection = 0
    
    var body: some View {
        ZStack {
            background
            
            TabView(selection: $selection) {
                OnboardingCardView(isLast: true, title: "Your \nreviewers \nin your pocket").tag(0)
                OnboardingCardView(isLast: true, title: "Learn \nnew stuff \neveryday").tag(1)
                OnboardingCardView(isLast: true, title: "Create \nyour own \nquizzes").tag(2)
            }
            .tabViewStyle(PageTabViewStyle())
            .background(
                ZStack {
                    FaceGraphic(selection: $selection)
                    Blob1Graphic(selection: $selection)
                    Blob2Graphic(selection: $selection)
                }
            )
        }
    }
    
    var background: some View {
        LinearGradient(
            gradient: Gradient(stops: [
                                .init(color: Color(#colorLiteral(red: 0.8458333611488342, green: 0.39472222328186035, blue: 0.5841889381408691, alpha: 1)), location: 0),
                                .init(color: Color(#colorLiteral(red: 0.28703832626342773, green: 0.11713546514511108, blue: 0.7208333611488342, alpha: 1)), location: 1)]),
            startPoint: UnitPoint(x: 0.5000000291053439, y: 1.0838161507153998e-8),
            endPoint: UnitPoint(x: -0.002089660354856915, y: 0.976613295904758))
            .ignoresSafeArea()
            .overlay(
                ZStack {
                    Wave()
                    Wave1()
                }
            )
    }
}

struct Onboarding_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding()
    }
}

struct OnboardingCardView: View {
    @State var isLast: Bool
    var title: String
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 16) {
                Text("120+ reference materials")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.white.opacity(0.7))
                LinearGradient(
                    gradient: Gradient(stops: [
                                        .init(color: Color(#colorLiteral(red: 0.03333336114883423, green: 0.5024509429931641, blue: 1, alpha: 1)), location: 0),
                                        .init(color: Color(#colorLiteral(red: 0.7291666269302368, green: 0.7562500238418579, blue: 1, alpha: 1)), location: 0.5629924535751343),
                                        .init(color: Color(#colorLiteral(red: 1, green: 0.6083333492279053, blue: 0.8732843995094299, alpha: 1)), location: 1)]),
                    startPoint: UnitPoint(x: 1.0125392039427847, y: 1.0175438863216821),
                    endPoint: UnitPoint(x: -1.1102230246251565e-16, y: 0))
                    .frame(height: 140)
                    .mask(Text(self.title)
                            .font(.largeTitle)
                            .bold()
                            .frame(maxWidth: .infinity, alignment: .leading))
                
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ")
                    .font(.subheadline)
                    .foregroundColor(Color.white.opacity(0.7))
            }
            .padding(30)
            .background(LinearGradient(
                            gradient: Gradient(stops: [
                                                .init(color: Color(#colorLiteral(red: 0.14509804546833038, green: 0.12156862765550613, blue: 0.2549019753932953, alpha: 1)), location: 0),
                                                .init(color: Color(#colorLiteral(red: 0.14509804546833038, green: 0.12156862765550613, blue: 0.2549019753932953, alpha: 0)), location: 1)]),
                            startPoint: UnitPoint(x: 0.49999988837676157, y: 2.9497591284275417e-15),
                            endPoint: UnitPoint(x: 0.4999999443689973, y: 0.9363635917143408)))
            .mask(RoundedRectangle(cornerRadius: 30, style: .continuous))
            .overlay(
                RoundedRectangle(cornerRadius: 30, style: .continuous)
                    .stroke(LinearGradient(
                                gradient: Gradient(stops: [
                                                    .init(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.800000011920929)), location: 0),
                                                    .init(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 0)), location: 1)]),
                                startPoint: UnitPoint(x: 0.5, y: -3.06161911669639e-17),
                                endPoint: UnitPoint(x: 0.5000000000000001, y: 0.49999999999999994)), lineWidth: 1)
                    .blendMode(.overlay)
                    .overlay(
                        RoundedRectangle(cornerRadius: 30, style: .continuous)
                            .stroke(LinearGradient(
                                        gradient: Gradient(stops: [
                                                            .init(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.800000011920929)), location: 0),
                                                            .init(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 0)), location: 1)]),
                                        startPoint: UnitPoint(x: 0.5, y: -3.06161911669639e-17),
                                        endPoint: UnitPoint(x: 0.5000000000000001, y: 0.49999999999999994)), lineWidth: 3)
                            .blur(radius: 10)
                    )
            )
            .background(
                VisualEffectBlurView(blurStyle: .systemUltraThinMaterialDark)
                    .mask(RoundedRectangle(cornerRadius: 30, style: .continuous)
                            .fill(LinearGradient(gradient: Gradient(colors: [Color.red, Color.red,  Color.blue.opacity(0)]), startPoint: .top, endPoint: .bottom)))
            )
            .padding(20)
            
            if self.isLast {
                VStack {
                    Button(action: {}) {
                        Text("GET STARTED")
                            .font(.subheadline)
                            .foregroundColor(.white)
                    }
                }
                .padding(.horizontal, 30)
                .padding(.vertical, 15)
                .overlay(
                    RoundedRectangle(cornerRadius: 30, style: .continuous)
                        .stroke(
                            LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 1, green: 0.6083333492279053, blue: 0.8732843995094299, alpha: 1)), Color(#colorLiteral(red: 0.7291666269302368, green: 0.7562500238418579, blue: 1, alpha: 1)), Color(#colorLiteral(red: 0.03333336114883423, green: 0.5024509429931641, blue: 1, alpha: 1))]), startPoint: .topLeading, endPoint: .bottomTrailing),
                            lineWidth: 1
                        )
                        //                    .blendMode(.overlay)
                        .overlay(
                            RoundedRectangle(cornerRadius: 30, style: .continuous)
                                .stroke(
                                    LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 1, green: 0.6083333492279053, blue: 0.8732843995094299, alpha: 1)), Color(#colorLiteral(red: 0.7291666269302368, green: 0.7562500238418579, blue: 1, alpha: 1)), Color(#colorLiteral(red: 0.03333336114883423, green: 0.5024509429931641, blue: 1, alpha: 1))]), startPoint: .topLeading, endPoint: .bottomTrailing),
                                    lineWidth: 1
                                )
                                .blur(radius: 10)
                        )
                )
            }
            
        }
        .padding(.bottom, 60)
        .background(LinearGradient(
                        gradient: Gradient(stops: [
                                            .init(color: Color(#colorLiteral(red: 0.14509804546833038, green: 0.12156862765550613, blue: 0.2549019753932953, alpha: 1)).opacity(0), location: 0),
                                            .init(color: Color(#colorLiteral(red: 0.14509804546833038, green: 0.12156862765550613, blue: 0.2549019753932953, alpha: 1)), location: 1)]),
                        startPoint: UnitPoint(x: 0.49999988837676157, y: 2.9497591284275417e-15),
                        endPoint: UnitPoint(x: 0.4999999443689973, y: 0.9363635917143408)))
        .mask(RoundedRectangle(cornerRadius: 30, style: .continuous))
        .overlay(
            RoundedRectangle(cornerRadius: 30, style: .continuous)
                .stroke(LinearGradient(
                            gradient: Gradient(stops: [
                                                .init(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 0)), location: 0),
                                                .init(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.800000011920929)), location: 1)]),
                            startPoint: UnitPoint(x: 0.5, y: -3.06161911669639e-17),
                            endPoint: UnitPoint(x: 0.5000000000000001, y: 0.49999999999999994)), lineWidth: 1)
                .blendMode(.overlay)
                .overlay(
                    RoundedRectangle(cornerRadius: 30, style: .continuous)
                        .stroke(LinearGradient(
                                    gradient: Gradient(stops: [
                                                        .init(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 0)), location: 0),
                                                        .init(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.800000011920929)), location: 1)]),
                                    startPoint: UnitPoint(x: 0.5, y: -3.06161911669639e-17),
                                    endPoint: UnitPoint(x: 0.5000000000000001, y: 0.49999999999999994)), lineWidth: 3)
                        .blur(radius: 10)
                )
        )
        .background(
            VisualEffectBlurView(blurStyle: .systemUltraThinMaterialDark)
                .mask(RoundedRectangle(cornerRadius: 30, style: .continuous))
                .blur(radius: 30)
        )
        .padding(20)
    }
}
