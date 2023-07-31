//
//  ViewController.swift
//  part01.chapter01-project
//
//  Created by 김재영 on 2023/07/31.
//

import UIKit

class ViewController: UIViewController {
  @IBOutlet weak var quoteLabel: UILabel!
  @IBOutlet weak var characterLabel: UILabel!
  
  let quotes: [Quote] = [
    Quote(quote: "사람은 오로지 가슴으로만 올바로 볼 수 있다. 본질적인 것은 눈에 보이지 않는다.", character: "Antoine de Saint-Exupéry"),
    Quote(quote: "당신이 잘 하는 일이라면 무엇이나 행복에 도움이 된다.", character: "Bertrand Russel"),
    Quote(quote: "한번 포기하면 습관이 된다. 절대 포기하지 말아라.", character: "Michael Jordan"),
    Quote(quote: "힘이 드는가? 오늘 걷지 않으면 내일은 뛰어야한다.", character: "Carles Puyol"),
    Quote(quote: "모든 단점은 장점이 될 수 있다.", character: "Lionel Messi"),
    Quote(quote: "무언가를 변화시키기 위해서는 나 자신부터 바꿔야한다.", character: "Josep Guardiola")
  ]
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }

  @IBAction func generateQuote(_ sender: UIButton) {
    let random = Int(arc4random_uniform(6))
    let quote = quotes[random]
    self.quoteLabel.text = quote.quote
    self.characterLabel.text = "- " + quote.character
  }
  
}

