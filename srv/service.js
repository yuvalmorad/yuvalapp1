const cds = require('@sap/cds');
module.exports = async (srv) => {

    // Using CDS API
    const Northwind_full_url = await cds.connect.to("Northwind_full_url");
    srv.on('READ', 'Categories', req => Northwind_full_url.run(req.query));
    srv.on('READ', 'Customers', req => Northwind_full_url.run(req.query));

     const API_BUSINESS_PARTNER = await cds.connect.to("API_BUSINESS_PARTNER");
    srv.on('READ', 'BusinessPartner', req => API_BUSINESS_PARTNER.run(req.query));
    srv.on('READ', 'Customer', req => API_BUSINESS_PARTNER.run(req.query));

     const ZGWDEMO = await cds.connect.to("ZGWDEMO");
    srv.on('READ', 'CurrencyCollection', req => ZGWDEMO.run(req.query));
    srv.on('READ', 'CountryCollection', req => ZGWDEMO.run(req.query));

     const ZPAGE_BUILDER_CONF = await cds.connect.to("ZPAGE_BUILDER_CONF");
    srv.on('READ', 'Pages', req => ZPAGE_BUILDER_CONF.run(req.query));
    srv.on('READ', 'Catalogs', req => ZPAGE_BUILDER_CONF.run(req.query));


}


