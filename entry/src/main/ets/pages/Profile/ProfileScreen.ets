import promptAction from '@ohos.promptAction'

@Entry
@Component
struct ProfileScreen {
  @State message: string = 'Profile'
  image_add = 'app.media.profile_default_user'

  private listItem:string[] = ["个人信息","历史记录","收藏夹"]

  @State Username: string = "USER"
  @State UserPersonalSign: string = "Hello, world!"

  build() {
    Column() {
      Row(){
        Row(){

        }
        .width("85%")
        Button()
        {
          Image($r("app.media.ic_settings"))
            .height(40)
            .width(40)
        }
        .onClick(() =>
        {
          promptAction.showToast({
            message:"你点击了设置按钮",
            duration:3000
          })
        })
        .backgroundColor(Color.White)


      }
      .height('10%')
      .width('100%')


      Column() {
        // Text("123")
        //   .fontSize(20)
        //   .padding({bottom:300})

        // Row(){
        //   Text('123')
        // }
        // .height('5%')
        //
        // Text(this.message)
        //   .fontSize(50)
        //   .fontWeight(FontWeight.Bold)


        Row({space:20}){
          Image($r("app.media.profile_default_user"))
            .width(90)
            .height(90)
            .borderStyle(BorderStyle.Dotted)
            .borderWidth(1)
            .borderColor(Color.Blue)

          Text(this.Username)
            .fontSize(40)

        }

        Text(this.UserPersonalSign)
          .fontSize(20)
          .padding({top:20})

        Scroll() {
          Column() {
            List() {
              ForEach(this.listItem,
                (func: string, index) => {
                  ListItem() {
                    Text(func)
                      .fontSize(20)
                      .margin({left:20})
                      .width("90%")
                      .onClick(() => {
                        promptAction.showToast({
                          message: "你点击了" + func + "按钮",
                          duration: 3000
                      })
                    })

                  }.margin({ top: 20, bottom: 20 })

                }, func => func
              )
            }
            .divider({ strokeWidth: 2, color: Color.Black })
          }
        }
        // .height(100)





      }
      .width('100%')
      .height('70%')


    }
    .height('100%')
    .width('100%')


  }
}

export {ProfileScreen}