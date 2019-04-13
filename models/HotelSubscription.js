var db = require("../dbConnection.js");
var package = {
  getSubscriptionBySubId: function(sub_id, callback) {
    return db.query(
      "select bhs.sub_type as sub_type,bhs.subscription as subscription,bhst.sub_type_id as sub_type_id, bhs.payable_amt as payable_amt FROM bns_hotel_subscriptions as bhs,bns_hotel_subscription_type as bhst WHERE  bhs.sub_type_id=bhst.sub_type_id and bhs.sub_id = ?",
      [sub_id],
      callback
    );
  },
  getSubscriptionDetails: function(callback) {
    return db.query(
      "select bhs.subscription as Package_Name, bhs.created_at as Created_On,bha.fname as Created_By,COUNT(bh.hotel_id) as No_Of_Hotels,bhs.payable_amt as Payable_Amount FROM bns_hotel_subscriptions as bhs, bns_hotel_admin as bha,bns_hotels as bh WHERE bhs.created_by=bha.id and bh.sub_id = bhs.sub_id GROUP BY bh.sub_id",
      callback
    );
  },
  getServicesBySubscription: function(sub_id, callback) {
    return db.query(
      "SELECT bhser.service_id, bhser.service_name FROM bns_hotel_subscriptions as bhs, bns_subscription_services as bss, bns_hotel_services as bhser where bhs.sub_id=bss.sub_id AND bss.service_id=bhser.service_id and bhs.sub_id=?",
      [sub_id],
      callback
    );
  },
  getSubscriptionName: function(sub_type_id, callback) {
    return db.query(
      "SELECT bhs.subscription as Package_Name from bns_hotel_subscriptions as bhs WHERE bhs.sub_type_id=?",
      [sub_type_id],
      callback
    );
  },
  addSubscription: function(subscription, callback) {
    return db.query(
      "insert into bns_hotel_subscriptions (subscription,sub_type_id,is_active,payable_amt,created_by,created_at) values (?,?,?,?,?,?)",
      [
        subscription.subscription,
        subscription.sub_type_id,
        subscription.is_active,
        subscription.payable_amt,
        subscription.created_by,
        subscription.created_at
      ],
      callback
    );
  },
  addSubscriptionServiceAudit: function(subscriptionservice, callback) {
    // for (var i = 0; i < subscriptionservice.service_id.length; i++) {
    //   db.query(
    //     "insert into bns_subscription_services_audit (sub_id,service_id,is_active,created_by,created_at) values (?,?,?,?,?)",
    //     [
    //       subscriptionservice.sub_id,
    //       subscriptionservice.service_id,
    //       subscriptionservice.is_active,
    //       subscriptionservice.created_by,
    //       subscriptionservice.created_at
    //     ],
    //     callback
    //   );
    // }
    return db.query(
      "insert into bns_subscription_services_audit (sub_id,service_id,is_active,created_by,created_at) values (?,?,?,?,?)",
      [
        subscriptionservice.sub_id,
        subscriptionservice.service_id,
        subscriptionservice.is_active,
        subscriptionservice.created_by,
        subscriptionservice.created_at
      ],
      callback
    );
  }
};
module.exports = package;
