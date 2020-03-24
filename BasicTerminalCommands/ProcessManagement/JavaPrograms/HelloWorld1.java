
public class HelloWorld1 {

	public static void main(String[] args){
			while(true){
				System.out.println("Hello Terminal");
				try{
					Thread.sleep(6000);
				}catch(Exception ex){
					System.out.println(ex);
				}
			}
	}


}
