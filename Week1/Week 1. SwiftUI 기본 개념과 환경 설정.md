## 2. MVVM pattern
---
> Model-View-ViewModel 패턴
> : <u>UI(View)와 데이터(Model)를 분리</u>하여 보다 구조적인 코드 작성을 가능하게 하는 소프트웨어 아키텍처 패턴

*왜 UI와 데이터 로직을 분리해야 하는가?*
→ 유지보수성, 재사용성, 테스트 용이성, 확장성
- 유지보수성 : 한 부분을  변경할 때, 다른 부분에 영향을 덜 주게 할 수 있다
	- UI 변경이 필요할 때, 데이터 로직까지 수정해야 할 수도 있음
	- 데이터 처리 방식이 바뀌면, UI까지 수정해야 할 수도 있음
- 재사용성 : 중복 코드를 줄이고, 같은 데이터를 쓰는 새로운 화면 추가하기 용이해진다
- 확장성 : 앱이 점점 커지면, 하나의 ViewController 파일이 너무 커지고 복잡해짐
<br>
<br>


- **View** : UI만 담당
  → templete : ``SwiftUI View``
- **ViewModel** : 데이터 가공 후 View에 제공
  → templete : ``Swift File``
- **Model** : 실제 데이터를 처리
  → templete : ``Swift File


## 5.  Stack View
---
### 5.1 Layout vs View
- View : 화면에 실제로 보이는 하나하나의 요소들
  → But, SwiftUI에서는 ContentView
  e.g. ``Text``, ``Image``, ``Button``, ``Circle`` 등
- Layout : View들을 어떻게 배치할지 결정하는 틀
  e.g. `VStack`, `HStack`, `ZStack`
  → But, SwiftUI에서는 LayoutView

### 5.2 Overlay vs ZStack
- Overlay
	- 중심이 되는, 기준이 되는 View에 무언가 살짝 첨가하고 싶을 때
	```Swift
	
	Text("Hello")
    .overlay {
        Rectangle().fill(Color.red)
    }

	```
	-  ``Text`` View가  기준이 되어, 그 위에 ``Rectangle`` View를 겹침(Overlay)
		→ 즉, ``Text`` View 크기대로 먼저 공간을 잡고, 그 위에 ``Rectangle`` 을 얹은 형태
		→ Rectangle Size 조절해도 Text 크기는 변하지 않음
		- Layout 계산 순서로 생각하면 좋을 듯! : ``Text`` → ``Rectangle``
- ZStack
	- 중심/기준 View 없음. 모두 동등한 관계
	- 전체 Layout을 직접 컨드롤하고, 각각의 뷰가 모두 중심 역할을 하게 할 때
	``` Swift
	ZStack {
	    Image("weather_background") // 배경 사진
	        .resizable()
	        .scaledToFill()
	
	    VStack {
	        Text("18°") // 온도
	            .font(.system(size: 64))
	        Text("Cloudy")
	            .font(.title)
	    }
	
	    VStack {
	        Spacer() // 시간
	        Text("서울, 오후 3시 기준")
	            .padding()
	    }
	}

	```
	- 배경 영역, 온도 영역, 시간 영역이 각각 독립적으로 존재하고, 이걸 합치는 것.


### 5.3 Border vs Spacer
- ``border`` : 


### 5.4 Padding, Frame(정적, 동적)