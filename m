Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 360B656970
	for <lists+driverdev-devel@lfdr.de>; Wed, 26 Jun 2019 14:41:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8E16D86767;
	Wed, 26 Jun 2019 12:41:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Uw5vqSkrlkn7; Wed, 26 Jun 2019 12:41:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id EE9B986773;
	Wed, 26 Jun 2019 12:41:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 85B111BF3E8
 for <devel@linuxdriverproject.org>; Wed, 26 Jun 2019 12:41:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8256121544
 for <devel@linuxdriverproject.org>; Wed, 26 Jun 2019 12:41:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dOxGz+bXoW2n for <devel@linuxdriverproject.org>;
 Wed, 26 Jun 2019 12:41:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa5.microchip.iphmx.com (esa5.microchip.iphmx.com
 [216.71.150.166])
 by silver.osuosl.org (Postfix) with ESMTPS id 2A02920411
 for <devel@driverdev.osuosl.org>; Wed, 26 Jun 2019 12:41:05 +0000 (UTC)
Received-SPF: Pass (esa5.microchip.iphmx.com: domain of
 Ajay.Kathat@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Ajay.Kathat@microchip.com";
 x-sender="Ajay.Kathat@microchip.com"; x-conformance=spf_only;
 x-record-type="v=spf1"; x-record-text="v=spf1 mx
 a:ushub1.microchip.com a:smtpout.microchip.com
 a:mx1.microchip.iphmx.com a:mx2.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa5.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Ajay.Kathat@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa5.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Ajay.Kathat@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
X-IronPort-AV: E=Sophos;i="5.63,419,1557212400"; d="scan'208";a="37422369"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 26 Jun 2019 05:40:48 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.87.152) by
 chn-vm-ex04.mchp-main.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 26 Jun 2019 05:41:58 -0700
Received: from NAM02-BL2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 26 Jun 2019 05:41:57 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector1-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wPQZ3ICmSUkvJ0fraY2jeUgwXtmfOjMYWzu3xWPfJjQ=;
 b=hXIZoRThNhuAIbLJFQsmTaqlh7PxhDG3/uPpGxAR2SpMt2BsUSyvfz3TN/Nhvfsm1mtH9WtgZmfUPpMVNp9gOchpaQJR2k/JduSlJh12Erk7CfXITJ9IRnRH5e7uflAePMtUE62WzF+akAxJ6Z2+fM3eoRX5MWsb4sG/+F3d8Qc=
Received: from BN6PR11MB3985.namprd11.prod.outlook.com (10.255.129.78) by
 BN6PR11MB3987.namprd11.prod.outlook.com (10.255.128.161) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2008.16; Wed, 26 Jun 2019 12:40:45 +0000
Received: from BN6PR11MB3985.namprd11.prod.outlook.com
 ([fe80::49ee:ab78:412:48ac]) by BN6PR11MB3985.namprd11.prod.outlook.com
 ([fe80::49ee:ab78:412:48ac%5]) with mapi id 15.20.2008.017; Wed, 26 Jun 2019
 12:40:45 +0000
From: <Ajay.Kathat@microchip.com>
To: <linux-wireless@vger.kernel.org>
Subject: [PATCH 1/8] staging: wilc1000: handle p2p operations in caller context
Thread-Topic: [PATCH 1/8] staging: wilc1000: handle p2p operations in caller
 context
Thread-Index: AQHVLBxfUqbQa+WO8EegtAG6KsyhlA==
Date: Wed, 26 Jun 2019 12:40:45 +0000
Message-ID: <1561552810-8933-2-git-send-email-ajay.kathat@microchip.com>
References: <1561552810-8933-1-git-send-email-ajay.kathat@microchip.com>
In-Reply-To: <1561552810-8933-1-git-send-email-ajay.kathat@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: BM1PR0101CA0066.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:b00:19::28) To BN6PR11MB3985.namprd11.prod.outlook.com
 (2603:10b6:405:7b::14)
