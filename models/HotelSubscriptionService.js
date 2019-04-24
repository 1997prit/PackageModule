var db = require("../dbConnection");
var hotelSubscriptionService={
    
  //----------------------------get request for package list and no of hotels displayed---------------------------

  
  getServicesBySubscription: function(sub_id, callback) {
    return db.query(
      "SELECT bhser.service_id, bhser.service_name FROM bns_hotel_subscriptions as bhs, bns_subscription_services as bss, bns_hotel_services as bhser where bhs.sub_id=bss.sub_id AND bss.service_id=bhser.service_id and bhs.sub_id=?",
      [sub_id],
      callback
    );
  },
  getSubscriptionDetails: function(callback) {
        return db.query(
          "select bhs.sub_id as sub_id,bhs.subscription as Package_Name, bhs.sub_type_id, bhs.created_at as Created_On,bha.fname as Created_By,COUNT(bh.hotel_id) as No_Of_Hotels,bhs.payable_amt as Payable_Amount FROM bns_hotel_subscriptions as bhs, bns_hotel_admin as bha,bns_hotels as bh WHERE bhs.created_by=bha.id and bh.sub_id = bhs.sub_id GROUP BY bh.sub_id",
          callback
        );
  },
    
  addSubscriptionService: function(hotelSubscriptionService, callback) {
    return db.query(
      "insert into bns_subscription_services (sub_id,service_id,is_active,created_by,created_at) values (?,?,?,?,?)",
      [
        hotelSubscriptionService.sub_id,
        hotelSubscriptionService.service_id,
        hotelSubscriptionService.is_active,
        hotelSubscriptionService.created_by,
        hotelSubscriptionService.created_at
      ],
      callback
    );
  },

  deleteSubscriptionService: function(sub_id, callback) {
    return db.query(
      "delete from bns_subscription_services where sub_id in (?)",
      [sub_id],
      callback
    );
  }

};

module.exports=hotelSubscriptionService;