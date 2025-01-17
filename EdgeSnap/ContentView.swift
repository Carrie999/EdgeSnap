//
//  ContentView.swift
//  EdgeSnap
//
//  Created by  玉城 on 2024/6/6.
//
import Foundation
import SwiftUI
import PhotosUI

struct ContentView: View {
      // 检查iOS版本是否在16.0到17.0之间（不包括17.0）
       func isBetween16And17() -> Bool {
           let systemVersion = ProcessInfo.processInfo.operatingSystemVersion
           if systemVersion.majorVersion == 16 && systemVersion.minorVersion >= 0 && systemVersion.majorVersion < 17 {
              return true
           }
           
           return false
       }

    
    
    let globalColorArray: [[String: Any]] = [
        [
            "id": 0,
            "colors": ["#fef6c9", "#c9f5fb"]
        ],
        [
            "id": 1,
            "colors": ["#c972f0", "#f572d2"]
        ],
        [
            "id": 6,
            "colors": ["#1DE5E2", "#B588F7"]
        ],
        [
            "id": 7,
            "colors": ["#863ae2", "#4e7bea"]
        ],
        
        [
            "id": 4,
            "colors": ["#eec66c", "#db583e"]
        ],
        [
            "id": 5,
            "colors": ["#f3ef67", "#6ad662"]
        ],
        [
            "id": 8,
            "colors": ["#2aedff", "#e72fef"]
        ],
        [
            "id": 9,
            "colors": ["#489ef1", "#65dbdf"]
        ],
        [
            "id": 2,
            "colors": ["#c7d8e8", "#eed6d3"]
        ],
        [
            "id": 3,
            "colors": ["#edeed5", "#94bbdc"]
        ],
        
        [
            "id": 10,
            "colors": ["#fdfdfd", "#7d6fd8"],
            "liked": false
        ],
        [
            "id": 11,
            "colors": ["#f8faeb", "#b5eae2"],
            "liked": false
        ],
        
        [
            "id": 12,
            "colors": ["#f5f7e8", "#c9daea"],
            "liked": false
        ],
        [
            "id": 13,
            "colors": ["#f8faeb", "#d9f2c8"],
            "liked": false
        ],
        [
            "id": 14,
            "colors": ["#edd2d0", "#cbd9e7"],
            "liked": false
        ],
        [
            "id": 15,
            "colors": ["#ecd1c8", "#c2c7d6"],
            "liked": false
        ],
        [
            "id": 16,
            "colors": ["#f3d9e6", "#cbd9fc"],
            "liked": false
        ],
        [
            "id": 17,
            "colors": ["#fdffd9", "#e6fdd6"],
            "liked": false
        ],
        [
            "id": 18,
            "colors": ["#fdf5c8", "#c6f5fd"],
            "liked": false
        ],
        [
            "id": 19,
            "colors": ["#dbfcfa", "#c7e0fa"],
            "liked": false
        ],
        [
            "id": 20,
            "colors": ["#fae0c6", "#e4d9fa"],
            "liked": false
        ],
        
        [
            "id": 50,
            "colors": ["#f6c85c", "#eb432f"],
            "liked": false
        ],
        [
            "id": 23,
            "colors": ["#874da2", "#c43a30"],
            "liked": false
        ],
        [
            "id": 24,
            "colors": ["#f9f047", "#0fd850"],
            "liked": false
        ],
        [
            "id": 49,
            "colors": ["#36146c", "#eb4762"],
            "liked": false
        ],
        [
            "id": 55,
            "colors": ["#f4bbc5", "#a0e4df"],
            "liked": false
        ],
        
        
        [
            "id": 100,
            "colors": ["#FDEB71", "#F8D800"],
            "liked": true
        ],
        [
            "id": 101,
            "colors": ["#ABDCFF", "#0396FF"],
            "liked": true
        ],
        [
            "id": 102,
            "colors": ["#FEB692", "#EA5455"],
            "liked": true
        ],
        [
            "id": 103,
            "colors": ["#CE9FFC", "#7367F0"],
            "liked": true
        ],
        [
            "id": 104,
            "colors": ["#90F7EC", "#32CCBC"],
            "liked": true
        ],
        [
            "id": 105,
            "colors": ["#FFF6B7", "#F6416C"],
            "liked": true
        ],
        [
            "id": 106,
            "colors": ["#81FBB8", "#28C76F"],
            "liked": true
        ],
        [
            "id": 107,
            "colors": ["#E2B0FF", "#9F44D3"],
            "liked": true
        ],
        [
            "id": 108,
            "colors": ["#F97794", "#623AA2"],
            "liked": true
        ],
        [
            "id": 109,
            "colors": ["#FCCF31", "#F55555"],
            "liked": true
        ],
        
        [
            "id": 110,
            "colors": ["#F761A1", "#8C1BAB"],
            "liked": true
        ],
        [
            "id": 111,
            "colors": ["#818ae1", "#8b39ca"],
            "liked": true
        ],
        [
            "id": 112,
            "colors": ["#c8f7fd", "#fbc7e7"],
            "liked": true
        ],
        [
            "id": 113,
            "colors": ["#FAD7A1", "#E96D71"],
            "liked": true
        ],
        [
            "id": 114,
            "colors": ["#fdc8e2", "#d3fbc7"],
            "liked": true
        ],
        [
            "id": 115,
            "colors": ["#fdc8fc", "#ecfdc6"],
            "liked": true
        ],
        [
            "id": 116,
            "colors": ["#fde0c6", "#d2c8fd"],
            "liked": true
        ],
        [
            "id": 117,
            "colors": ["#FEC163", "#DE4313"],
            "liked": true
        ],
        [
            "id": 118,
            "colors": ["#92FFC0", "#002661"],
            "liked": true
        ],
        [
            "id": 119,
            "colors": ["#c8eafd", "#fdc5da"],
            "liked": true
        ],
        [
            "id": 120,
            "colors": ["#fddbc8", "#c6fde9"],
            "liked": true
        ],
        [
            "id": 121,
            "colors": ["#c6e0fa", "#f0fbda"],
            "liked": true
        ],
        [
            "id": 122,
            "colors": ["#c6faf5", "#fbf2da"],
            "liked": true
        ],
        [
            "id": 123,
            "colors": ["#c6c9fa", "#e2fbda"],
            "liked": true
        ],
        [
            "id": 124,
            "colors": ["#fad9c6", "#e0dafb"],
            "liked": true
        ],
        [
            "id": 125,
            "colors": ["#4d3b92", "#ea3b4c"],
            "liked": true
        ],
        [
            "id": 126,
            "colors": ["#b7335f", "#fe877b"],
            "liked": true
        ],
        [
            "id": 127,
            "colors": ["#f86f64", "#fd5492"],
            "liked": true
        ],
        [
            "id": 128,
            "colors": ["#b9a8ff", "#fce1ff"],
            "liked": true
        ],
        [
            "id": 129,
            "colors": ["#F05F57", "#360940"],
            "liked": true
        ],
        [
            "id": 130,
            "colors": ["#2AFADF", "#4C83FF"],
            "liked": true
        ],
        [
            "id": 131,
            "colors": ["#FFF886", "#F072B6"],
            "liked": true
        ],
        [
            "id": 132,
            "colors": ["#97ABFF", "#123597"],
            "liked": true
        ],
        [
            "id": 133,
            "colors": ["#F5CBFF", "#C346C2"],
            "liked": true
        ],
        [
            "id": 134,
            "colors": ["#FFF720", "#3CD500"],
            "liked": true
        ],
        [
            "id": 135,
            "colors": ["#FF6FD8", "#3813C2"],
            "liked": true
        ],
        [
            "id": 136,
            "colors": ["#EE9AE5", "#5961F9"],
            "liked": true
        ],
        [
            "id": 137,
            "colors": ["#FFD3A5", "#FD6585"],
            "liked": true
        ],
        [
            "id": 138,
            "colors": ["#C2FFD8", "#465EFB"],
            "liked": true
        ],
        [
            "id": 139,
            "colors": ["#FD6585", "#0D25B9"],
            "liked": true
        ],
        [
            "id": 140,
            "colors": ["#FD6E6A", "#FFC600"],
            "liked": true
        ],
        [
            "id": 141,
            "colors": ["#65FDF0", "#1D6FA3"],
            "liked": true
        ]
    ]
    @State private var show: Int = 1
    @State private var scale = 0.9
    @State private var shadow = 1.0
    @State private var stroke = 1.0
    @State private var round = 20.0
    @State private var showbg: Int = 0
    @State private var ratio = 0.5625
    @State private var strokeColor = "ffffff"
    @State private var strokeWidth = "ffffff"
    @State private var strokeOpacity = 0.0
    @State private var showFrame = false
    
    
    @State private var showToast: Bool = false
    @State private var showToast1: Bool = false
    @State private var selectedImage: UIImage?
    @State private var isShowingImagePicker = false
    @State private var isShot = false
    @AppStorage("isPurchased") var isPurchased: Bool = false
    
