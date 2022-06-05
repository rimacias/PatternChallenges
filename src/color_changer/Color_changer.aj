package color_changer;

import javafx.scene.layout.StackPane;

public aspect Color_changer {
	pointcut successRed(): call(* *Red(..));
	after(): successRed(){
		Object[] parameterList = thisJoinPoint.getArgs();
		StackPane root = (StackPane) parameterList[0]; 
		root.setStyle("-fx-background-color: #ff0000");
	}
		
	
}
