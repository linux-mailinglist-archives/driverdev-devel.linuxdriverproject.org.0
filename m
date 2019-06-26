Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E6BF56988
	for <lists+driverdev-devel@lfdr.de>; Wed, 26 Jun 2019 14:42:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id F22E38687B;
	Wed, 26 Jun 2019 12:42:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bKIFxn8ElFcU; Wed, 26 Jun 2019 12:42:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8D5478671E;
	Wed, 26 Jun 2019 12:41:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id F3FD21BF3E8
 for <devel@linuxdriverproject.org>; Wed, 26 Jun 2019 12:41:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id F04BA8671E
 for <devel@linuxdriverproject.org>; Wed, 26 Jun 2019 12:41:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zxMZkYKujIkq for <devel@linuxdriverproject.org>;
 Wed, 26 Jun 2019 12:41:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa3.microchip.iphmx.com (esa3.microchip.iphmx.com
 [68.232.153.233])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 00DC486767
 for <devel@driverdev.osuosl.org>; Wed, 26 Jun 2019 12:41:49 +0000 (UTC)
Received-SPF: Pass (esa3.microchip.iphmx.com: domain of
 Ajay.Kathat@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Ajay.Kathat@microchip.com";
 x-sender="Ajay.Kathat@microchip.com"; x-conformance=spf_only;
 x-record-type="v=spf1"; x-record-text="v=spf1 mx
 a:ushub1.microchip.com a:smtpout.microchip.com
 a:mx1.microchip.iphmx.com a:mx2.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa3.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Ajay.Kathat@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa3.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Ajay.Kathat@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
X-IronPort-AV: E=Sophos;i="5.63,419,1557212400"; d="scan'208";a="39093252"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 26 Jun 2019 05:41:08 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.87.71) by
 chn-vm-ex03.mchp-main.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 26 Jun 2019 05:42:17 -0700
Received: from NAM04-SN1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5 via Frontend
 Transport; Wed, 26 Jun 2019 05:41:06 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector1-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xySg/x291HlYEeszQo3jspOhhrnv2dHwFaEe52fqAFo=;
 b=omjaUhTCrqyUcsahEeTnEXkId6xQcxd4pmqBX/6vXpWi7Ej0COYWF0HMxjy9g0sgf5iY5W9ZNjy6TRC29aBW2rS1n3qRnC/cUOTyR0ErAdb7Fr2gFFvjhyqapBiTseIgD5lfYl039A6MyHbXTwwwKHyCTqKaDOxwweuwG30P+AI=
Received: from BN6PR11MB3985.namprd11.prod.outlook.com (10.255.129.78) by
 BN6PR11MB3907.namprd11.prod.outlook.com (10.255.131.93) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2008.16; Wed, 26 Jun 2019 12:41:04 +0000
Received: from BN6PR11MB3985.namprd11.prod.outlook.com
 ([fe80::49ee:ab78:412:48ac]) by BN6PR11MB3985.namprd11.prod.outlook.com
 ([fe80::49ee:ab78:412:48ac%5]) with mapi id 15.20.2008.017; Wed, 26 Jun 2019
 12:41:04 +0000
From: <Ajay.Kathat@microchip.com>
To: <linux-wireless@vger.kernel.org>
Subject: [PATCH 7/8] staging: wilc1000: remove extra argument passing to
 wilc_send_config_pkt()
Thread-Topic: [PATCH 7/8] staging: wilc1000: remove extra argument passing to
 wilc_send_config_pkt()