    var isPad: Bool {
           UIDevice.current.userInterfaceIdiom == .pad
       }
    let lightGrayColor = Color(red: 249/255, green: 249/255, blue: 249/255)
    let lightGrayColorBlack = Color(red: 0.6, green: 0.6, blue: 0.6)
    var a = 1.2
   
    
    
    
    var ImageView: some View {
        LinearGradient(gradient: Gradient(colors:[.red, .blue ]), startPoint: .top, endPoint: .bottom)
            .edgesIgnoringSafeArea(.all)
            .frame(width: UIScreen.main.bounds.width,height: UIScreen.main.bounds.height)
        
    }
    
    
    
    
    func getCurrentDateNumber() -> Int {
        let calendar = Calendar.current
        let components = calendar.dateComponents([.month, .day], from: Date())
        let month = components.month ?? 0
        let day = components.day ?? 0
        return month * 100 + day
    }
    
    func createAwardView(color0: String,color1: String) -> some View {
        VStack{
            GeometryReader { geometry in
                ZStack{
                    Rectangle()
                        .fill(LinearGradient(gradient: Gradient(colors: [DataColor.hexToColor(hex:color0), DataColor.hexToColor(hex:color1)]), startPoint: .top, endPoint: .bottom))
                        .frame(width: geometry.size.height * ratio, height: ratio == 1 ?
                               geometry.size.width  : geometry.size.height )
                    
                   
                    
                    VStack {
                        // GeometryReader { geometry in
                        HStack{
                            if let image = selectedImage {
                                if showFrame {
                                    
                                    
                                    Image(uiImage: image)
                                        .resizable()
    //                                 .aspectRatio(9/16, contentMode: .fit)
                                    // .aspectRatio(0.75, contentMode: .fit)
                                    //                                    .aspectRatio(1, contentMode: .fit)
    //                                    .aspectRatio(contentMode: .fit)
                                      
                                        .scaledToFill()
//                                        .frame(width: 280 * scale * (ratio == 1 ? ratio: ratio * 1.4), height: 280 * scale * (ratio == 1 ? ratio: ratio * 1.4) * 16 / 7.4)
                                        .frame(width: 280 * min(scale, ratio < 0.6 ? 0.7 :0.9) / ratio * 1.4 / 14 * 6.6 - 6, height: 280 * min(scale, ratio < 0.6 ? 0.7 :0.9) / ratio * 1.4 - 6)
                                        .cornerRadius(22 * 0.9 * ( min(scale, ratio < 0.6 ? 0.7 :0.9) * 1.2))
                                        .clipped()
                                        .onTapGesture {
                                            isShowingImagePicker = true
                                        }
                                } else {
                                    Image(uiImage: image)
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .cornerRadius(round)
                                        .shadow(color: Color.black.opacity(0.3), radius: 4*shadow , x: 4, y: 4) // 0，6
                                        .frame(width: 280 * scale * (ratio == 1 ? ratio: ratio * 1.4) )
                                        .overlay(
                                                        RoundedRectangle(cornerRadius: round)
                                                            .stroke(Color.white.opacity(strokeOpacity), lineWidth: 3) // 设置描边的颜色和线宽
                                                            .frame(width: 280 * scale * (ratio == 1 ? ratio: ratio * 1.4) )
                                                        //                                , height: 280*scale * (ratio == 1 ? ratio: ratio * 1.4)
                                                    )
                                        .onTapGesture {
                                            isShowingImagePicker = true
                                        }
                                }
                                
                               
                                   
                                
                            } else {
                                Rectangle()
                                    .fill(Color.gray.opacity(0.3))
                                    .frame(width: 320 * ratio, height: 320)
                                    .overlay(Image(systemName: "plus")
                                        .resizable()
                                        .foregroundColor(.white)
                                        .frame(width: 50, height: 50))
                                    .cornerRadius(20)
                                //.frame(maxWidth: .infinity,  alignment: .leading)
                                    .onTapGesture {
                                        isShowingImagePicker = true
                                    }
                            }
                            
                            // Spacer().frame(width:200, height: 10).background(Color.clear)
                            
                        }
                        // .padding(.leading,60)
                        // .frame(width: UIScreen.main.bounds.width, height: 200)
                        
                    }
                    
                  
                    if selectedImage != nil && showFrame {
                        Image("frame") // 使用在 Assets.xcassets 中设置的图片名称
                                   .resizable() // 使图片可调整大小
                                   .aspectRatio(contentMode: .fit) // 保持宽高比
                        .frame(height:  280 * min(scale, ratio < 0.6 ? 0.7 :0.9) / ratio * 1.4  )
                        .onTapGesture {
                            isShowingImagePicker = true
                        }
                    }
                    
                    
//                    280 * scale * (ratio == 1 ? ratio: ratio * 1.4)
                    
                }
                
                .frame(width: geometry.size.width, height: geometry.size.height)
            }
            .sheet(isPresented: $isShowingImagePicker) {
                ImagePicker(selectedImage: $selectedImage)
            }
        }.frame(width: UIScreen.main.bounds.width * ((ratio < 0.7) ? 9/12 : 1) * (isPad ? 0.7 : 1) , height:  UIScreen.main.bounds.width / ( (ratio < 0.7 ) ? ratio * 12/9 : ratio)  * (isPad ? 0.7 : 1))
        //        UIScreen.main.bounds.width / 9 * 14 * 0.93
    }
    
    
    
