package zhirendemo

@ChineseEntity(name = '作者')

class Author {


    @ChineseColumn(name = '名')
    String firstName
    @ChineseColumn(name = '姓')
    String lastName
    @ChineseColumn(name = '年龄')
    Integer age
    @ChineseColumn(name = '性别')
    String maleFemale

    static constraints = {
	lastName()
	firstName()
	maleFemale(inList:['男','女'],nullable:false)
	age()
    }

    String toString(){
	"$lastName" + "$firstName"
    }
}