x-mailer: git-send-email 2.7.4
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [183.82.16.72]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7abee900-4a5e-47fe-fb53-08d6fa33821a
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BN6PR11MB3987; 
x-ms-traffictypediagnostic: BN6PR11MB3987:
x-microsoft-antispam-prvs: <BN6PR11MB3987E333F0AFC3626E9C98C7E3E20@BN6PR11MB3987.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:397;
x-forefront-prvs: 00808B16F3
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(39860400002)(366004)(376002)(136003)(396003)(189003)(199004)(3846002)(11346002)(305945005)(476003)(2616005)(5660300002)(99286004)(54906003)(25786009)(8676002)(486006)(81156014)(81166006)(8936002)(66066001)(7736002)(66476007)(66556008)(64756008)(66446008)(6116002)(66946007)(6486002)(50226002)(446003)(107886003)(68736007)(52116002)(73956011)(14444005)(256004)(4326008)(6436002)(316002)(478600001)(386003)(72206003)(53936002)(2906002)(102836004)(6512007)(2501003)(6916009)(76176011)(86362001)(186003)(6506007)(36756003)(71190400001)(78486014)(14454004)(26005)(2351001)(71200400001)(5640700003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN6PR11MB3987;
 H:BN6PR11MB3985.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 1f+mo6ICKu/6/p8YqRS7ojp4IUqdWmQEKRjnHgaR1RxBrwjH/p5sEOqWYehfwVOi2O9R3wiL87JKrX6/LUDIcbwnPGvh4PlPJwWkAfSOL4HrDZiJ/4Qm02+Rij/ly1F3BX5kCdD9vprj9J0fUp46CqiaxTaG4HSoC16I2vAohOkFN9L9NMzNi8dwY4dneyOG+77bNn/oDLPIfWic6BE3pWkvBerdeEDaM+kqWKfYEmKFnPJkrpoEFqEWbOQqnqiE9fTNMIrWiVxluA/K3OiJHwDS6v8d6DWH1yKMY3d+TU+LGTPm5Nv/SN8e+iWgbsNJVxnKdSL6Wrm0AZVlRkHBbgCqKtmb58peHA70CMFWHueIm1iNeL70MoV1ApgXKm8ImVBAJyFGvMxJaUzaINdK4DZdfjhNXaxWtaJEjPseJd0=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 7abee900-4a5e-47fe-fb53-08d6fa33821a
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Jun 2019 12:40:45.6534 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ajay.kathat@microchip.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB3987
X-BeenThere: driverdev-devel@linuxdriverproject.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux Driver Project Developer List
 <driverdev-devel.linuxdriverproject.org>
List-Unsubscribe: <http://driverdev.linuxdriverproject.org/mailman/options/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=unsubscribe>
List-Archive: <http://driverdev.linuxdriverproject.org/pipermail/driverdev-devel/>
List-Post: <mailto:driverdev-devel@linuxdriverproject.org>
List-Help: <mailto:driverdev-devel-request@linuxdriverproject.org?subject=help>
List-Subscribe: <http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=subscribe>
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 johannes@sipsolutions.net, Ajay.Kathat@microchip.com,
 Adham.Abozaeid@microchip.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Ajay Singh <ajay.kathat@microchip.com>

Moved the handling of p2p related operation in the caller context instead
of using workqueue.

Signed-off-by: Ajay Singh <ajay.kathat@microchip.com>
---
 drivers/staging/wilc1000/host_interface.c | 46 ++++++++++++-------------------
 1 file changed, 17 insertions(+), 29 deletions(-)

diff --git a/drivers/staging/wilc1000/host_interface.c b/drivers/staging/wilc1000/host_interface.c
index 13c991535..b505990 100644
--- a/drivers/staging/wilc1000/host_interface.c
+++ b/drivers/staging/wilc1000/host_interface.c
@@ -965,11 +965,8 @@ static int handle_remain_on_chan(struct wilc_vif *vif,
 	return 0;
 }
 
-static void handle_listen_state_expired(struct work_struct *work)
+static int wilc_handle_roc_expired(struct wilc_vif *vif, u64 cookie)
 {
-	struct host_if_msg *msg = container_of(work, struct host_if_msg, work);
-	struct wilc_vif *vif = msg->vif;
-	struct wilc_remain_ch *hif_remain_ch = &msg->body.remain_on_ch;
 	u8 remain_on_chan_flag;
 	struct wid wid;
 	int result;
@@ -981,10 +978,10 @@ static void handle_listen_state_expired(struct work_struct *work)
 		wid.id = WID_REMAIN_ON_CHAN;
 		wid.type = WID_STR;
 		wid.size = 2;
-		wid.val = kmalloc(wid.size, GFP_KERNEL);
 
+		wid.val = kmalloc(wid.size, GFP_KERNEL);
 		if (!wid.val)
-			goto free_msg;
+			return -ENOMEM;
 
 		wid.val[0] = remain_on_chan_flag;
 		wid.val[1] = WILC_FALSE_FRMWR_CHANNEL;
@@ -994,18 +991,25 @@ static void handle_listen_state_expired(struct work_struct *work)
 		kfree(wid.val);
 		if (result != 0) {
 			netdev_err(vif->ndev, "Failed to set remain channel\n");
-			goto free_msg;
+			return -EINVAL;
 		}
 
 		if (hif_drv->remain_on_ch.expired) {
 			hif_drv->remain_on_ch.expired(hif_drv->remain_on_ch.arg,
-						      hif_remain_ch->cookie);
+						      cookie);
 		}
 	} else {
 		netdev_dbg(vif->ndev, "Not in listen state\n");
 	}
 