    var body: some View {
        let dict = globalColorArray[showbg]
        let colors = dict["colors"] as? [String] ?? []
        let color0 = colors.first ?? "#FFFFFF" // 默认为白色
        let color1 = colors.last ?? "#FFFFFF" // 默认为白色
        let trophyAndDate = createAwardView(color0: color0,color1: color1)
        
        
       
        NavigationStack {
            ZStack {
                Color.black
                
                VStack{
                    Spacer().frame(height: 60)
                    
                    
                    
                    // head
                    HStack{
                        Spacer().frame(width: 10)
                        
                        
                        NavigationLink(destination: SettingView()) {
                            Image(systemName: "gearshape")
                                .foregroundColor(.white)
                                .font(.system(size: 24))
                                .frame(width: 40,height: 40)
                            
                        }
                        
                        
                        
                        Spacer()
                        
                        Image(systemName: "square.and.arrow.up")
                            .foregroundColor(.white)
                            .font(.system(size: 24))
                            .frame(width: 40,height: 40)
                            .onTapGesture {
                                if !isPurchased {
                                    UserDefaults.standard.set(UserDefaults.standard.integer(forKey: "clickCount\(getCurrentDateNumber())") + 1, forKey: "clickCount\(getCurrentDateNumber())")
                                }
                                
                                
                                if UserDefaults.standard.integer(forKey: "clickCount\(getCurrentDateNumber())") <= 5 || isPurchased {
                                    
                                    let renderer = ImageRenderer(content: trophyAndDate)
                                    renderer.scale = UIScreen.main.scale
                                    renderer.scale = 3.0
                                    if let image = renderer.uiImage {
                                        let imageSaver = ImageSever()
                                        imageSaver.writeToPhotoAlbum(image: image)
                                        //                                        }
                                    }
                                    
                                    showToast = true
                                    DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                                        showToast = false
                                    }
                                    
                                    
                                } else {
                                    showToast1 = true
                                    DispatchQueue.main.asyncAfter(deadline: .now() + 4) {
                                        showToast1 = false
                                    }
                                    // 按钮点击次数大于5，显示toast提示开通pro
                                    //                               Toast(message: "saved!")
                                }
                                
                                
                                
                                
                                
                                
                                
                                
                                
                                
                            }
                        Spacer().frame(width: 10)
                    }.frame(height: 40)
                    
                    //                    Spacer()
                    
                    // content
                    VStack{
                        trophyAndDate
                    }
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                    .frame(height: UIScreen.main.bounds.height - 102 - 60 - 40 - 20 - 60)
                    //                    .background(.red)
                    
                    // bottom
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 15) {
                            //                                   ForEach(0..<10) { index in
                            ZStack{
                                Circle()
//                                    .stroke(DataColor.hexToColor(hex:"#cbb74a"), lineWidth: show == 1 ? 4 : 0)
//                                    .fill(DataColor.hexToColor(hex:"#285d42"))
                                    .strokeBorder(show == 1 ? DataColor.hexToColor(hex: "#cbb74a") : Color.clear, lineWidth: 2)
                                    .background(Circle().fill(DataColor.hexToColor(hex: "#285d42")))
                                    .frame(width: 50, height: 50)
                                    .onTapGesture {
                                        self.show = 1
                                    }
                                
                                Image(systemName: isBetween16And17() ? "paintbrush.fill":"lightspectrum.horizontal")
                                    .foregroundColor(DataColor.hexToColor(hex:"#e1c947"))
                                    .font(.system(size: isBetween16And17() ? 24 : 30))
                                    .opacity(0.7)
                            }
                            
                             ZStack{
                                Circle()
                                     .strokeBorder(show == 2 ? DataColor.hexToColor(hex: "#cbb74a") : Color.clear, lineWidth: 2)
                                     .background(Circle().fill(DataColor.hexToColor(hex: "#285d42")))
//                                    .stroke(DataColor.hexToColor(hex:"#cbb74a"), lineWidth: show == 2 ? 4 : 0)
//                                    .fill(DataColor.hexToColor(hex:"#285d42"))
                                    .frame(width: 50, height: 50)
                                    .onTapGesture {
                                        self.show = 2
                                    }
                                
                                 Image(systemName: isBetween16And17() ? "arrow.up.left.and.arrow.down.right.circle.fill":  "arrow.down.backward.and.arrow.up.forward.circle.fill")
                                    .foregroundColor(DataColor.hexToColor(hex:"#e1c947"))
                                    .font(.system(size: 30))
                                    .opacity(0.7)
                            }
                          
                            
                            if !showFrame {
                                ZStack{
                                Circle()
                                        .strokeBorder(show == 4 ? DataColor.hexToColor(hex: "#cbb74a") : Color.clear, lineWidth: 2)
                                        .background(Circle().fill(DataColor.hexToColor(hex: "#285d42")))
                                    .frame(width: 50, height: 50)
                                    .onTapGesture {
                                        self.show = 4
                                    }
//                                button.horizontal
                                Image(systemName: "viewfinder")
                                    .foregroundColor(DataColor.hexToColor(hex:"#e1c947"))
                                    .font(.system(size: 24))
                                    .opacity(0.7)
                            }
                            }
                            
                            if !showFrame {
                                ZStack{
                                Circle()
                                    .strokeBorder(show == 6 ? DataColor.hexToColor(hex: "#cbb74a") : Color.clear, lineWidth: 2)
                                    .background(Circle().fill(DataColor.hexToColor(hex: "#285d42")))
                                    .frame(width: 50, height: 50)
                                    .onTapGesture {
                                        self.show = 6
                                    }
                                
                                
                                Image(systemName: "square.dashed.inset.filled")
                                    .foregroundColor(DataColor.hexToColor(hex:"#e1c947"))
                                    .font(.system(size: 24))
                                    .opacity(0.7)
                            }
                            }
                            
                            ZStack{
                                Circle()
                                    .strokeBorder(show == 5 ? DataColor.hexToColor(hex: "#cbb74a") : Color.clear, lineWidth: 2)
                                    .background(Circle().fill(DataColor.hexToColor(hex: "#285d42")))
                                    .frame(width: 50, height: 50)
                                    .onTapGesture {
                                        self.show = 5
                                    }
                                
                                
                                Image(systemName: "aspectratio")
                                    .foregroundColor(DataColor.hexToColor(hex:"#e1c947"))
                                    .font(.system(size: 24))
                                    .opacity(0.7)
                            }
                            
                            if !isPad {
                                ZStack{
                                Circle()
                                    .strokeBorder(show == 7 ? DataColor.hexToColor(hex: "#cbb74a") : Color.clear, lineWidth: 2)
                                    .background(Circle().fill(DataColor.hexToColor(hex: "#285d42")))
                                    .frame(width: 50, height: 50)
                                    .onTapGesture {
                                        self.show = 7
                                    }
                                
                                    Image(systemName: isBetween16And17() ? "iphone" :"iphone.gen2")
                                    .foregroundColor(DataColor.hexToColor(hex:"#e1c947"))
                                    .font(.system(size: 30))
                                    .opacity(0.7)
                            }
                            }
                            
                            
                            
                            
                            
                            if !showFrame { ZStack{
                                Circle()
                                    .strokeBorder(show == 3 ? DataColor.hexToColor(hex: "#cbb74a") : Color.clear, lineWidth: 2)
                                    .background(Circle().fill(DataColor.hexToColor(hex: "#285d42")))
                                    .frame(width: 50, height: 50)
                                    .onTapGesture {
                                        self.show = 3
                                    }
                                
                                Image(systemName: isBetween16And17() ? "camera.filters" : "circle.lefthalf.filled.righthalf.striped.horizontal")
                                    .foregroundColor(DataColor.hexToColor(hex:"#e1c947"))
                                    .font(.system(size: 30))
                                    .opacity(0.7)
                            }
                            }
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            //                                   }
                        }
                        .padding(EdgeInsets(top: 6, leading: 40, bottom: 2, trailing: 60))
                    }
                    .frame(width:UIScreen.main.bounds.width, height: 40)
                    VStack {
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 15) {
                                
                                
                                //                                   .stroke(DataColor.hexToColor(hex:"#cbb74a"), lineWidth: show == 1 ? 4 : 0)
                                if show == 1 {ForEach(globalColorArray.indices, id: \.self) { index in
                                    let dict = globalColorArray[index]
                                    let colors = dict["colors"] as? [String] ?? []
                                    let color0 = colors.first ?? "#FFFFFF" // 默认为白色
                                    let color1 = colors.last ?? "#FFFFFF" // 默认为白色
                                    Rectangle()
                                    
                                        .fill(LinearGradient(gradient: Gradient(colors: [DataColor.hexToColor(hex:color0), DataColor.hexToColor(hex:color1)]), startPoint: .top, endPoint: .bottom))
                                    //                                              .stroke(DataColor.hexToColor(hex:"#ffffff"), lineWidth: 10)
                                        .cornerRadius(10)
                                    
                                        .frame(width: 58, height: 58)
                                        .overlay(
                                            RoundedRectangle(cornerRadius: 10)
                                                .stroke(DataColor.hexToColor(hex:"#ffffff"), lineWidth: showbg == index ? 2 : 0)
                                        )
                                        .onTapGesture {
                                            self.showbg = index
                                            
                                        }
                                    
                                    
                                }
                                }
                                
                                
                                
                                
                                
                            }
                            .padding(EdgeInsets(top: 10, leading: 20, bottom: 2, trailing: 0))
                        }
                        
                        
                        if show == 2 {
                            
                            //                            if var a = 1.2 && showFrame {
                            //                                if showFrame && ratio < 0.6 {
                            //                                    a = 0.8
                            //                                } else if showFrame && ratio < 0.8 {
                            //                                    a = 0.9
                            //                                } else if showFrame && ratio == 1 {
                            //                                    a = 1
                            //                                }
                            //                            }
                            let a = isPad ? 3 : showFrame ? ratio < 0.6 ? 0.7 :0.9: 1.2
                            let b = showFrame ? ratio < 0.6 ? 0.3 :0.5: 0.5
                            Slider(value: $scale, in: b...a, step: 0.05)
                                .padding(EdgeInsets(top: 0, leading: 60, bottom: 2, trailing: 60))
                                .accentColor(DataColor.hexToColor(hex: "e171f5"))
                            Text("scale")
                            
                        }
                        if show == 3 {
                            
                            Slider(value: $shadow, in: 0...1.5, step: 0.1)
                                .padding(EdgeInsets(top: 0, leading: 60, bottom: 2, trailing: 60))
                                .accentColor(DataColor.hexToColor(hex: "5054ee"))
                            Text("shadow")
                            
                        }
                        if show == 6 {
                            
                            Slider(value: $strokeOpacity, in: 0...1, step: 0.1)
                                .padding(EdgeInsets(top: 0, leading: 60, bottom: 2, trailing: 60))
                                .accentColor(DataColor.hexToColor(hex: "5054ee"))
                            Text("shadow")
                            
                        }
                        if show == 4 {
                            
                            Slider(value: $round, in: 0...200, step: 1)
                                .padding(EdgeInsets(top: 0, leading: 60, bottom: 2, trailing: 60))
                                .accentColor(DataColor.hexToColor(hex: "5054ee"))
                            Text("round")
                            
                        }
                        if show == 7 {

                            HStack{
                                Spacer().frame(width: 50)
                                Toggle(isOn: $showFrame) {
                                      Text("showPhoneFrame")
                                }
                                .toggleStyle(SwitchToggleStyle(tint: DataColor.hexToColor(hex: "6931c5")))
                                .foregroundColor(.white) // 修改前景色
                                Spacer().frame(width: 100)
                            }

                        }
                       
