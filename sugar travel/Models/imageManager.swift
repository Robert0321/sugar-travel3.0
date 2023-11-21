//
//  imageManager.swift
//  sugar travel
//
//  Created by LI,JYUN-SIAN on 25/11/23.
//

import Foundation

struct ImageData: Identifiable {
    var id = UUID()
    var name: String
}

class ImageManager{
    
    
    private var _images: [ImageData] = []
    static let shared = ImageManager()
    
    private init(){
        _images.append(ImageData(name: "aaaa"))
        _images.append(ImageData(name: "bbbb"))
    }
    
    public func GetImages() -> [ImageData]{
        return self._images;
    }
    
    public func AddImages(name: String){
        self._images.append(ImageData(name: name))
    }
    
    public func ShowImages(){
        print("#######################")
        for imageObject in self._images{
            print("image name \(imageObject.name)")
        }
        print("#######################")
    }
    
    
}