-free_msg:
+	return 0;
+}
+
+static void wilc_handle_listen_state_expired(struct work_struct *work)
+{
+	struct host_if_msg *msg = container_of(work, struct host_if_msg, work);
+
+	wilc_handle_roc_expired(msg->vif, msg->body.remain_on_ch.cookie);
 	kfree(msg);
 }
 
@@ -1019,7 +1023,7 @@ static void listen_timer_cb(struct timer_list *t)
 
 	del_timer(&vif->hif_drv->remain_on_ch_timer);
 
-	msg = wilc_alloc_work(vif, handle_listen_state_expired, false);
+	msg = wilc_alloc_work(vif, wilc_handle_listen_state_expired, false);
 	if (IS_ERR(msg))
 		return;
 
@@ -1841,30 +1845,14 @@ int wilc_remain_on_channel(struct wilc_vif *vif, u64 cookie,
 
 int wilc_listen_state_expired(struct wilc_vif *vif, u64 cookie)
 {
-	int result;
-	struct host_if_msg *msg;
-	struct host_if_drv *hif_drv = vif->hif_drv;
-
-	if (!hif_drv) {
+	if (!vif->hif_drv) {
 		netdev_err(vif->ndev, "%s: hif driver is NULL", __func__);
 		return -EFAULT;
 	}
 
-	del_timer(&hif_drv->remain_on_ch_timer);
-
-	msg = wilc_alloc_work(vif, handle_listen_state_expired, false);
-	if (IS_ERR(msg))
-		return PTR_ERR(msg);
-
-	msg->body.remain_on_ch.cookie = cookie;
-
-	result = wilc_enqueue_work(msg);
-	if (result) {
-		netdev_err(vif->ndev, "%s: enqueue work failed\n", __func__);
-		kfree(msg);
-	}
+	del_timer(&vif->hif_drv->remain_on_ch_timer);
 
-	return result;
+	return wilc_handle_roc_expired(vif, cookie);
 }
 
 void wilc_frame_register(struct wilc_vif *vif, u16 frame_type, bool reg)
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
