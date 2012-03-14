package zhirendemo
import org.codehaus.groovy.grails.commons.*

class ColumnNameService {


	static String getSingleCloumnName(GrailsDomainClassProperty prop){
		def domainClass = ((prop.getDomainClass()).newInstance()).getClass()
		def col = (domainClass.getDeclaredField(prop.name)).getAnnotation(ChineseColumn.class)
		if (col != null){
			return col.name()
		}
		else{
			return prop.name
		}
	}

	static String getEntityName(GrailsDomainClass grailsDomainClass){
		def domainClass = (grailsDomainClass.newInstance()).getClass()
		def col = domainClass.getAnnotation(ChineseEntity.class)
		if (col != null){
			return col.name()
		}
		else{
			return grailsDomainClass.getName()
		}
	}
}