Thread-Index: AQHVLBxrHYHotpDogEaULqn7rRJTfg==
Date: Wed, 26 Jun 2019 12:41:04 +0000
Message-ID: <1561552810-8933-8-git-send-email-ajay.kathat@microchip.com>
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
x-ms-office365-filtering-correlation-id: 788349a6-e1b3-4d52-eb61-08d6fa338d38
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BN6PR11MB3907; 
x-ms-traffictypediagnostic: BN6PR11MB3907:
x-microsoft-antispam-prvs: <BN6PR11MB3907BB689D6BA48DFE5C515BE3E20@BN6PR11MB3907.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2512;
x-forefront-prvs: 00808B16F3
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(346002)(39860400002)(366004)(396003)(376002)(199004)(189003)(476003)(14454004)(54906003)(81166006)(8936002)(2616005)(446003)(53946003)(486006)(81156014)(6506007)(6436002)(6512007)(386003)(186003)(11346002)(5640700003)(102836004)(36756003)(316002)(6116002)(3846002)(26005)(2906002)(72206003)(478600001)(66066001)(50226002)(66446008)(2501003)(5660300002)(6486002)(107886003)(66556008)(64756008)(2351001)(86362001)(25786009)(6916009)(4326008)(8676002)(71190400001)(71200400001)(7736002)(76176011)(14444005)(256004)(99286004)(68736007)(305945005)(52116002)(78486014)(30864003)(53936002)(66476007)(73956011)(66946007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN6PR11MB3907;
 H:BN6PR11MB3985.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: FnLW/cSG44b12gK/zZJYzU/yav0N204+yJXrGDVVdCEBpxCTJaS9QUPVgG3WzKyoOAwn9iauKW6S1Z/ufUS/FQZLHi5nBtGkCsVG4vsx0OF9e4fh3D5GxxcwcslzVgUbUUsVuKrM+is46RGzi3U6eqKg5hWaIYjFt12v5bzSfIRgrO+GLLfdeR9UVx40FP05PiK7kbrG2aiiMaL7L8KyWqmAoY+kZ9h7EkuuPE9Wn+MisDgvz5UMqV7MMeIXMdvnrqG2cObEryWAWcZjhv1DDgmLNzVsBlu5cfIuvsR49l87msKyXC+liP5UWMYdgxAbsR1Cncn92rc0sD2ZC6cJJK1vnJ5Vl5nV0n+ZqZOkmKqwKpmfdut4t/lq2evu9WnjZBt+rQaWj3tvIn/9TkEIRIJKUVkfVKIxObpxzFQemxg=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 788349a6-e1b3-4d52-eb61-08d6fa338d38
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Jun 2019 12:41:04.4644 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ajay.kathat@microchip.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB3907
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

Cleanup patch to remove the passing of driver handler, get the 'idx'
value inside the called function.

Signed-off-by: Ajay Singh <ajay.kathat@microchip.com>
---
 drivers/staging/wilc1000/host_interface.c | 116 ++++++++++--------------------
 drivers/staging/wilc1000/wilc_wlan.c      |   3 +-
 drivers/staging/wilc1000/wilc_wlan.h      |   2 +-
 3 files changed, 40 insertions(+), 81 deletions(-)

diff --git a/drivers/staging/wilc1000/host_interface.c b/drivers/staging/wilc1000/host_interface.c
index 3688088..9345cab 100644
--- a/drivers/staging/wilc1000/host_interface.c
+++ b/drivers/staging/wilc1000/host_interface.c
@@ -205,9 +205,7 @@ static int handle_scan_done(struct wilc_vif *vif, enum scan_event evt)
 		wid.val = (s8 *)&abort_running_scan;
 		wid.size = sizeof(char);
 
-		result = wilc_send_config_pkt(vif, WILC_SET_CFG, &wid, 1,
-					      wilc_get_vif_idx(vif));
-
+		result = wilc_send_config_pkt(vif, WILC_SET_CFG, &wid, 1);
 		if (result) {
 			netdev_err(vif->ndev, "Failed to set abort running\n");
 			result = -EFAULT;
@@ -328,9 +326,7 @@ int wilc_scan(struct wilc_vif *vif, u8 scan_source, u8 scan_type,
 	hif_drv->usr_scan_req.scan_result = scan_result_fn;
 	hif_drv->usr_scan_req.arg = user_arg;
 
-	result = wilc_send_config_pkt(vif, WILC_SET_CFG, wid_list,
-				      index,
-				      wilc_get_vif_idx(vif));
+	result = wilc_send_config_pkt(vif, WILC_SET_CFG, wid_list, index);
 	if (result) {
 		netdev_err(vif->ndev, "Failed to send scan parameters\n");
 		goto error;
@@ -380,9 +376,7 @@ static int wilc_send_connect_wid(struct wilc_vif *vif)
 	wid_list[wid_cnt].val = (u8 *)bss_param;
 	wid_cnt++;
 
-	result = wilc_send_config_pkt(vif, WILC_SET_CFG, wid_list,
-				      wid_cnt,
-				      wilc_get_vif_idx(vif));
+	result = wilc_send_config_pkt(vif, WILC_SET_CFG, wid_list, wid_cnt);
 	if (result) {
 		netdev_err(vif->ndev, "failed to send config packet\n");
 		goto error;
@@ -430,8 +424,7 @@ static void handle_connect_timeout(struct work_struct *work)
 	wid.val = (s8 *)&dummy_reason_code;
 	wid.size = sizeof(char);
 
-	result = wilc_send_config_pkt(vif, WILC_SET_CFG, &wid, 1,
-				      wilc_get_vif_idx(vif));
+	result = wilc_send_config_pkt(vif, WILC_SET_CFG, &wid, 1);
 	if (result)
 		netdev_err(vif->ndev, "Failed to send disconnect\n");
 
@@ -619,8 +612,7 @@ static void host_int_get_assoc_res_info(struct wilc_vif *vif,
 	wid.val = assoc_resp_info;
 	wid.size = max_assoc_resp_info_len;
 
-	result = wilc_send_config_pkt(vif, WILC_GET_CFG, &wid, 1,
-				      wilc_get_vif_idx(vif));
+	result = wilc_send_config_pkt(vif, WILC_GET_CFG, &wid, 1);
 	if (result) {
 		*rcvd_assoc_resp_info_len = 0;
 		netdev_err(vif->ndev, "Failed to send association response\n");
@@ -783,8 +775,7 @@ int wilc_disconnect(struct wilc_vif *vif)
 	vif->obtaining_ip = false;
 	wilc_set_power_mgmt(vif, 0, 0);
 
-	result = wilc_send_config_pkt(vif, WILC_SET_CFG, &wid, 1,
-				      wilc_get_vif_idx(vif));
+	result = wilc_send_config_pkt(vif, WILC_SET_CFG, &wid, 1);
 	if (result) {
 		netdev_err(vif->ndev, "Failed to send disconnect\n");
 		return result;
@@ -864,10 +855,7 @@ int wilc_get_statistics(struct wilc_vif *vif, struct rf_info *stats)
 	wid_list[wid_cnt].val = (s8 *)&stats->tx_fail_cnt;
 	wid_cnt++;
 
-	result = wilc_send_config_pkt(vif, WILC_GET_CFG, wid_list,
-				      wid_cnt,
-				      wilc_get_vif_idx(vif));
-
+	result = wilc_send_config_pkt(vif, WILC_GET_CFG, wid_list, wid_cnt);
 	if (result) {
 		netdev_err(vif->ndev, "Failed to send scan parameters\n");
 		return result;
@@ -950,8 +938,7 @@ static int handle_remain_on_chan(struct wilc_vif *vif,
 	wid.val[0] = remain_on_chan_flag;
 	wid.val[1] = (s8)hif_remain_ch->ch;
 
-	result = wilc_send_config_pkt(vif, WILC_SET_CFG, &wid, 1,
-				      wilc_get_vif_idx(vif));
+	result = wilc_send_config_pkt(vif, WILC_SET_CFG, &wid, 1);
 	kfree(wid.val);
 	if (result)
 		return -EBUSY;
@@ -986,8 +973,7 @@ static int wilc_handle_roc_expired(struct wilc_vif *vif, u64 cookie)
 		wid.val[0] = remain_on_chan_flag;
 		wid.val[1] = WILC_FALSE_FRMWR_CHANNEL;
 
-		result = wilc_send_config_pkt(vif, WILC_SET_CFG, &wid, 1,
-					      wilc_get_vif_idx(vif));
+		result = wilc_send_config_pkt(vif, WILC_SET_CFG, &wid, 1);
 		kfree(wid.val);
 		if (result != 0) {
 			netdev_err(vif->ndev, "Failed to set remain channel\n");
@@ -1062,8 +1048,7 @@ static void handle_set_mcast_filter(struct work_struct *work)
 	if (set_mc->cnt > 0 && set_mc->mc_list)
 		memcpy(cur_byte, set_mc->mc_list, set_mc->cnt * ETH_ALEN);
 
-	result = wilc_send_config_pkt(vif, WILC_SET_CFG, &wid, 1,
-				      wilc_get_vif_idx(vif));
+	result = wilc_send_config_pkt(vif, WILC_SET_CFG, &wid, 1);
 	if (result)
 		netdev_err(vif->ndev, "Failed to send setup multicast\n");
 
@@ -1139,8 +1124,7 @@ int wilc_remove_wep_key(struct wilc_vif *vif, u8 index)
 	wid.size = sizeof(char);
 	wid.val = &index;
 
-	result = wilc_send_config_pkt(vif, WILC_SET_CFG, &wid, 1,
-				      wilc_get_vif_idx(vif));
+	result = wilc_send_config_pkt(vif, WILC_SET_CFG, &wid, 1);
 	if (result)
 		netdev_err(vif->ndev,
 			   "Failed to send remove wep key config packet\n");
@@ -1156,8 +1140,7 @@ int wilc_set_wep_default_keyid(struct wilc_vif *vif, u8 index)
 	wid.type = WID_CHAR;
 	wid.size = sizeof(char);
 	wid.val = &index;
-	result = wilc_send_config_pkt(vif, WILC_SET_CFG, &wid, 1,
-				      wilc_get_vif_idx(vif));
+	result = wilc_send_config_pkt(vif, WILC_SET_CFG, &wid, 1);
 	if (result)
 		netdev_err(vif->ndev,
 			   "Failed to send wep default key config packet\n");
@@ -1185,8 +1168,7 @@ int wilc_add_wep_key_bss_sta(struct wilc_vif *vif, const u8 *key, u8 len,
 	wep_key->key_len = len;
 	memcpy(wep_key->key, key, len);
 
-	result = wilc_send_config_pkt(vif, WILC_SET_CFG, &wid, 1,
-				      wilc_get_vif_idx(vif));
+	result = wilc_send_config_pkt(vif, WILC_SET_CFG, &wid, 1);
 	if (result)
 		netdev_err(vif->ndev,
 			   "Failed to add wep key config packet\n");
@@ -1225,8 +1207,7 @@ int wilc_add_wep_key_bss_ap(struct wilc_vif *vif, const u8 *key, u8 len,
 	wep_key->key_len = len;
 	memcpy(wep_key->key, key, len);
 	result = wilc_send_config_pkt(vif, WILC_SET_CFG, wid_list,
-				      ARRAY_SIZE(wid_list),
-				      wilc_get_vif_idx(vif));
+				      ARRAY_SIZE(wid_list));
 	if (result)
 		netdev_err(vif->ndev,
 			   "Failed to add wep ap key config packet\n");
@@ -1273,8 +1254,7 @@ int wilc_add_ptk(struct wilc_vif *vif, const u8 *ptk, u8 ptk_key_len,
 		wid_list[1].size = sizeof(*key_buf) + t_key_len;
 		wid_list[1].val = (u8 *)key_buf;
 		result = wilc_send_config_pkt(vif, WILC_SET_CFG, wid_list,
-					      ARRAY_SIZE(wid_list),
-					      wilc_get_vif_idx(vif));
+					      ARRAY_SIZE(wid_list));
 		kfree(key_buf);
 	} else if (mode == WILC_STATION_MODE) {
 		struct wid wid;
@@ -1300,8 +1280,7 @@ int wilc_add_ptk(struct wilc_vif *vif, const u8 *ptk, u8 ptk_key_len,
 		wid.type = WID_STR;
 		wid.size = sizeof(*key_buf) + t_key_len;
 		wid.val = (s8 *)key_buf;
-		result = wilc_send_config_pkt(vif, WILC_SET_CFG, &wid, 1,
-					      wilc_get_vif_idx(vif));
+		result = wilc_send_config_pkt(vif, WILC_SET_CFG, &wid, 1);
 		kfree(key_buf);
 	}
 
@@ -1353,8 +1332,7 @@ int wilc_add_rx_gtk(struct wilc_vif *vif, const u8 *rx_gtk, u8 gtk_key_len,
 		wid_list[1].val = (u8 *)gtk_key;
 
 		result = wilc_send_config_pkt(vif, WILC_SET_CFG, wid_list,
-					      ARRAY_SIZE(wid_list),
-					      wilc_get_vif_idx(vif));
+					      ARRAY_SIZE(wid_list));
 	} else if (mode == WILC_STATION_MODE) {
 		struct wid wid;
 
@@ -1362,8 +1340,7 @@ int wilc_add_rx_gtk(struct wilc_vif *vif, const u8 *rx_gtk, u8 gtk_key_len,
 		wid.type = WID_STR;
 		wid.size = sizeof(*gtk_key) + t_key_len;
 		wid.val = (u8 *)gtk_key;
-		result = wilc_send_config_pkt(vif, WILC_SET_CFG, &wid, 1,
-					      wilc_get_vif_idx(vif));
+		result = wilc_send_config_pkt(vif, WILC_SET_CFG, &wid, 1);
 	}
 
 	kfree(gtk_key);
@@ -1379,8 +1356,7 @@ int wilc_set_pmkid_info(struct wilc_vif *vif, struct wilc_pmkid_attr *pmkid)
 	wid.size = (pmkid->numpmkid * sizeof(struct wilc_pmkid)) + 1;
 	wid.val = (u8 *)pmkid;
 
-	return wilc_send_config_pkt(vif, WILC_SET_CFG, &wid, 1,
-				    wilc_get_vif_idx(vif));
+	return wilc_send_config_pkt(vif, WILC_SET_CFG, &wid, 1);
 }
 
 int wilc_get_mac_address(struct wilc_vif *vif, u8 *mac_addr)
@@ -1393,8 +1369,7 @@ int wilc_get_mac_address(struct wilc_vif *vif, u8 *mac_addr)
 	wid.size = ETH_ALEN;
 	wid.val = mac_addr;
 
-	result = wilc_send_config_pkt(vif, WILC_GET_CFG, &wid, 1,
-				      wilc_get_vif_idx(vif));
+	result = wilc_send_config_pkt(vif, WILC_GET_CFG, &wid, 1);
 	if (result)
 		netdev_err(vif->ndev, "Failed to get mac address\n");
 
@@ -1444,8 +1419,7 @@ int wilc_set_mac_chnl_num(struct wilc_vif *vif, u8 channel)
 	wid.size = sizeof(char);
 	wid.val = &channel;
 
-	result = wilc_send_config_pkt(vif, WILC_SET_CFG, &wid, 1,
-				      wilc_get_vif_idx(vif));
+	result = wilc_send_config_pkt(vif, WILC_SET_CFG, &wid, 1);
 	if (result)
 		netdev_err(vif->ndev, "Failed to set channel\n");
 
@@ -1471,8 +1445,7 @@ int wilc_set_wfi_drv_handler(struct wilc_vif *vif, int index, u8 mode,
 	drv.handler = cpu_to_le32(index);
 	drv.mode = (ifc_id | (mode << 1));
 
-	result = wilc_send_config_pkt(vif, WILC_SET_CFG, &wid, 1,
-				      wilc_get_vif_idx(vif));
+	result = wilc_send_config_pkt(vif, WILC_SET_CFG, &wid, 1);
 	if (result)
 		netdev_err(vif->ndev, "Failed to set driver handler\n");
 
@@ -1492,8 +1465,7 @@ int wilc_set_operation_mode(struct wilc_vif *vif, u32 mode)
 
 	op_mode.mode = cpu_to_le32(mode);
 
-	result = wilc_send_config_pkt(vif, WILC_SET_CFG, &wid, 1,
-				      wilc_get_vif_idx(vif));
+	result = wilc_send_config_pkt(vif, WILC_SET_CFG, &wid, 1);
 	if (result)
 		netdev_err(vif->ndev, "Failed to set operation mode\n");
 
@@ -1513,8 +1485,7 @@ s32 wilc_get_inactive_time(struct wilc_vif *vif, const u8 *mac, u32 *out_val)
 		return -ENOMEM;
 
 	ether_addr_copy(wid.val, mac);
-	result = wilc_send_config_pkt(vif, WILC_SET_CFG, &wid, 1,
-				      wilc_get_vif_idx(vif));
+	result = wilc_send_config_pkt(vif, WILC_SET_CFG, &wid, 1);
 	kfree(wid.val);
 	if (result) {
 		netdev_err(vif->ndev, "Failed to set inactive mac\n");
@@ -1525,8 +1496,7 @@ s32 wilc_get_inactive_time(struct wilc_vif *vif, const u8 *mac, u32 *out_val)
 	wid.type = WID_INT;
 	wid.val = (s8 *)out_val;
 	wid.size = sizeof(u32);
-	result = wilc_send_config_pkt(vif, WILC_GET_CFG, &wid, 1,
-				      wilc_get_vif_idx(vif));
+	result = wilc_send_config_pkt(vif, WILC_GET_CFG, &wid, 1);
 	if (result)
 		netdev_err(vif->ndev, "Failed to get inactive time\n");
 
@@ -1547,8 +1517,7 @@ int wilc_get_rssi(struct wilc_vif *vif, s8 *rssi_level)
 	wid.type = WID_CHAR;
 	wid.size = sizeof(char);
 	wid.val = rssi_level;
-	result = wilc_send_config_pkt(vif, WILC_GET_CFG, &wid, 1,
-				      wilc_get_vif_idx(vif));
+	result = wilc_send_config_pkt(vif, WILC_GET_CFG, &wid, 1);
 	if (result)
 		netdev_err(vif->ndev, "Failed to get RSSI value\n");
 
@@ -1610,8 +1579,7 @@ int wilc_hif_set_cfg(struct wilc_vif *vif, struct cfg_param_attr *param)
 		i++;
 	}
 
-	return wilc_send_config_pkt(vif, WILC_SET_CFG, wid_list,
-				    i, wilc_get_vif_idx(vif));
+	return wilc_send_config_pkt(vif, WILC_SET_CFG, wid_list, i);
 }
 
 static void get_periodic_rssi(struct timer_list *t)
@@ -1876,8 +1844,7 @@ void wilc_frame_register(struct wilc_vif *vif, u16 frame_type, bool reg)
 		break;
 	}
 	reg_frame.frame_type = cpu_to_le16(frame_type);
-	result = wilc_send_config_pkt(vif, WILC_SET_CFG, &wid, 1,
-				      wilc_get_vif_idx(vif));
+	result = wilc_send_config_pkt(vif, WILC_SET_CFG, &wid, 1);
 	if (result)
 		netdev_err(vif->ndev, "Failed to frame register\n");
 }
@@ -1914,8 +1881,7 @@ int wilc_add_beacon(struct wilc_vif *vif, u32 interval, u32 dtim_period,
 	if (params->tail_len > 0)
 		memcpy(cur_byte, params->tail, params->tail_len);
 
-	result = wilc_send_config_pkt(vif, WILC_SET_CFG, &wid, 1,
-				      wilc_get_vif_idx(vif));
+	result = wilc_send_config_pkt(vif, WILC_SET_CFG, &wid, 1);
 	if (result)
 		netdev_err(vif->ndev, "Failed to send add beacon\n");
 
@@ -1935,8 +1901,7 @@ int wilc_del_beacon(struct wilc_vif *vif)
 	wid.size = sizeof(char);
 	wid.val = &del_beacon;
 
-	result = wilc_send_config_pkt(vif, WILC_SET_CFG, &wid, 1,
-				      wilc_get_vif_idx(vif));
+	result = wilc_send_config_pkt(vif, WILC_SET_CFG, &wid, 1);
 	if (result)
 		netdev_err(vif->ndev, "Failed to send delete beacon\n");
 
@@ -1960,8 +1925,7 @@ int wilc_add_station(struct wilc_vif *vif, const u8 *mac,
 	cur_byte = wid.val;
 	wilc_hif_pack_sta_param(cur_byte, mac, params);
 
-	result = wilc_send_config_pkt(vif, WILC_SET_CFG, &wid, 1,
-				      wilc_get_vif_idx(vif));
+	result = wilc_send_config_pkt(vif, WILC_SET_CFG, &wid, 1);
 	if (result != 0)
 		netdev_err(vif->ndev, "Failed to send add station\n");
 
@@ -1987,8 +1951,7 @@ int wilc_del_station(struct wilc_vif *vif, const u8 *mac_addr)
 	else
 		ether_addr_copy(wid.val, mac_addr);
 
-	result = wilc_send_config_pkt(vif, WILC_SET_CFG, &wid, 1,
-				      wilc_get_vif_idx(vif));
+	result = wilc_send_config_pkt(vif, WILC_SET_CFG, &wid, 1);
 	if (result)
 		netdev_err(vif->ndev, "Failed to del station\n");
 
@@ -2023,8 +1986,7 @@ int wilc_del_allstation(struct wilc_vif *vif, u8 mac_addr[][ETH_ALEN])
 	wid.size = (assoc_sta * ETH_ALEN) + 1;
 	wid.val = (u8 *)&del_sta;
 
-	result = wilc_send_config_pkt(vif, WILC_SET_CFG, &wid, 1,
-				      wilc_get_vif_idx(vif));
+	result = wilc_send_config_pkt(vif, WILC_SET_CFG, &wid, 1);
 	if (result)
 		netdev_err(vif->ndev, "Failed to send delete all station\n");
 
@@ -2048,8 +2010,7 @@ int wilc_edit_station(struct wilc_vif *vif, const u8 *mac,
 	cur_byte = wid.val;
 	wilc_hif_pack_sta_param(cur_byte, mac, params);
 
-	result = wilc_send_config_pkt(vif, WILC_SET_CFG, &wid, 1,
-				      wilc_get_vif_idx(vif));
+	result = wilc_send_config_pkt(vif, WILC_SET_CFG, &wid, 1);
 	if (result)
 		netdev_err(vif->ndev, "Failed to send edit station\n");
 
@@ -2074,8 +2035,7 @@ int wilc_set_power_mgmt(struct wilc_vif *vif, bool enabled, u32 timeout)
 	wid.id = WID_POWER_MANAGEMENT;
 	wid.val = &power_mode;
 	wid.size = sizeof(char);
-	result = wilc_send_config_pkt(vif, WILC_SET_CFG, &wid, 1,
-				      wilc_get_vif_idx(vif));
+	result = wilc_send_config_pkt(vif, WILC_SET_CFG, &wid, 1);
 	if (result)
 		netdev_err(vif->ndev, "Failed to send power management\n");
 
@@ -2113,8 +2073,7 @@ int wilc_set_tx_power(struct wilc_vif *vif, u8 tx_power)
 	wid.val = &tx_power;
 	wid.size = sizeof(char);
 
-	return wilc_send_config_pkt(vif, WILC_SET_CFG, &wid, 1,
-				   wilc_get_vif_idx(vif));
+	return wilc_send_config_pkt(vif, WILC_SET_CFG, &wid, 1);
 }
 
 int wilc_get_tx_power(struct wilc_vif *vif, u8 *tx_power)
@@ -2126,6 +2085,5 @@ int wilc_get_tx_power(struct wilc_vif *vif, u8 *tx_power)
 	wid.val = tx_power;
 	wid.size = sizeof(char);
 
-	return wilc_send_config_pkt(vif, WILC_GET_CFG, &wid, 1,
-				    wilc_get_vif_idx(vif));
+	return wilc_send_config_pkt(vif, WILC_GET_CFG, &wid, 1);
 }
diff --git a/drivers/staging/wilc1000/wilc_wlan.c b/drivers/staging/wilc1000/wilc_wlan.c
index bd2ffc3..d46876e 100644
--- a/drivers/staging/wilc1000/wilc_wlan.c
+++ b/drivers/staging/wilc1000/wilc_wlan.c
@@ -1202,10 +1202,11 @@ int wilc_wlan_cfg_get_val(struct wilc *wl, u16 wid, u8 *buffer, u32 buffer_size)
 }
 
 int wilc_send_config_pkt(struct wilc_vif *vif, u8 mode, struct wid *wids,
-			 u32 count, u32 drv)
+			 u32 count)
 {
 	int i;
 	int ret = 0;
+	u32 drv = wilc_get_vif_idx(vif);
 
 	if (mode == WILC_GET_CFG) {
 		for (i = 0; i < count; i++) {
diff --git a/drivers/staging/wilc1000/wilc_wlan.h b/drivers/staging/wilc1000/wilc_wlan.h
index 3e54a56..d2eef7b 100644
--- a/drivers/staging/wilc1000/wilc_wlan.h
+++ b/drivers/staging/wilc1000/wilc_wlan.h
@@ -307,7 +307,7 @@ void host_sleep_notify(struct wilc *wilc);
 void chip_allow_sleep(struct wilc *wilc);
 void chip_wakeup(struct wilc *wilc);
 int wilc_send_config_pkt(struct wilc_vif *vif, u8 mode, struct wid *wids,
-			 u32 count, u32 drv);
+			 u32 count);
 int wilc_wlan_init(struct net_device *dev);
 u32 wilc_get_chipid(struct wilc *wilc, bool update);
 #endif
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
