# 모든 컴포넌트가 지원하는 리스너

|이름|설명|
|---|---|
|ComponentEvent|컴포넌트 위치 및 크기가 변경되면 발생|
|FocusEvent|키보드 입력을 받거나 입력을 받지 않는 경우에 발생|
|ContainerEvent|컨테이너에 컴포넌트가 추가 혹은 삭제될 경우 발생|
|KeyEvent|키를 누르면, 키보드 포커스를 가지고 있는 객체에서 발생|
|MouseEvent|마우스가 Clicked, Pressed, Released, Entered, Exited의 상황에서 발생|
|MouseMotionEvent|마우스가 움직였을 때 발생|
|MouseWheelEvent|컴포넌트 위에서 마우스 휠을 움직이면 발생|
|WindowEvent|윈도우가 열리거나 닫히거나 아이콘화 되는 등과 같이 어떤 변화가 있을 때 발생|

# 일부만 지원하는 리스너

|이름|설명|지원|
|---|---|---|
|ActionEvent|사용자가 어떤 동작을 할 경우 발생|JButton, JCheckBox, JComboBox, JFileChooser, JMenuItem, JRadioButton,  JTextField|
|CaretEvent|텍스트 삽입점이 이동하거나 텍스트 선택이 변경될 경우 발생|JTextArea, JTextField|
|ChangeEvent|객체의 상태가 변경되었을 경우 발생|JButton, JCheckBox, JColorChooser, JMenuItem, JProgressBar, JRadioButton, JSlider, JSpinner|
|DocumentEvent|문서의 상태가 변경되는 경우 발생|JTextArea, JTextField|
|ItemEvent|선택 가능한 컴포넌트에서 사용자가 선택하는 경우 발생|JButton, JCheckBox, JComboBox, JMenuItem, JRadioButton|
ListSelectionEvent|테이블이나 리스트에서 선택이 변경되면 발생|JList, JTable|
|TreeSelectionEvent|트리 구조의 컴포넌트에서 선택이 변경되면 발생|JTree