                        if show == 5 {
                            
                            HStack(spacing: 20){
                                ZStack{
                                    Circle()
                                        .strokeBorder( DataColor.hexToColor(hex: "#cbb74a"), lineWidth:  ratio == 9/16 ? 2 : 0)
                                        .background(Circle().fill(DataColor.hexToColor(hex: "#285d42")))
                                    
//                                        .stroke(DataColor.hexToColor(hex:"#cbb74a"), lineWidth: ratio == 9/16 ? 4 : 0)
//                                        .fill(DataColor.hexToColor(hex:"#285d42"))
                                        .frame(width: 44, height: 44)
                                        .onTapGesture {
                                            self.ratio = 9/16
                                        }
                                    
                                    Image(systemName: isBetween16And17() ? "iphone.rear.camera" : "rectangle.ratio.9.to.16")
                                        .foregroundColor(DataColor.hexToColor(hex:"#e1c947"))
                                        .font(.system(size: 28))
                                        .opacity(0.7)
                                }
                                ZStack{
                                    Circle()
                                        .strokeBorder( DataColor.hexToColor(hex: "#cbb74a"), lineWidth:  ratio == 3/4 ? 2 : 0)
                                        .background(Circle().fill(DataColor.hexToColor(hex: "#285d42")))
//                                        .stroke(DataColor.hexToColor(hex:"#cbb74a"), lineWidth: ratio == 3/4 ? 4 : 0)
//                                        .fill(DataColor.hexToColor(hex:"#285d42"))
                                        .frame(width: 44, height: 44)
                                        .onTapGesture {
                                            self.ratio = 3/4
                                        }
                                    
                                    Image(systemName: isBetween16And17() ? "ipad.rear.camera" : "rectangle.ratio.3.to.4")
                                        .foregroundColor(DataColor.hexToColor(hex:"#e1c947"))
                                        .font(.system(size: 28))
                                        .opacity(0.7)
                                }
                                ZStack{
                                    Circle()
                                        .strokeBorder( DataColor.hexToColor(hex: "#cbb74a"), lineWidth:  ratio == 1.0 ? 2 : 0)
                                        .background(Circle().fill(DataColor.hexToColor(hex: "#285d42")))
//                                        .stroke(DataColor.hexToColor(hex:"#cbb74a"), lineWidth: ratio == 1.0 ? 4 : 0)
//                                        .fill(DataColor.hexToColor(hex:"#285d42"))
                                        .frame(width: 44, height: 44)
                                        .onTapGesture {
                                            self.ratio = 1.0
                                        }
                                    
                                    Image(systemName: "square")
                                        .foregroundColor(DataColor.hexToColor(hex:"#e1c947"))
                                        .font(.system(size: 24))
                                        .opacity(0.7)
                                }
                            }.padding(EdgeInsets(top: 0, leading: 0, bottom: 10, trailing: 0))
                            
                            
                            
                        }
                        
                        
                    }
                    .frame(width:UIScreen.main.bounds.width, height: 60)
                    .padding(EdgeInsets(top: 20, leading: 0, bottom: 40, trailing: 0))
                    
                }
                
                
                if showToast {
                    Toast(message: "saved!")
                }
                
                if showToast1 {
                    
                    Toast(message: "Limit downloads to 5 times per day. exceeding the limit requires Pro")
                    
                }
