//
//  ImageFilterer.swift
//  ImageFilteringResourcefulnessAssessment
//
//  Created by Spencer Curtis on 12/16/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class ImageFilterer {
    
    let context = CIContext(options: nil)
    let inputImage = UIImage(named: "Lion")
    let filterNames = CIFilter.filterNames(inCategories: nil)
    
    func filterImage(_ image: UIImage?) -> UIImage? {
        // convert UIImage to CIImage
        let inputCIImage = CIImage(image: inputImage!)
        
        // Create Blur CIFilter, and set the input image
        let blurFilter = CIFilter(name: "CIGaussianBlur")!
        blurFilter.setValue(inputCIImage, forKey: kCIInputImageKey)
        blurFilter.setValue(9, forKey: kCIInputRadiusKey)

        // Get the filtered output image and return it
        let outputImage = blurFilter.outputImage!
        return UIImage(ciImage: outputImage)
    }
}
