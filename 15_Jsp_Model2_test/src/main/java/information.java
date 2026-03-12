import lombok.Data;

public class information {
@Data
    private String name;
    private String age;
    private String gender;
    private String habit;

    public information(String name, String age, String gender, String habit) {
        this.name = name;
        this.age = age;
        this.gender = gender;
        this.habit = habit;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAge() {
        return age;
    }

    public void setAge(String age) {
        this.age = age;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getHabit() {
        return habit;
    }

    public void setHabit(String habit) {
        this.habit = habit;
    }
}
