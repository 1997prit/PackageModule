var express = require("express");
var router = express.Router();
var subscription = require("../models/HotelSubscription");
var insertid=0;
router.get("/getsubscriptiondetails", function(req, res, next) {
  subscription.getSubscriptionDetails(function(err, rows) {
    if (err) {
      res.json(err);
    } else {
      res.json(rows);
    }
  });
});

router.get("/getservicesbysubscription/:sub_id", function(req, res, next) {
  subscription.getServicesBySubscription(req.params.sub_id, function(
    err,
    rows
  ) {
    if (err) {
      res.json(err);
    } else {
      res.json(rows);
    }
  });
});

router.get("/getsubscriptionname/:sub_type_id", function(req, res, next) {
  subscription.getSubscriptionName(req.params.sub_type_id, function(err, rows) {
    if (err) {
      res.json(err);
    } else {
      res.json(rows);
    }
  });
});

router.get("/getsubscriptionbyid/:sub_id", function(req, res, next) {
  subscription.getSubscriptionBySubId(req.params.sub_id, function(err, rows) {
    if (err) {
      res.json(err);
    } else {
      res.json(rows);
    }
  });
});
router.post("/addsubscription", function(req, res, next) {
  subscription.addSubscription(req.body, function(err, rows) {
    if (err) {
      res.json(err);
    } else {
      res.json(rows);
      this.insertid=rows.insertId;    
    }
  });
});
router.post("/addsubscriptionserviceaudit", function(req, res, next) {
  
  subscription.addSubscriptionServiceAudit(req.body, function(err, rows) {
    if (err) {
      res.json(err);
    } else {
      res.json(rows);
    }
  });
});

module.exports = router;