//                if selectedImage != nil && !isPurchased {  Text("EdgeSnap")
//                        .foregroundColor(.white).offset(x: 70, y: 90)
//                    .shadow(color: Color.black.opacity(0.3), radius: 4 , x: 4, y: 4) }
                
                
                if !isPurchased {
                    VStack{
                    Spacer().frame(height: 150)
                    
                    HStack{
                        Spacer()
                        NavigationLink(destination: ProSwiftUIView()) {
                            
                            ZStack{
                                ZStack{
                                    Rectangle().foregroundStyle(
                                        // c0a3e9
                                        LinearGradient(gradient: Gradient(colors: [
                                            DataColor.hexToColor(hex:"71c0fa"),
                                            DataColor.hexToColor(hex:"c0a3e9"),
                                            DataColor.hexToColor(hex:"fb92d3"),
                                            DataColor.hexToColor(hex:"fbb589")]),
                                                       startPoint: .topLeading, endPoint: .bottomTrailing)
                                    ).frame(width: 50, height: 50)
                                        .cornerRadius(50)
                                    
                                    Image(systemName: "crown.fill")
                                        .foregroundColor(.white)
                                        .font(.system(size: 24))
                                }
                                //                            .offset(x: 100, y: 170)
                            }.frame(width: 50, height: 50)
                            
                            
                            
                            
                            
                        }
                        Spacer().frame(width: 40)
                    }
                    Spacer()
                }}
                
            }
            .edgesIgnoringSafeArea(.all)
            
        }
        .navigationViewStyle(StackNavigationViewStyle())
        
    }
}



