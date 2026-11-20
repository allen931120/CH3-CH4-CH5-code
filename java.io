import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;

public class HW3_Q4_IoExample {
    public static void main(String[] args) {
        String fileName = "car_record.txt";

        // 1. 使用 try-with-resources 自動關閉檔案串流並寫入資料
        try (BufferedWriter bw = new BufferedWriter(new FileWriter(fileName))) {
            bw.write("車號：1234，汽油量：20.5");
            bw.newLine();
            bw.write("車號：5678，汽油量：35.0");
            System.out.println("資料已成功寫入 " + fileName);
        } catch (IOException e) {
            System.out.println("寫入檔案發生錯誤：" + e.getMessage());
        }

        // 2. 讀取檔案內容並顯示
        System.out.println("\n讀取檔案內容如下：");
        try (BufferedReader br = new BufferedReader(new FileReader(fileName))) {
            String line;
            while ((line = br.readLine()) != null) {
                System.out.println(line);
            }
        } catch (IOException e) {
            System.out.println("讀取檔案發生錯誤：" + e.getMessage());
        }
    }
}
