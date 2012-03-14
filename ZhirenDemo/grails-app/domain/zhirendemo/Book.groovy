package zhirendemo

@ChineseEntity(name = '著作')

class Book {


    @ChineseColumn(name = '书名')
    String bookName
    @ChineseColumn(name = '出版日期')
    Date publishDate
    @ChineseColumn(name = 'ISBN编码')
    String isdnNumber
    @ChineseColumn(name = '销售价格')
    BigDecimal sellingPrice
    @ChineseColumn(name = '备注')
    String memo
    @ChineseColumn(name = '作者')
    Author author

    //static hasOne = [author]
    static constraints = {
	bookName()
	isdnNumber()
	publishDate()
	sellingPrice()
	memo()
    }
}