import java.time.LocalDateTime
import java.io.FileOutputStream

// 两位，第一位10表示是否放假，第二位10表示是否在签到时间
// 例：当今天放假且在需要签到的时间时返回11
object CheckTime {

  def main(args: Array[String]): Unit = {
    val fos = new FileOutputStream("checkTimeOutput.txt", true)

    val jiaban = if (args.length >= 1) args(0) else "0"
    val jiejiari = if (args.length >= 2) args(1) else "3000-1-1"
    val today = LocalDateTime.now()
    val dayOfWeek = today.getDayOfWeek.toString

    val isSignInTime = if (today.getHour <= 9 || (today.getHour == 10 && today.getMinute <= 30)) "1" else "0"
//    val isSignInTime = if (today.isBefore(LocalDateTime.of(today.getYear, today.getMonth, today.getDayOfMonth, 10, 30))) "1" else "0"
    var isHoliday = if (dayOfWeek == "SUNDAY" || dayOfWeek == "SATURDAY" && jiaban == "0") "1" else "0"
    try {
      val endDay = jiejiari.split("-").map(_.toInt)
      if (today.isBefore(LocalDateTime.of(endDay(0), endDay(1), endDay(2), 23, 59))) isHoliday = "1"
    } catch {
      case e: Exception => fos.write("时间格式不正确，默认为节假日，请检查配置文件 \n".getBytes)
    }

    fos.write(s"[${today.toString}]---jiejiari:${jiejiari}  isSignInTime:${isSignInTime}  isHoliday:${isHoliday}  dayOfWeek:${dayOfWeek} \n".getBytes)
    fos.close()
    print(isHoliday + isSignInTime)
  }
}