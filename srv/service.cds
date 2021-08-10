using { yuvalapp1 as my } from '../db/schema';
using {Northwind_full_url} from './external/Northwind_full_url.csn';
using {API_BUSINESS_PARTNER} from './external/API_BUSINESS_PARTNER.csn';
using {ZGWDEMO} from './external/ZGWDEMO.csn';
using {ZPAGE_BUILDER_CONF} from './external/ZPAGE_BUILDER_CONF.csn';


@path : 'service/yuvalapp1'

service yuvalapp1Service
{
        @readonly
    entity Categories as projection on Northwind_full_url.Categories{
         key CategoryID, CategoryName, Description
    }
    entity Customers as projection on Northwind_full_url.Customers{
        CustomerID, CompanyName
    }
            @readonly
    entity BusinessPartner as projection on API_BUSINESS_PARTNER.A_BusinessPartner{
         key BusinessPartner, BusinessPartnerFullName
    }
   entity Customer as projection on API_BUSINESS_PARTNER.A_Customer{
         key Customer, CustomerFullName
   }
            @readonly
    entity CurrencyCollection as projection on ZGWDEMO.CurrencyCollection{
         key CurrencyCode, CurrencyDescription
    }
   entity CountryCollection as projection on ZGWDEMO.CountryCollection{
         key CountryCode, CountryText
   }

               @readonly
    entity Pages as projection on ZPAGE_BUILDER_CONF.Pages{
         key id, title
    }
   entity Catalogs as projection on ZPAGE_BUILDER_CONF.Catalogs{
         key id, title
   }

 


}