struct ImagePicker: UIViewControllerRepresentable {
    @Binding var selectedImage: UIImage?
    
    func makeUIViewController(context: Context) -> UIImagePickerController {
        let picker = UIImagePickerController()
        picker.delegate = context.coordinator
        picker.sourceType = .photoLibrary
        return picker
    }
    
    func updateUIViewController(_ uiViewController: UIImagePickerController, context: Context) {}
    
    func makeCoordinator() -> Coordinator {
        Coordinator(parent: self)
    }
    
    class Coordinator: NSObject, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
        let parent: ImagePicker
        
        init(parent: ImagePicker) {
            self.parent = parent
        }
        
        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            if let image = info[.originalImage] as? UIImage {
                parent.selectedImage = image
            }
            picker.dismiss(animated: true, completion: nil)
        }
    }
}




struct Toast: View {
    let message: String
    
    var body: some View {
        ZStack {
            VStack {
                Spacer()
                Text(message)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.black.opacity(0.7))
                    .cornerRadius(10)
                    .padding(.horizontal, 20)
                    .padding(.vertical, 10)
                Spacer()
            }
            .frame(maxWidth: .infinity, alignment: .bottom)
        }
        .transition(.move(edge: .bottom))
    }
}

class ImageSever: NSObject {
    func writeToPhotoAlbum(image: UIImage) {
        UIImageWriteToSavedPhotosAlbum(image, self, #selector(saveCompleted), nil)
    }
    
    @objc func saveCompleted(_ image: UIImage, didFinishSavingWithError error: Error?, contextInfo: UnsafeRawPointer) {
        print("Saved!")
    }
}




class DataColor {
    
    static func hexToColor(hex: String, alpha: Double = 1.0) -> Color {
        var formattedHex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        if formattedHex.hasPrefix("#") {
            formattedHex.remove(at: formattedHex.startIndex)
        }
        
        let scanner = Scanner(string: formattedHex)
        var color: UInt64 = 0
        
        if scanner.scanHexInt64(&color) {
            let red = Double((color & 0xFF0000) >> 16) / 255.0
            let green = Double((color & 0x00FF00) >> 8) / 255.0
            let blue = Double(color & 0x0000FF) / 255.0
            return Color(red: red, green: green, blue: blue, opacity: alpha)
        } else {
            // 返回默认颜色，当转换失败时
            return Color.black
        }
    }
    
}

extension Color {
    func toHexString() -> String {
        guard let components = UIColor(self).cgColor.components else {
            return "#000000"
        }
        let red = components[0]
        let green = components[1]
        let blue = components[2]
        
        return String(format: "#%02lX%02lX%02lX", lroundf(Float(red * 255)), lroundf(Float(green * 255)), lroundf(Float(blue * 255)))
    }
    
    
}



#Preview {
    ContentView()
}




