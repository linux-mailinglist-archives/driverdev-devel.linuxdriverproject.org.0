Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EF335697F
	for <lists+driverdev-devel@lfdr.de>; Wed, 26 Jun 2019 14:41:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 071DF868CA;
	Wed, 26 Jun 2019 12:41:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5akTWwgFnsqI; Wed, 26 Jun 2019 12:41:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 22A31868B4;
	Wed, 26 Jun 2019 12:41:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B73291BF3E8
 for <devel@linuxdriverproject.org>; Wed, 26 Jun 2019 12:41:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A6C7320411
 for <devel@linuxdriverproject.org>; Wed, 26 Jun 2019 12:41:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9Yy3FdFI2KC5 for <devel@linuxdriverproject.org>;
 Wed, 26 Jun 2019 12:41:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa5.microchip.iphmx.com (esa5.microchip.iphmx.com
 [216.71.150.166])
 by silver.osuosl.org (Postfix) with ESMTPS id 6476421543
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
X-IronPort-AV: E=Sophos;i="5.63,419,1557212400"; d="scan'208";a="37422402"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 26 Jun 2019 05:40:55 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.87.71) by
 chn-vm-ex04.mchp-main.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 26 Jun 2019 05:42:05 -0700
Received: from NAM01-SN1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5 via Frontend
 Transport; Wed, 26 Jun 2019 05:40:53 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector1-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jUBhl7ay516bNw0BeTouL8XmHGckOJ9SX9RJ28UMIUQ=;
 b=k3+aYoBJXGQurnu6U8BMvBdLVO+RA2BuYjV0YrlyDpVyiGBtOBcc/StV7G2Ke0sNtCH8bzXVd2HPSWgca2vfXfclT9olJKscmZWOzp/qbwpLoFHePPYdZKBzEcowkWo8v51dmL4Zwy41pyOJzu4rMyKKIbm+7B8Kb4oYF79Brrg=
Received: from BN6PR11MB3985.namprd11.prod.outlook.com (10.255.129.78) by
 BN6PR11MB3987.namprd11.prod.outlook.com (10.255.128.161) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2008.16; Wed, 26 Jun 2019 12:40:52 +0000
Received: from BN6PR11MB3985.namprd11.prod.outlook.com
 ([fe80::49ee:ab78:412:48ac]) by BN6PR11MB3985.namprd11.prod.outlook.com
 ([fe80::49ee:ab78:412:48ac%5]) with mapi id 15.20.2008.017; Wed, 26 Jun 2019
 12:40:52 +0000
From: <Ajay.Kathat@microchip.com>
To: <linux-wireless@vger.kernel.org>
Subject: [PATCH 3/8] staging: wilc1000: added support to dynamically
 add/remove interfaces
Thread-Topic: [PATCH 3/8] staging: wilc1000: added support to dynamically
 add/remove interfaces
Thread-Index: AQHVLBxjIFPq41WZ+UKTpozwEoAfIw==
Date: Wed, 26 Jun 2019 12:40:52 +0000
Message-ID: <1561552810-8933-4-git-send-email-ajay.kathat@microchip.com>
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
x-ms-office365-filtering-correlation-id: 865f8355-86f2-4f5c-fc69-08d6fa3385c6
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BN6PR11MB3987; 
x-ms-traffictypediagnostic: BN6PR11MB3987:
x-microsoft-antispam-prvs: <BN6PR11MB39875B5329502A378AEB2F98E3E20@BN6PR11MB3987.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2043;
x-forefront-prvs: 00808B16F3
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(39860400002)(366004)(376002)(136003)(396003)(189003)(199004)(3846002)(11346002)(305945005)(476003)(2616005)(5660300002)(99286004)(54906003)(25786009)(8676002)(486006)(81156014)(81166006)(30864003)(8936002)(66066001)(7736002)(66476007)(66556008)(64756008)(66446008)(6116002)(66946007)(6486002)(50226002)(446003)(107886003)(68736007)(52116002)(73956011)(14444005)(256004)(4326008)(6436002)(316002)(478600001)(386003)(72206003)(53936002)(53946003)(2906002)(102836004)(6512007)(2501003)(6916009)(76176011)(86362001)(186003)(6506007)(36756003)(71190400001)(78486014)(14454004)(26005)(2351001)(71200400001)(5640700003)(579004)(559001)(569006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN6PR11MB3987;
 H:BN6PR11MB3985.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: N4Vu0bg09mgAdmYK9/RCKbJoIbEg7GpGRBfmjkAdqzu/EVrpZGevVG1Z1S2DUgbFT7pZW94pAXlq46dECudhD3nJsNPziNocbhe0dfjn5Yn36QvQrzYI/uFd3lLoBslmEIdO+ZaH3VKamSriIP5ZRa3RGCFVGy4tCJMOr/zvr18l2wy637k9fjPdniuhLnZtrp+RUV1LxphGYDxAHuvSsi6Vf7PZ7pf7zRK3fO/AeDJwQF+Yw8oBeb3A9pNMgOW6Oj1+RvhPjNWHdfID0zZ5RQngpJYnvl5i0js7WK5Z2NlYf+lVC3XXonMD7TPvZam8uaYvpq8VBtoaFRz0DQid6wJxR628/2/uPHZ1pe+FbeG19lMqAvfgnv0YK6HjozzTo7GQiOpQngWVu8hImN+X9etR/l9mIvGfvlW2u9svYyQ=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 865f8355-86f2-4f5c-fc69-08d6fa3385c6
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Jun 2019 12:40:52.0816 (UTC)
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

Removed the use of two hardcoded interfaces and added support to
add/remove the network interfaces dynamically.
Now the driver will have single default interface with name 'wlan0' and
later other interface can be added from user space application e.g
using 'iw add' command.
Also taken care to maintain 'wilc_vif' as part of 'net_device'
private data and 'wilc' struct as 'wiphy' private data.

Signed-off-by: Ajay Singh <ajay.kathat@microchip.com>
---
 drivers/staging/wilc1000/wilc_mon.c               |   9 +-
 drivers/staging/wilc1000/wilc_netdev.c            | 269 ++++-------
 drivers/staging/wilc1000/wilc_sdio.c              |   7 +-
 drivers/staging/wilc1000/wilc_spi.c               |   3 +-
 drivers/staging/wilc1000/wilc_wfi_cfgoperations.c | 535 ++++++++++++++--------
 drivers/staging/wilc1000/wilc_wfi_cfgoperations.h |  13 +-
 drivers/staging/wilc1000/wilc_wfi_netdevice.h     |  20 +-
 drivers/staging/wilc1000/wilc_wlan.c              |  20 +-
 drivers/staging/wilc1000/wilc_wlan.h              |   6 +-
 9 files changed, 492 insertions(+), 390 deletions(-)

diff --git a/drivers/staging/wilc1000/wilc_mon.c b/drivers/staging/wilc1000/wilc_mon.c
index 9fe19a3..7d7933d4 100644
--- a/drivers/staging/wilc1000/wilc_mon.c
+++ b/drivers/staging/wilc1000/wilc_mon.c
@@ -233,6 +233,7 @@ struct net_device *wilc_wfi_init_mon_interface(struct wilc *wl,
 	strncpy(wl->monitor_dev->name, name, IFNAMSIZ);
 	wl->monitor_dev->name[IFNAMSIZ - 1] = 0;
 	wl->monitor_dev->netdev_ops = &wilc_wfi_netdev_ops;
+	wl->monitor_dev->needs_free_netdev = true;
 
 	if (register_netdevice(wl->monitor_dev)) {
 		netdev_err(real_dev, "register_netdevice failed\n");
@@ -247,12 +248,14 @@ struct net_device *wilc_wfi_init_mon_interface(struct wilc *wl,
 	return wl->monitor_dev;
 }
 
-void wilc_wfi_deinit_mon_interface(struct wilc *wl)
+void wilc_wfi_deinit_mon_interface(struct wilc *wl, bool rtnl_locked)
 {
 	if (!wl->monitor_dev)
 		return;
 
-	unregister_netdev(wl->monitor_dev);
-	free_netdev(wl->monitor_dev);
+	if (rtnl_locked)
+		unregister_netdevice(wl->monitor_dev);
+	else
+		unregister_netdev(wl->monitor_dev);
 	wl->monitor_dev = NULL;
 }
diff --git a/drivers/staging/wilc1000/wilc_netdev.c b/drivers/staging/wilc1000/wilc_netdev.c
index 0e0a4ee..9006111 100644
--- a/drivers/staging/wilc1000/wilc_netdev.c
+++ b/drivers/staging/wilc1000/wilc_netdev.c
@@ -97,22 +97,29 @@ static struct net_device *get_if_handler(struct wilc *wilc, u8 *mac_header)
 {
 	u8 *bssid, *bssid1;
 	int i = 0;
+	struct net_device *ndev = NULL;
 
 	bssid = mac_header + 10;
 	bssid1 = mac_header + 4;
 
+	mutex_lock(&wilc->vif_mutex);
 	for (i = 0; i < wilc->vif_num; i++) {
 		if (wilc->vif[i]->mode == WILC_STATION_MODE)
 			if (ether_addr_equal_unaligned(bssid,
-						       wilc->vif[i]->bssid))
-				return wilc->vif[i]->ndev;
+						       wilc->vif[i]->bssid)) {
+				ndev = wilc->vif[i]->ndev;
+				goto out;
+			}
 		if (wilc->vif[i]->mode == WILC_AP_MODE)
 			if (ether_addr_equal_unaligned(bssid1,
-						       wilc->vif[i]->bssid))
-				return wilc->vif[i]->ndev;
+						       wilc->vif[i]->bssid)) {
+				ndev = wilc->vif[i]->ndev;
+				goto out;
+			}
 	}
-
-	return NULL;
+out:
+	mutex_unlock(&wilc->vif_mutex);
+	return ndev;
 }
 
 void wilc_wlan_set_bssid(struct net_device *wilc_netdev, u8 *bssid, u8 mode)
@@ -143,9 +150,7 @@ static int wilc_txq_task(void *vp)
 {
 	int ret;
 	u32 txq_count;
-	struct net_device *dev = vp;
-	struct wilc_vif *vif = netdev_priv(dev);
-	struct wilc *wl = vif->wilc;
+	struct wilc *wl = vp;
 
 	complete(&wl->txq_thread_started);
 	while (1) {
@@ -159,14 +164,18 @@ static int wilc_txq_task(void *vp)
 			break;
 		}
 		do {
-			ret = wilc_wlan_handle_txq(dev, &txq_count);
+			ret = wilc_wlan_handle_txq(wl, &txq_count);
 			if (txq_count < FLOW_CONTROL_LOWER_THRESHOLD) {
-				if (wl->vif[0]->mac_opened &&
-				    netif_queue_stopped(wl->vif[0]->ndev))
-					netif_wake_queue(wl->vif[0]->ndev);
-				if (wl->vif[1]->mac_opened &&
-				    netif_queue_stopped(wl->vif[1]->ndev))
-					netif_wake_queue(wl->vif[1]->ndev);
+				int i;
+				struct wilc_vif *ifc;
+
+				mutex_lock(&wl->vif_mutex);
+				for (i = 0; i < wl->vif_num; i++) {
+					ifc = wl->vif[i];
+					if (ifc->mac_opened && ifc->ndev)
+						netif_wake_queue(ifc->ndev);
+				}
+				mutex_unlock(&wl->vif_mutex);
 			}
 		} while (ret == -ENOBUFS && !wl->close);
 	}
@@ -245,14 +254,13 @@ static int wilc1000_firmware_download(struct net_device *dev)
 
 static int wilc_init_fw_config(struct net_device *dev, struct wilc_vif *vif)
 {
-	struct wilc_priv *priv;
+	struct wilc_priv *priv = &vif->priv;
 	struct host_if_drv *hif_drv;
 	u8 b;
 	u16 hw;
 	u32 w;
 
 	netdev_dbg(dev, "Start configuring Firmware\n");
-	priv = wiphy_priv(dev->ieee80211_ptr->wiphy);
 	hif_drv = (struct host_if_drv *)priv->hif_drv;
 	netdev_dbg(dev, "Host = %p\n", hif_drv);
 
@@ -424,6 +432,7 @@ static void wlan_deinit_locks(struct net_device *dev)
 	mutex_destroy(&wilc->rxq_cs);
 	mutex_destroy(&wilc->cfg_cmd_lock);
 	mutex_destroy(&wilc->txq_add_to_head_cs);
+	mutex_destroy(&wilc->vif_mutex);
 }
 
 static void wlan_deinitialize_threads(struct net_device *dev)
@@ -477,31 +486,12 @@ static void wilc_wlan_deinitialize(struct net_device *dev)
 	}
 }
 
-static void wlan_init_locks(struct net_device *dev)
-{
-	struct wilc_vif *vif = netdev_priv(dev);
-	struct wilc *wl = vif->wilc;
-
-	mutex_init(&wl->hif_cs);
-	mutex_init(&wl->rxq_cs);
-	mutex_init(&wl->cfg_cmd_lock);
-
-	spin_lock_init(&wl->txq_spinlock);
-	mutex_init(&wl->txq_add_to_head_cs);
-
-	init_completion(&wl->txq_event);
-
-	init_completion(&wl->cfg_event);
-	init_completion(&wl->sync_event);
-	init_completion(&wl->txq_thread_started);
-}
-
 static int wlan_initialize_threads(struct net_device *dev)
 {
 	struct wilc_vif *vif = netdev_priv(dev);
 	struct wilc *wilc = vif->wilc;
 
-	wilc->txq_thread = kthread_run(wilc_txq_task, (void *)dev,
+	wilc->txq_thread = kthread_run(wilc_txq_task, (void *)wilc,
 				       "K_TXQ_TASK");
 	if (IS_ERR(wilc->txq_thread)) {
 		netdev_err(dev, "couldn't create TXQ thread\n");
@@ -513,6 +503,12 @@ static int wlan_initialize_threads(struct net_device *dev)
 	return 0;
 }
 
+static int dev_state_ev_handler(struct notifier_block *this,
+				unsigned long event, void *ptr);
+static struct notifier_block g_dev_notifier = {
+	.notifier_call = dev_state_ev_handler
+};
+
 static int wilc_wlan_initialize(struct net_device *dev, struct wilc_vif *vif)
 {
 	int ret = 0;
@@ -522,13 +518,9 @@ static int wilc_wlan_initialize(struct net_device *dev, struct wilc_vif *vif)
 		wl->mac_status = WILC_MAC_STATUS_INIT;
 		wl->close = 0;
 
-		wlan_init_locks(dev);
-
 		ret = wilc_wlan_init(dev);
-		if (ret < 0) {
-			ret = -EIO;
-			goto fail_locks;
-		}
+		if (ret < 0)
+			return -EIO;
 
 		ret = wlan_initialize_threads(dev);
 		if (ret < 0) {
@@ -582,7 +574,7 @@ static int wilc_wlan_initialize(struct net_device *dev, struct wilc_vif *vif)
 			ret = -EIO;
 			goto fail_fw_start;
 		}
-
+		register_inetaddr_notifier(&g_dev_notifier);
 		wl->initialized = true;
 		return 0;
 
@@ -600,8 +592,6 @@ static int wilc_wlan_initialize(struct net_device *dev, struct wilc_vif *vif)
 		wlan_deinitialize_threads(dev);
 fail_wilc_wlan:
 		wilc_wlan_cleanup(dev);
-fail_locks:
-		wlan_deinit_locks(dev);
 		netdev_err(dev, "WLAN initialization FAILED\n");
 	} else {
 		netdev_dbg(dev, "wilc1000 already initialized\n");
@@ -758,16 +748,19 @@ netdev_tx_t wilc_mac_xmit(struct sk_buff *skb, struct net_device *ndev)
 
 	vif->netstats.tx_packets++;
 	vif->netstats.tx_bytes += tx_data->size;
-	tx_data->bssid = wilc->vif[vif->idx]->bssid;
 	queue_count = wilc_wlan_txq_add_net_pkt(ndev, (void *)tx_data,
 						tx_data->buff, tx_data->size,
 						wilc_tx_complete);
 
 	if (queue_count > FLOW_CONTROL_UPPER_THRESHOLD) {
-		if (wilc->vif[0]->mac_opened)
-			netif_stop_queue(wilc->vif[0]->ndev);
-		if (wilc->vif[1]->mac_opened)
-			netif_stop_queue(wilc->vif[1]->ndev);
+		int i;
+
+		mutex_lock(&wilc->vif_mutex);
+		for (i = 0; i < wilc->vif_num; i++) {
+			if (wilc->vif[i]->mac_opened)
+				netif_stop_queue(wilc->vif[i]->ndev);
+		}
+		mutex_unlock(&wilc->vif_mutex);
 	}
 
 	return 0;
@@ -794,6 +787,7 @@ static int wilc_mac_close(struct net_device *ndev)
 	if (wl->open_ifcs == 0) {
 		netdev_dbg(ndev, "Deinitializing wilc1000\n");
 		wl->close = 1;
+		unregister_inetaddr_notifier(&g_dev_notifier);
 		wilc_wlan_deinitialize(ndev);
 	}
 
@@ -848,18 +842,23 @@ void wilc_wfi_mgmt_rx(struct wilc *wilc, u8 *buff, u32 size)
 	int i = 0;
 	struct wilc_vif *vif;
 
+	mutex_lock(&wilc->vif_mutex);
 	for (i = 0; i < wilc->vif_num; i++) {
+		u16 type = le16_to_cpup((__le16 *)buff);
+
 		vif = netdev_priv(wilc->vif[i]->ndev);
+		if ((type == vif->frame_reg[0].type && vif->frame_reg[0].reg) ||
+		    (type == vif->frame_reg[1].type && vif->frame_reg[1].reg)) {
+			wilc_wfi_p2p_rx(vif, buff, size);
+			break;
+		}
+
 		if (vif->monitor_flag) {
 			wilc_wfi_monitor_rx(wilc->monitor_dev, buff, size);
-			return;
+			break;
 		}
 	}
-
-	vif = netdev_priv(wilc->vif[1]->ndev);
-	if ((buff[0] == vif->frame_reg[0].type && vif->frame_reg[0].reg) ||
-	    (buff[0] == vif->frame_reg[1].type && vif->frame_reg[1].reg))
-		wilc_wfi_p2p_rx(wilc->vif[1]->ndev, buff, size);
+	mutex_unlock(&wilc->vif_mutex);
 }
 
 static const struct net_device_ops wilc_netdev_ops = {
@@ -890,14 +889,10 @@ static int dev_state_ev_handler(struct notifier_block *this,
 	if (!dev->ieee80211_ptr || !dev->ieee80211_ptr->wiphy)
 		return NOTIFY_DONE;
 
-	priv = wiphy_priv(dev->ieee80211_ptr->wiphy);
-	if (!priv)
-		return NOTIFY_DONE;
+	vif = netdev_priv(dev);
+	priv = &vif->priv;
 
 	hif_drv = (struct host_if_drv *)priv->hif_drv;
-	vif = netdev_priv(dev);
-	if (!vif || !hif_drv)
-		return NOTIFY_DONE;
 
 	switch (event) {
 	case NETDEV_UP:
@@ -932,10 +927,6 @@ static int dev_state_ev_handler(struct notifier_block *this,
 	return NOTIFY_DONE;
 }
 
-static struct notifier_block g_dev_notifier = {
-	.notifier_call = dev_state_ev_handler
-};
-
 void wilc_netdev_cleanup(struct wilc *wilc)
 {
 	int i;
@@ -943,136 +934,72 @@ void wilc_netdev_cleanup(struct wilc *wilc)
 	if (!wilc)
 		return;
 
-	if (wilc->vif[0]->ndev || wilc->vif[1]->ndev)
-		unregister_inetaddr_notifier(&g_dev_notifier);
-
 	if (wilc->firmware) {
 		release_firmware(wilc->firmware);
 		wilc->firmware = NULL;
 	}
 
-	for (i = 0; i < WILC_NUM_CONCURRENT_IFC; i++) {
-		if (wilc->vif[i] && wilc->vif[i]->ndev) {
+	for (i = 0; i < wilc->vif_num; i++) {
+		if (wilc->vif[i] && wilc->vif[i]->ndev)
 			unregister_netdev(wilc->vif[i]->ndev);
-			wilc_free_wiphy(wilc->vif[i]->ndev);
-			free_netdev(wilc->vif[i]->ndev);
-		}
 	}
 
-	wilc_wfi_deinit_mon_interface(wilc);
+	wilc_wfi_deinit_mon_interface(wilc, false);
 	flush_workqueue(wilc->hif_workqueue);
 	destroy_workqueue(wilc->hif_workqueue);
 	wilc_wlan_cfg_deinit(wilc);
 	kfree(wilc->bus_data);
-	kfree(wilc);
+	wiphy_unregister(wilc->wiphy);
+	wiphy_free(wilc->wiphy);
 }
 EXPORT_SYMBOL_GPL(wilc_netdev_cleanup);
 
-int wilc_netdev_init(struct wilc **wilc, struct device *dev, int io_type,
-		     const struct wilc_hif_func *ops)
+struct wilc_vif *wilc_netdev_ifc_init(struct wilc *wl, const char *name,
+				      int vif_type, enum nl80211_iftype type,
+				      bool rtnl_locked)
 {
-	int i, ret;
-	struct wilc_vif *vif;
 	struct net_device *ndev;
-	struct wilc *wl;
-
-	wl = kzalloc(sizeof(*wl), GFP_KERNEL);
-	if (!wl)
-		return -ENOMEM;
-
-	ret = wilc_wlan_cfg_init(wl);
-	if (ret)
-		goto free_wl;
-
-	*wilc = wl;
-	wl->io_type = io_type;
-	wl->hif_func = ops;
-	wl->enable_ps = true;
-	wl->chip_ps_state = WILC_CHIP_WAKEDUP;
-	INIT_LIST_HEAD(&wl->txq_head.list);
-	INIT_LIST_HEAD(&wl->rxq_head.list);
-
-	wl->hif_workqueue = create_singlethread_workqueue("WILC_wq");
-	if (!wl->hif_workqueue) {
-		ret = -ENOMEM;
-		goto free_cfg;
-	}
-
-	register_inetaddr_notifier(&g_dev_notifier);
-
-	for (i = 0; i < WILC_NUM_CONCURRENT_IFC; i++) {
-		struct wireless_dev *wdev;
+	struct wilc_vif *vif;
+	int ret;
 
-		ndev = alloc_etherdev(sizeof(struct wilc_vif));
-		if (!ndev) {
-			ret = -ENOMEM;
-			goto free_ndev;
-		}
+	ndev = alloc_etherdev(sizeof(*vif));
+	if (!ndev)
+		return ERR_PTR(-ENOMEM);
 
-		vif = netdev_priv(ndev);
+	vif = netdev_priv(ndev);
+	ndev->ieee80211_ptr = &vif->priv.wdev;
+	strcpy(ndev->name, name);
+	vif->wilc = wl;
+	vif->ndev = ndev;
+	ndev->ml_priv = vif;
 
-		if (i == 0) {
-			strcpy(ndev->name, "wlan%d");
-			vif->ifc_id = 1;
-		} else {
-			strcpy(ndev->name, "p2p%d");
-			vif->ifc_id = 0;
-		}
-		vif->wilc = *wilc;
-		vif->ndev = ndev;
-		wl->vif[i] = vif;
-		wl->vif_num = i + 1;
-		vif->idx = i;
-
-		ndev->netdev_ops = &wilc_netdev_ops;
-
-		wdev = wilc_create_wiphy(ndev, dev);
-		if (!wdev) {
-			netdev_err(ndev, "Can't register WILC Wiphy\n");
-			ret = -ENOMEM;
-			goto free_ndev;
-		}
+	ndev->netdev_ops = &wilc_netdev_ops;
 
-		SET_NETDEV_DEV(ndev, dev);
+	SET_NETDEV_DEV(ndev, wiphy_dev(wl->wiphy));
 
-		vif->ndev->ieee80211_ptr = wdev;
-		vif->ndev->ml_priv = vif;
-		wdev->netdev = vif->ndev;
-		vif->netstats.rx_packets = 0;
-		vif->netstats.tx_packets = 0;
-		vif->netstats.rx_bytes = 0;
-		vif->netstats.tx_bytes = 0;
+	vif->priv.wdev.wiphy = wl->wiphy;
+	vif->priv.wdev.netdev = ndev;
+	vif->priv.wdev.iftype = type;
+	vif->priv.dev = ndev;
 
+	if (rtnl_locked)
+		ret = register_netdevice(ndev);
+	else
 		ret = register_netdev(ndev);
-		if (ret)
-			goto free_ndev;
 
-		vif->iftype = WILC_STATION_MODE;
-		vif->mac_opened = 0;
+	if (ret) {
+		free_netdev(ndev);
+		return ERR_PTR(-EFAULT);
 	}
 
-	return 0;
-
-free_ndev:
-	for (; i >= 0; i--) {
-		if (wl->vif[i]) {
-			if (wl->vif[i]->iftype == WILC_STATION_MODE)
-				unregister_netdev(wl->vif[i]->ndev);
-
-			if (wl->vif[i]->ndev) {
-				wilc_free_wiphy(wl->vif[i]->ndev);
-				free_netdev(wl->vif[i]->ndev);
-			}
-		}
-	}
-	unregister_inetaddr_notifier(&g_dev_notifier);
-	destroy_workqueue(wl->hif_workqueue);
-free_cfg:
-	wilc_wlan_cfg_deinit(wl);
-free_wl:
-	kfree(wl);
-	return ret;
+	ndev->needs_free_netdev = true;
+	vif->iftype = vif_type;
+	vif->wilc->vif[wl->vif_num] = vif;
+	vif->ifc_id = wl->vif_num;
+	vif->idx = wl->vif_num;
+	wl->vif_num += 1;
+	vif->mac_opened = 0;
+	return vif;
 }
-EXPORT_SYMBOL_GPL(wilc_netdev_init);
 
 MODULE_LICENSE("GPL");
diff --git a/drivers/staging/wilc1000/wilc_sdio.c b/drivers/staging/wilc1000/wilc_sdio.c
index b789c57..4c1c81f 100644
--- a/drivers/staging/wilc1000/wilc_sdio.c
+++ b/drivers/staging/wilc1000/wilc_sdio.c
@@ -8,6 +8,7 @@
 #include <linux/mmc/host.h>
 
 #include "wilc_wfi_netdevice.h"
+#include "wilc_wfi_cfgoperations.h"
 
 #define SDIO_MODALIAS "wilc1000_sdio"
 
@@ -139,11 +140,9 @@ static int wilc_sdio_probe(struct sdio_func *func,
 		}
 	}
 
-	dev_dbg(&func->dev, "Initializing netdev\n");
-	ret = wilc_netdev_init(&wilc, &func->dev, WILC_HIF_SDIO,
-			       &wilc_hif_sdio);
+	ret = wilc_cfg80211_init(&wilc, &func->dev, WILC_HIF_SDIO,
+				 &wilc_hif_sdio);
 	if (ret) {
-		dev_err(&func->dev, "Couldn't initialize netdev\n");
 		kfree(sdio_priv);
 		return ret;
 	}
diff --git a/drivers/staging/wilc1000/wilc_spi.c b/drivers/staging/wilc1000/wilc_spi.c
index d8910bf..3c1ae9e 100644
--- a/drivers/staging/wilc1000/wilc_spi.c
+++ b/drivers/staging/wilc1000/wilc_spi.c
@@ -7,6 +7,7 @@
 #include <linux/spi/spi.h>
 
 #include "wilc_wfi_netdevice.h"
+#include "wilc_wfi_cfgoperations.h"
 
 struct wilc_spi {
 	int crc_off;
@@ -120,7 +121,7 @@ static int wilc_bus_probe(struct spi_device *spi)
 			dev_err(&spi->dev, "failed to get the irq gpio\n");
 	}
 
-	ret = wilc_netdev_init(&wilc, NULL, WILC_HIF_SPI, &wilc_hif_spi);
+	ret = wilc_cfg80211_init(&wilc, &spi->dev, WILC_HIF_SPI, &wilc_hif_spi);
 	if (ret) {
 		kfree(spi_priv);
 		return ret;
diff --git a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
index b0daa11..012e325 100644
--- a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
+++ b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
@@ -183,48 +183,67 @@ static void cfg_connect_result(enum conn_event conn_disconn_evt, u8 mac_status,
 		eth_zero_addr(priv->associated_bss);
 		wilc_wlan_set_bssid(priv->dev, NULL, WILC_STATION_MODE);
 
-		if (vif->iftype != WILC_CLIENT_MODE)
+		if (vif->iftype != WILC_CLIENT_MODE) {
 			wl->sta_ch = WILC_INVALID_CHANNEL;
-
-		if (wfi_drv->ifc_up && dev == wl->vif[1]->ndev)
-			reason = 3;
-		else if (!wfi_drv->ifc_up && dev == wl->vif[1]->ndev)
-			reason = 1;
+		} else {
+			if (wfi_drv->ifc_up)
+				reason = 3;
+			else
+				reason = 1;
+		}
 
 		cfg80211_disconnected(dev, reason, NULL, 0, false, GFP_KERNEL);
 	}
 }
 
+static struct wilc_vif *wilc_get_wl_to_vif(struct wilc *wl)
+{
+	int i;
+
+	for (i = 0; i < wl->vif_num; i++)
+		if (wl->vif[i])
+			return wl->vif[i];
+
+	return ERR_PTR(-EINVAL);
+}
+
 static int set_channel(struct wiphy *wiphy,
 		       struct cfg80211_chan_def *chandef)
 {
-	u32 channelnum = 0;
-	struct wilc_priv *priv = wiphy_priv(wiphy);
-	struct wilc_vif *vif = netdev_priv(priv->dev);
-	int result = 0;
+	struct wilc *wl = wiphy_priv(wiphy);
+	struct wilc_vif *vif;
+	u32 channelnum;
+	int result;
+
+	mutex_lock(&wl->vif_mutex);
+	vif = wilc_get_wl_to_vif(wl);
+	if (IS_ERR(vif)) {
+		mutex_unlock(&wl->vif_mutex);
+		return PTR_ERR(vif);
+	}
 
 	channelnum = ieee80211_frequency_to_channel(chandef->chan->center_freq);
 
-	vif->wilc->op_ch = channelnum;
+	wl->op_ch = channelnum;
 	result = wilc_set_mac_chnl_num(vif, channelnum);
+	if (result)
+		netdev_err(vif->ndev, "Error in setting channel\n");
 
-	if (result != 0)
-		netdev_err(priv->dev, "Error in setting channel\n");
-
+	mutex_unlock(&wl->vif_mutex);
 	return result;
 }
 
 static int scan(struct wiphy *wiphy, struct cfg80211_scan_request *request)
 {
-	struct wilc_priv *priv = wiphy_priv(wiphy);
-	struct wilc_vif *vif = netdev_priv(priv->dev);
+	struct wilc_vif *vif = netdev_priv(request->wdev->netdev);
+	struct wilc_priv *priv = &vif->priv;
 	u32 i;
 	int ret = 0;
 	u8 scan_ch_list[WILC_MAX_NUM_SCANNED_CH];
 	u8 scan_type;
 
 	if (request->n_channels > WILC_MAX_NUM_SCANNED_CH) {
-		netdev_err(priv->dev, "Requested scanned channels over\n");
+		netdev_err(vif->ndev, "Requested scanned channels over\n");
 		return -EINVAL;
 	}
 
@@ -256,8 +275,8 @@ static int scan(struct wiphy *wiphy, struct cfg80211_scan_request *request)
 static int connect(struct wiphy *wiphy, struct net_device *dev,
 		   struct cfg80211_connect_params *sme)
 {
-	struct wilc_priv *priv = wiphy_priv(wiphy);
-	struct wilc_vif *vif = netdev_priv(priv->dev);
+	struct wilc_vif *vif = netdev_priv(dev);
+	struct wilc_priv *priv = &vif->priv;
 	struct host_if_drv *wfi_drv = priv->hif_drv;
 	int ret;
 	u32 i;
@@ -410,8 +429,8 @@ static int connect(struct wiphy *wiphy, struct net_device *dev,
 static int disconnect(struct wiphy *wiphy, struct net_device *dev,
 		      u16 reason_code)
 {
-	struct wilc_priv *priv = wiphy_priv(wiphy);
-	struct wilc_vif *vif = netdev_priv(priv->dev);
+	struct wilc_vif *vif = netdev_priv(dev);
+	struct wilc_priv *priv = &vif->priv;
 	struct wilc *wilc = vif->wilc;
 	int ret;
 
@@ -501,17 +520,17 @@ static int add_key(struct wiphy *wiphy, struct net_device *netdev, u8 key_index,
 
 {
 	int ret = 0, keylen = params->key_len;
-	struct wilc_priv *priv = wiphy_priv(wiphy);
 	const u8 *rx_mic = NULL;
 	const u8 *tx_mic = NULL;
 	u8 mode = WILC_FW_SEC_NO;
 	u8 op_mode;
 	struct wilc_vif *vif = netdev_priv(netdev);
+	struct wilc_priv *priv = &vif->priv;
 
 	switch (params->cipher) {
 	case WLAN_CIPHER_SUITE_WEP40:
 	case WLAN_CIPHER_SUITE_WEP104:
-		if (priv->wdev->iftype == NL80211_IFTYPE_AP) {
+		if (priv->wdev.iftype == NL80211_IFTYPE_AP) {
 			wilc_wfi_cfg_copy_wep_info(priv, key_index, params);
 
 			if (params->cipher == WLAN_CIPHER_SUITE_WEP40)
@@ -538,8 +557,8 @@ static int add_key(struct wiphy *wiphy, struct net_device *netdev, u8 key_index,
 
 	case WLAN_CIPHER_SUITE_TKIP:
 	case WLAN_CIPHER_SUITE_CCMP:
-		if (priv->wdev->iftype == NL80211_IFTYPE_AP ||
-		    priv->wdev->iftype == NL80211_IFTYPE_P2P_GO) {
+		if (priv->wdev.iftype == NL80211_IFTYPE_AP ||
+		    priv->wdev.iftype == NL80211_IFTYPE_P2P_GO) {
 			struct wilc_wfi_key *key;
 
 			ret = wilc_wfi_cfg_allocate_wpa_entry(priv, key_index);
@@ -611,9 +630,9 @@ static int del_key(struct wiphy *wiphy, struct net_device *netdev,
 		   bool pairwise,
 		   const u8 *mac_addr)
 {
-	struct wilc_priv *priv = wiphy_priv(wiphy);
+	struct wilc *wl = wiphy_priv(wiphy);
 	struct wilc_vif *vif = netdev_priv(netdev);
-	struct wilc *wl = vif->wilc;
+	struct wilc_priv *priv = &vif->priv;
 
 	if (netdev == wl->vif[0]->ndev) {
 		if (priv->wilc_gtk[key_index]) {
@@ -650,7 +669,8 @@ static int get_key(struct wiphy *wiphy, struct net_device *netdev, u8 key_index,
 		   bool pairwise, const u8 *mac_addr, void *cookie,
 		   void (*callback)(void *cookie, struct key_params *))
 {
-	struct wilc_priv *priv = wiphy_priv(wiphy);
+	struct wilc_vif *vif = netdev_priv(netdev);
+	struct wilc_priv *priv = &vif->priv;
 	struct  key_params key_params;
 
 	if (!pairwise) {
@@ -675,8 +695,7 @@ static int get_key(struct wiphy *wiphy, struct net_device *netdev, u8 key_index,
 static int set_default_key(struct wiphy *wiphy, struct net_device *netdev,
 			   u8 key_index, bool unicast, bool multicast)
 {
-	struct wilc_priv *priv = wiphy_priv(wiphy);
-	struct wilc_vif *vif = netdev_priv(priv->dev);
+	struct wilc_vif *vif = netdev_priv(netdev);
 
 	wilc_set_wep_default_keyid(vif, key_index);
 
@@ -686,8 +705,8 @@ static int set_default_key(struct wiphy *wiphy, struct net_device *netdev,
 static int get_station(struct wiphy *wiphy, struct net_device *dev,
 		       const u8 *mac, struct station_info *sinfo)
 {
-	struct wilc_priv *priv = wiphy_priv(wiphy);
 	struct wilc_vif *vif = netdev_priv(dev);
+	struct wilc_priv *priv = &vif->priv;
 	u32 i = 0;
 	u32 associatedsta = ~0;
 	u32 inactive_time = 0;
@@ -743,13 +762,35 @@ static int change_bss(struct wiphy *wiphy, struct net_device *dev,
 	return 0;
 }
 
+struct wilc_vif *wilc_get_interface(struct wilc *wl)
+{
+	int i;
+	struct wilc_vif *vif = NULL;
+
+	mutex_lock(&wl->vif_mutex);
+	for (i = 0; i < wl->vif_num; i++) {
+		if (wl->vif[i]) {
+			vif = wl->vif[i];
+			break;
+		}
+	}
+	mutex_unlock(&wl->vif_mutex);
+	return vif;
+}
+
 static int set_wiphy_params(struct wiphy *wiphy, u32 changed)
 {
 	int ret;
 	struct cfg_param_attr cfg_param_val;
-	struct wilc_priv *priv = wiphy_priv(wiphy);
-	struct wilc_vif *vif = netdev_priv(priv->dev);
+	struct wilc *wl = wiphy_priv(wiphy);
+	struct wilc_vif *vif;
+	struct wilc_priv *priv;
 
+	vif = wilc_get_interface(wl);
+	if (!vif)
+		return -EINVAL;
+
+	priv = &vif->priv;
 	cfg_param_val.flag = 0;
 
 	if (changed & WIPHY_PARAM_RETRY_SHORT) {
@@ -804,8 +845,8 @@ static int set_wiphy_params(struct wiphy *wiphy, u32 changed)
 static int set_pmksa(struct wiphy *wiphy, struct net_device *netdev,
 		     struct cfg80211_pmksa *pmksa)
 {
-	struct wilc_priv *priv = wiphy_priv(wiphy);
-	struct wilc_vif *vif = netdev_priv(priv->dev);
+	struct wilc_vif *vif = netdev_priv(netdev);
+	struct wilc_priv *priv = &vif->priv;
 	u32 i;
 	int ret = 0;
 	u8 flag = 0;
@@ -840,7 +881,8 @@ static int del_pmksa(struct wiphy *wiphy, struct net_device *netdev,
 {
 	u32 i;
 	int ret = 0;
-	struct wilc_priv *priv = wiphy_priv(wiphy);
+	struct wilc_vif *vif = netdev_priv(netdev);
+	struct wilc_priv *priv = &vif->priv;
 
 	for (i = 0; i < priv->pmkid_list.numpmkid; i++)	{
 		if (!memcmp(pmksa->bssid, priv->pmkid_list.pmkidlist[i].bssid,
@@ -870,9 +912,9 @@ static int del_pmksa(struct wiphy *wiphy, struct net_device *netdev,
 
 static int flush_pmksa(struct wiphy *wiphy, struct net_device *netdev)
 {
-	struct wilc_priv *priv = wiphy_priv(wiphy);
+	struct wilc_vif *vif = netdev_priv(netdev);
 
-	memset(&priv->pmkid_list, 0, sizeof(struct wilc_pmkid_attr));
+	memset(&vif->priv.pmkid_list, 0, sizeof(struct wilc_pmkid_attr));
 
 	return 0;
 }
@@ -987,12 +1029,11 @@ static void wilc_wfi_cfg_parse_rx_vendor_spec(struct wilc_priv *priv, u8 *buff,
 	}
 }
 
-void wilc_wfi_p2p_rx(struct net_device *dev, u8 *buff, u32 size)
+void wilc_wfi_p2p_rx(struct wilc_vif *vif, u8 *buff, u32 size)
 {
-	struct wilc_priv *priv = wiphy_priv(dev->ieee80211_ptr->wiphy);
-	struct host_if_drv *wfi_drv = priv->hif_drv;
-	struct wilc_vif *vif = netdev_priv(dev);
 	struct wilc *wl = vif->wilc;
+	struct wilc_priv *priv = &vif->priv;
+	struct host_if_drv *wfi_drv = priv->hif_drv;
 	u32 header, pkt_offset;
 	s32 freq;
 	__le16 fc;
@@ -1008,8 +1049,8 @@ void wilc_wfi_p2p_rx(struct net_device *dev, u8 *buff, u32 size)
 		    pkt_offset & IS_MGMT_STATUS_SUCCES)
 			ack = true;
 
-		cfg80211_mgmt_tx_status(priv->wdev, priv->tx_cookie, buff, size,
-					ack, GFP_KERNEL);
+		cfg80211_mgmt_tx_status(&priv->wdev, priv->tx_cookie, buff,
+					size, ack, GFP_KERNEL);
 		return;
 	}
 
@@ -1017,13 +1058,13 @@ void wilc_wfi_p2p_rx(struct net_device *dev, u8 *buff, u32 size)
 
 	fc = ((struct ieee80211_hdr *)buff)->frame_control;
 	if (!ieee80211_is_action(fc)) {
-		cfg80211_rx_mgmt(priv->wdev, freq, 0, buff, size, 0);
+		cfg80211_rx_mgmt(&priv->wdev, freq, 0, buff, size, 0);
 		return;
 	}
 
 	if (priv->cfg_scanning &&
 	    time_after_eq(jiffies, (unsigned long)wfi_drv->p2p_timeout)) {
-		netdev_dbg(dev, "Receiving action wrong ch\n");
+		netdev_dbg(vif->ndev, "Receiving action wrong ch\n");
 		return;
 	}
 	if (buff[ACTION_CAT_ID] == PUB_ACTION_ATTR_ID) {
@@ -1046,14 +1087,14 @@ void wilc_wfi_p2p_rx(struct net_device *dev, u8 *buff, u32 size)
 			break;
 
 		default:
-			netdev_dbg(dev,
+			netdev_dbg(vif->ndev,
 				   "%s: Not handled action frame type:%x\n",
 				   __func__, buff[ACTION_SUBTYPE_ID]);
 			break;
 		}
 	}
 
-	cfg80211_rx_mgmt(priv->wdev, freq, 0, buff, size, 0);
+	cfg80211_rx_mgmt(&priv->wdev, freq, 0, buff, size, 0);
 }
 
 static void wilc_wfi_mgmt_tx_complete(void *priv, int status)
@@ -1066,7 +1107,8 @@ static void wilc_wfi_mgmt_tx_complete(void *priv, int status)
 
 static void wilc_wfi_remain_on_channel_expired(void *data, u64 cookie)
 {
-	struct wilc_priv *priv = data;
+	struct wilc_vif *vif = data;
+	struct wilc_priv *priv = &vif->priv;
 	struct wilc_wfi_p2p_listen_params *params = &priv->remain_on_ch_params;
 
 	if (cookie != params->listen_cookie)
@@ -1074,7 +1116,7 @@ static void wilc_wfi_remain_on_channel_expired(void *data, u64 cookie)
 
 	priv->p2p_listen_state = false;
 
-	cfg80211_remain_on_channel_expired(priv->wdev, params->listen_cookie,
+	cfg80211_remain_on_channel_expired(&priv->wdev, params->listen_cookie,
 					   params->listen_ch, GFP_KERNEL);
 }
 
@@ -1084,8 +1126,8 @@ static int remain_on_channel(struct wiphy *wiphy,
 			     unsigned int duration, u64 *cookie)
 {
 	int ret = 0;
-	struct wilc_priv *priv = wiphy_priv(wiphy);
-	struct wilc_vif *vif = netdev_priv(priv->dev);
+	struct wilc_vif *vif = netdev_priv(wdev->netdev);
+	struct wilc_priv *priv = &vif->priv;
 	u64 id;
 
 	if (wdev->iftype == NL80211_IFTYPE_AP) {
@@ -1099,7 +1141,7 @@ static int remain_on_channel(struct wiphy *wiphy,
 
 	ret = wilc_remain_on_channel(vif, id, duration, chan->hw_value,
 				     wilc_wfi_remain_on_channel_expired,
-				     (void *)priv);
+				     (void *)vif);
 	if (ret)
 		return ret;
 
@@ -1122,8 +1164,8 @@ static int cancel_remain_on_channel(struct wiphy *wiphy,
 				    struct wireless_dev *wdev,
 				    u64 cookie)
 {
-	struct wilc_priv *priv = wiphy_priv(wiphy);
-	struct wilc_vif *vif = netdev_priv(priv->dev);
+	struct wilc_vif *vif = netdev_priv(wdev->netdev);
+	struct wilc_priv *priv = &vif->priv;
 
 	if (cookie != priv->remain_on_ch_params.listen_cookie)
 		return -ENOENT;
@@ -1193,9 +1235,9 @@ static int mgmt_tx(struct wiphy *wiphy,
 	size_t len = params->len;
 	const struct ieee80211_mgmt *mgmt;
 	struct wilc_p2p_mgmt_data *mgmt_tx;
-	struct wilc_priv *priv = wiphy_priv(wiphy);
-	struct host_if_drv *wfi_drv = priv->hif_drv;
 	struct wilc_vif *vif = netdev_priv(wdev->netdev);
+	struct wilc_priv *priv = &vif->priv;
+	struct host_if_drv *wfi_drv = priv->hif_drv;
 	u32 buf_len = len + sizeof(p2p_vendor_spec) +
 			sizeof(priv->p2p.local_random);
 	int ret = 0;
@@ -1279,7 +1321,8 @@ static int mgmt_tx_cancel_wait(struct wiphy *wiphy,
 			       struct wireless_dev *wdev,
 			       u64 cookie)
 {
-	struct wilc_priv *priv = wiphy_priv(wiphy);
+	struct wilc_vif *vif = netdev_priv(wdev->netdev);
+	struct wilc_priv *priv = &vif->priv;
 	struct host_if_drv *wfi_drv = priv->hif_drv;
 
 	wfi_drv->p2p_timeout = jiffies;
@@ -1289,7 +1332,7 @@ static int mgmt_tx_cancel_wait(struct wiphy *wiphy,
 
 		params = &priv->remain_on_ch_params;
 
-		cfg80211_remain_on_channel_expired(priv->wdev,
+		cfg80211_remain_on_channel_expired(wdev,
 						   params->listen_cookie,
 						   params->listen_ch,
 						   GFP_KERNEL);
@@ -1301,9 +1344,8 @@ static int mgmt_tx_cancel_wait(struct wiphy *wiphy,
 void wilc_mgmt_frame_register(struct wiphy *wiphy, struct wireless_dev *wdev,
 			      u16 frame_type, bool reg)
 {
-	struct wilc_priv *priv = wiphy_priv(wiphy);
-	struct wilc_vif *vif = netdev_priv(priv->wdev->netdev);
-	struct wilc *wl = vif->wilc;
+	struct wilc *wl = wiphy_priv(wiphy);
+	struct wilc_vif *vif = netdev_priv(wdev->netdev);
 
 	if (!frame_type)
 		return;
@@ -1337,8 +1379,7 @@ static int set_cqm_rssi_config(struct wiphy *wiphy, struct net_device *dev,
 static int dump_station(struct wiphy *wiphy, struct net_device *dev,
 			int idx, u8 *mac, struct station_info *sinfo)
 {
-	struct wilc_priv *priv = wiphy_priv(wiphy);
-	struct wilc_vif *vif = netdev_priv(priv->dev);
+	struct wilc_vif *vif = netdev_priv(dev);
 	int ret;
 
 	if (idx != 0)
@@ -1350,15 +1391,15 @@ static int dump_station(struct wiphy *wiphy, struct net_device *dev,
 	if (ret)
 		return ret;
 
-	memcpy(mac, priv->associated_bss, ETH_ALEN);
+	memcpy(mac, vif->priv.associated_bss, ETH_ALEN);
 	return 0;
 }
 
 static int set_power_mgmt(struct wiphy *wiphy, struct net_device *dev,
 			  bool enabled, int timeout)
 {
-	struct wilc_priv *priv = wiphy_priv(wiphy);
-	struct wilc_vif *vif = netdev_priv(priv->dev);
+	struct wilc_vif *vif = netdev_priv(dev);
+	struct wilc_priv *priv = &vif->priv;
 
 	if (!priv->hif_drv)
 		return -EIO;
@@ -1373,9 +1414,9 @@ static int change_virtual_intf(struct wiphy *wiphy, struct net_device *dev,
 			       enum nl80211_iftype type,
 			       struct vif_params *params)
 {
-	struct wilc_priv *priv = wiphy_priv(wiphy);
+	struct wilc *wl = wiphy_priv(wiphy);
 	struct wilc_vif *vif = netdev_priv(dev);
-	struct wilc *wl = vif->wilc;
+	struct wilc_priv *priv = &vif->priv;
 
 	priv->p2p.local_random = 0x01;
 	priv->p2p.recv_random = 0x00;
@@ -1387,8 +1428,10 @@ static int change_virtual_intf(struct wiphy *wiphy, struct net_device *dev,
 	case NL80211_IFTYPE_STATION:
 		vif->connecting = false;
 		dev->ieee80211_ptr->iftype = type;
-		priv->wdev->iftype = type;
+		priv->wdev.iftype = type;
 		vif->monitor_flag = 0;
+		if (vif->iftype == WILC_AP_MODE || vif->iftype == WILC_GO_MODE)
+			wilc_wfi_deinit_mon_interface(wl, true);
 		vif->iftype = WILC_STATION_MODE;
 		wilc_set_operation_mode(vif, WILC_STATION_MODE);
 
@@ -1402,7 +1445,7 @@ static int change_virtual_intf(struct wiphy *wiphy, struct net_device *dev,
 	case NL80211_IFTYPE_P2P_CLIENT:
 		vif->connecting = false;
 		dev->ieee80211_ptr->iftype = type;
-		priv->wdev->iftype = type;
+		priv->wdev.iftype = type;
 		vif->monitor_flag = 0;
 		vif->iftype = WILC_CLIENT_MODE;
 		wilc_set_operation_mode(vif, WILC_STATION_MODE);
@@ -1414,7 +1457,7 @@ static int change_virtual_intf(struct wiphy *wiphy, struct net_device *dev,
 	case NL80211_IFTYPE_AP:
 		wl->enable_ps = false;
 		dev->ieee80211_ptr->iftype = type;
-		priv->wdev->iftype = type;
+		priv->wdev.iftype = type;
 		vif->iftype = WILC_AP_MODE;
 
 		if (wl->initialized) {
@@ -1431,7 +1474,7 @@ static int change_virtual_intf(struct wiphy *wiphy, struct net_device *dev,
 			  jiffies + msecs_to_jiffies(WILC_IP_TIMEOUT_MS));
 		wilc_set_operation_mode(vif, WILC_AP_MODE);
 		dev->ieee80211_ptr->iftype = type;
-		priv->wdev->iftype = type;
+		priv->wdev.iftype = type;
 		vif->iftype = WILC_GO_MODE;
 
 		wl->enable_ps = false;
@@ -1450,14 +1493,13 @@ static int start_ap(struct wiphy *wiphy, struct net_device *dev,
 		    struct cfg80211_ap_settings *settings)
 {
 	struct wilc_vif *vif = netdev_priv(dev);
-	struct wilc *wl = vif->wilc;
 	int ret;
 
 	ret = set_channel(wiphy, &settings->chandef);
 	if (ret != 0)
 		netdev_err(dev, "Error in setting channel\n");
 
-	wilc_wlan_set_bssid(dev, wl->vif[vif->idx]->src_addr, WILC_AP_MODE);
+	wilc_wlan_set_bssid(dev, vif->src_addr, WILC_AP_MODE);
 	wilc_set_power_mgmt(vif, 0, 0);
 
 	return wilc_add_beacon(vif, settings->beacon_interval,
@@ -1467,8 +1509,7 @@ static int start_ap(struct wiphy *wiphy, struct net_device *dev,
 static int change_beacon(struct wiphy *wiphy, struct net_device *dev,
 			 struct cfg80211_beacon_data *beacon)
 {
-	struct wilc_priv *priv = wiphy_priv(wiphy);
-	struct wilc_vif *vif = netdev_priv(priv->dev);
+	struct wilc_vif *vif = netdev_priv(dev);
 
 	return wilc_add_beacon(vif, 0, 0, beacon);
 }
@@ -1476,8 +1517,7 @@ static int change_beacon(struct wiphy *wiphy, struct net_device *dev,
 static int stop_ap(struct wiphy *wiphy, struct net_device *dev)
 {
 	int ret;
-	struct wilc_priv *priv = wiphy_priv(wiphy);
-	struct wilc_vif *vif = netdev_priv(priv->dev);
+	struct wilc_vif *vif = netdev_priv(dev);
 
 	wilc_wlan_set_bssid(dev, NULL, WILC_AP_MODE);
 
@@ -1493,8 +1533,8 @@ static int add_station(struct wiphy *wiphy, struct net_device *dev,
 		       const u8 *mac, struct station_parameters *params)
 {
 	int ret = 0;
-	struct wilc_priv *priv = wiphy_priv(wiphy);
 	struct wilc_vif *vif = netdev_priv(dev);
+	struct wilc_priv *priv = &vif->priv;
 
 	if (vif->iftype == WILC_AP_MODE || vif->iftype == WILC_GO_MODE) {
 		memcpy(priv->assoc_stainfo.sta_associated_bss[params->aid], mac,
@@ -1513,8 +1553,8 @@ static int del_station(struct wiphy *wiphy, struct net_device *dev,
 {
 	const u8 *mac = params->mac;
 	int ret = 0;
-	struct wilc_priv *priv = wiphy_priv(wiphy);
 	struct wilc_vif *vif = netdev_priv(dev);
+	struct wilc_priv *priv = &vif->priv;
 	struct sta_info *info;
 
 	if (!(vif->iftype == WILC_AP_MODE || vif->iftype == WILC_GO_MODE))
@@ -1545,60 +1585,158 @@ static int change_station(struct wiphy *wiphy, struct net_device *dev,
 	return ret;
 }
 
+static int wilc_get_vif_from_type(struct wilc *wl, int type)
+{
+	int i;
+
+	mutex_lock(&wl->vif_mutex);
+	for (i = 0; i < wl->vif_num; i++) {
+		if (wl->vif[i]->iftype == type) {
+			mutex_unlock(&wl->vif_mutex);
+			return i;
+		}
+	}
+	mutex_unlock(&wl->vif_mutex);
+
+	return -EINVAL;
+}
+
 static struct wireless_dev *add_virtual_intf(struct wiphy *wiphy,
 					     const char *name,
 					     unsigned char name_assign_type,
 					     enum nl80211_iftype type,
 					     struct vif_params *params)
 {
-	struct wilc_priv *priv = wiphy_priv(wiphy);
-	struct wilc_vif *vif = netdev_priv(priv->wdev->netdev);
-	struct net_device *new_ifc;
+	struct wilc *wl = wiphy_priv(wiphy);
+	struct wilc_vif *vif;
+	struct wireless_dev *wdev;
+	int iftype;
+	int ret;
 
 	if (type == NL80211_IFTYPE_MONITOR) {
-		new_ifc = wilc_wfi_init_mon_interface(vif->wilc, name,
-						      vif->ndev);
-		if (new_ifc) {
-			vif = netdev_priv(priv->wdev->netdev);
-			vif->monitor_flag = 1;
+		struct net_device *ndev;
+		int ap_index = wilc_get_vif_from_type(wl, WILC_AP_MODE);
+
+		if (ap_index < 0) {
+			ap_index = wilc_get_vif_from_type(wl, WILC_GO_MODE);
+			if (ap_index < 0)
+				goto validate_interface;
 		}
+
+		vif  = wl->vif[ap_index];
+		if (vif->monitor_flag)
+			goto validate_interface;
+
+		ndev = wilc_wfi_init_mon_interface(wl, name, vif->ndev);
+		if (ndev)
+			vif->monitor_flag = 1;
+		else
+			return ERR_PTR(-EINVAL);
+
+		wdev = &vif->priv.wdev;
+		return wdev;
+	}
+
+validate_interface:
+	mutex_lock(&wl->vif_mutex);
+	if (wl->vif_num == WILC_NUM_CONCURRENT_IFC) {
+		pr_err("Reached maximum number of interface\n");
+		ret = -EINVAL;
+		goto out_err;
+	}
+
+	switch (type) {
+	case NL80211_IFTYPE_STATION:
+		iftype = WILC_STATION_MODE;
+		break;
+	case NL80211_IFTYPE_AP:
+		iftype = WILC_AP_MODE;
+		break;
+	default:
+		ret = -EOPNOTSUPP;
+		goto out_err;
+	}
+
+	vif = wilc_netdev_ifc_init(wl, name, iftype, type, true);
+	if (IS_ERR(vif)) {
+		ret = PTR_ERR(vif);
+		goto out_err;
 	}
-	return priv->wdev;
+
+	mutex_unlock(&wl->vif_mutex);
+
+	return &vif->priv.wdev;
+
+out_err:
+	mutex_unlock(&wl->vif_mutex);
+	return ERR_PTR(ret);
 }
 
 static int del_virtual_intf(struct wiphy *wiphy, struct wireless_dev *wdev)
 {
+	struct wilc *wl = wiphy_priv(wiphy);
+	struct wilc_vif *vif;
+	int i;
+
+	if (wdev->iftype == NL80211_IFTYPE_AP ||
+	    wdev->iftype == NL80211_IFTYPE_P2P_GO)
+		wilc_wfi_deinit_mon_interface(wl, true);
+	vif = netdev_priv(wdev->netdev);
+	cfg80211_stop_iface(wiphy, wdev, GFP_KERNEL);
+	unregister_netdevice(vif->ndev);
+	vif->monitor_flag = 0;
+
+	mutex_lock(&wl->vif_mutex);
+	wilc_set_wfi_drv_handler(vif, 0, 0, 0);
+	for (i = vif->idx; i < wl->vif_num ; i++) {
+		if ((i + 1) >= wl->vif_num) {
+			wl->vif[i] = NULL;
+		} else {
+			vif = wl->vif[i + 1];
+			vif->ifc_id = i;
+			vif->idx = i;
+			wl->vif[i] = vif;
+			wilc_set_wfi_drv_handler(vif, wilc_get_vif_idx(vif),
+						 vif->iftype, vif->ifc_id);
+		}
+	}
+	wl->vif_num--;
+	mutex_unlock(&wl->vif_mutex);
+
 	return 0;
 }
 
 static int wilc_suspend(struct wiphy *wiphy, struct cfg80211_wowlan *wow)
 {
-	struct wilc_priv *priv = wiphy_priv(wiphy);
-	struct wilc_vif *vif = netdev_priv(priv->dev);
+	struct wilc *wl = wiphy_priv(wiphy);
 
-	if (!wow && wilc_wlan_get_num_conn_ifcs(vif->wilc))
-		vif->wilc->suspend_event = true;
+	if (!wow && wilc_wlan_get_num_conn_ifcs(wl))
+		wl->suspend_event = true;
 	else
-		vif->wilc->suspend_event = false;
+		wl->suspend_event = false;
 
 	return 0;
 }
 
 static int wilc_resume(struct wiphy *wiphy)
 {
-	struct wilc_priv *priv = wiphy_priv(wiphy);
-	struct wilc_vif *vif = netdev_priv(priv->dev);
-
-	netdev_info(vif->ndev, "cfg resume\n");
 	return 0;
 }
 
 static void wilc_set_wakeup(struct wiphy *wiphy, bool enabled)
 {
-	struct wilc_priv *priv = wiphy_priv(wiphy);
-	struct wilc_vif *vif = netdev_priv(priv->dev);
+	struct wilc *wl = wiphy_priv(wiphy);
+	struct wilc_vif *vif;
+
+	mutex_lock(&wl->vif_mutex);
+	vif = wilc_get_wl_to_vif(wl);
+	if (IS_ERR(vif)) {
+		mutex_unlock(&wl->vif_mutex);
+		return;
+	}
 
 	netdev_info(vif->ndev, "cfg set wake up = %d\n", enabled);
+	mutex_unlock(&wl->vif_mutex);
 }
 
 static int set_tx_power(struct wiphy *wiphy, struct wireless_dev *wdev,
@@ -1606,8 +1744,7 @@ static int set_tx_power(struct wiphy *wiphy, struct wireless_dev *wdev,
 {
 	int ret;
 	s32 tx_power = MBM_TO_DBM(mbm);
-	struct wilc_priv *priv = wiphy_priv(wiphy);
-	struct wilc_vif *vif = netdev_priv(priv->dev);
+	struct wilc_vif *vif = netdev_priv(wdev->netdev);
 
 	if (tx_power < 0)
 		tx_power = 0;
@@ -1624,8 +1761,7 @@ static int get_tx_power(struct wiphy *wiphy, struct wireless_dev *wdev,
 			int *dbm)
 {
 	int ret;
-	struct wilc_priv *priv = wiphy_priv(wiphy);
-	struct wilc_vif *vif = netdev_priv(priv->dev);
+	struct wilc_vif *vif = netdev_priv(wdev->netdev);
 	struct wilc *wl = vif->wilc;
 
 	/* If firmware is not started, return. */
@@ -1682,98 +1818,137 @@ static const struct cfg80211_ops wilc_cfg80211_ops = {
 
 };
 
-static struct wireless_dev *wilc_wfi_cfg_alloc(void)
+static void wlan_init_locks(struct wilc *wl)
 {
-	struct wireless_dev *wdev;
+	mutex_init(&wl->hif_cs);
+	mutex_init(&wl->rxq_cs);
+	mutex_init(&wl->cfg_cmd_lock);
+	mutex_init(&wl->vif_mutex);
+
+	spin_lock_init(&wl->txq_spinlock);
+	mutex_init(&wl->txq_add_to_head_cs);
+
+	init_completion(&wl->txq_event);
+	init_completion(&wl->cfg_event);
+	init_completion(&wl->sync_event);
+	init_completion(&wl->txq_thread_started);
+}
 
-	wdev = kzalloc(sizeof(*wdev), GFP_KERNEL);
-	if (!wdev)
-		goto out;
+int wilc_cfg80211_init(struct wilc **wilc, struct device *dev, int io_type,
+		       const struct wilc_hif_func *ops)
+{
+	struct wilc *wl;
+	struct wilc_vif *vif;
+	int ret;
 
-	wdev->wiphy = wiphy_new(&wilc_cfg80211_ops, sizeof(struct wilc_priv));
-	if (!wdev->wiphy)
-		goto free_mem;
+	wl = wilc_create_wiphy(dev);
+	if (!wl)
+		return -EINVAL;
 
-	return wdev;
+	ret = wilc_wlan_cfg_init(wl);
+	if (ret)
+		goto free_wl;
+
+	*wilc = wl;
+	wl->io_type = io_type;
+	wl->hif_func = ops;
+	wl->enable_ps = false;
+	wl->chip_ps_state = WILC_CHIP_WAKEDUP;
+	INIT_LIST_HEAD(&wl->txq_head.list);
+	INIT_LIST_HEAD(&wl->rxq_head.list);
+
+	wl->hif_workqueue = create_singlethread_workqueue("WILC_wq");
+	if (!wl->hif_workqueue) {
+		ret = -ENOMEM;
+		goto free_cfg;
+	}
+	vif = wilc_netdev_ifc_init(wl, "wlan%d", WILC_STATION_MODE,
+				   NL80211_IFTYPE_STATION, false);
+	if (IS_ERR(vif)) {
+		ret = PTR_ERR(vif);
+		goto free_hq;
+	}
 
-free_mem:
-	kfree(wdev);
-out:
-	return NULL;
+	wlan_init_locks(wl);
+
+	return 0;
+
+free_hq:
+	destroy_workqueue(wl->hif_workqueue);
+
+free_cfg:
+	wilc_wlan_cfg_deinit(wl);
+
+free_wl:
+	wiphy_unregister(wl->wiphy);
+	wiphy_free(wl->wiphy);
+	return ret;
 }
+EXPORT_SYMBOL_GPL(wilc_cfg80211_init);
 
-struct wireless_dev *wilc_create_wiphy(struct net_device *net,
-				       struct device *dev)
+struct wilc *wilc_create_wiphy(struct device *dev)
 {
-	struct wilc_priv *priv;
-	struct wireless_dev *wdev;
+	struct wiphy *wiphy;
+	struct wilc *wl;
 	int ret;
 
-	wdev = wilc_wfi_cfg_alloc();
-	if (!wdev) {
-		netdev_err(net, "wiphy new allocate failed\n");
+	wiphy = wiphy_new(&wilc_cfg80211_ops, sizeof(*wl));
+	if (!wiphy)
 		return NULL;
-	}
 
-	priv = wdev_priv(wdev);
-	priv->wdev = wdev;
+	wl = wiphy_priv(wiphy);
 
-	memcpy(priv->bitrates, wilc_bitrates, sizeof(wilc_bitrates));
-	memcpy(priv->channels, wilc_2ghz_channels, sizeof(wilc_2ghz_channels));
-	priv->band.bitrates = priv->bitrates;
-	priv->band.n_bitrates = ARRAY_SIZE(priv->bitrates);
-	priv->band.channels = priv->channels;
-	priv->band.n_channels = ARRAY_SIZE(wilc_2ghz_channels);
+	memcpy(wl->bitrates, wilc_bitrates, sizeof(wilc_bitrates));
+	memcpy(wl->channels, wilc_2ghz_channels, sizeof(wilc_2ghz_channels));
+	wl->band.bitrates = wl->bitrates;
+	wl->band.n_bitrates = ARRAY_SIZE(wl->bitrates);
+	wl->band.channels = wl->channels;
+	wl->band.n_channels = ARRAY_SIZE(wilc_2ghz_channels);
 
-	priv->band.ht_cap.ht_supported = 1;
-	priv->band.ht_cap.cap |= (1 << IEEE80211_HT_CAP_RX_STBC_SHIFT);
-	priv->band.ht_cap.mcs.rx_mask[0] = 0xff;
-	priv->band.ht_cap.ampdu_factor = IEEE80211_HT_MAX_AMPDU_8K;
-	priv->band.ht_cap.ampdu_density = IEEE80211_HT_MPDU_DENSITY_NONE;
+	wl->band.ht_cap.ht_supported = 1;
+	wl->band.ht_cap.cap |= (1 << IEEE80211_HT_CAP_RX_STBC_SHIFT);
+	wl->band.ht_cap.mcs.rx_mask[0] = 0xff;
+	wl->band.ht_cap.ampdu_factor = IEEE80211_HT_MAX_AMPDU_8K;
+	wl->band.ht_cap.ampdu_density = IEEE80211_HT_MPDU_DENSITY_NONE;
 
-	wdev->wiphy->bands[NL80211_BAND_2GHZ] = &priv->band;
+	wiphy->bands[NL80211_BAND_2GHZ] = &wl->band;
 
-	wdev->wiphy->max_scan_ssids = WILC_MAX_NUM_PROBED_SSID;
+	wiphy->max_scan_ssids = WILC_MAX_NUM_PROBED_SSID;
 #ifdef CONFIG_PM
-	wdev->wiphy->wowlan = &wowlan_support;
+	wiphy->wowlan = &wowlan_support;
 #endif
-	wdev->wiphy->max_num_pmkids = WILC_MAX_NUM_PMKIDS;
-	wdev->wiphy->max_scan_ie_len = 1000;
-	wdev->wiphy->signal_type = CFG80211_SIGNAL_TYPE_MBM;
-	memcpy(priv->cipher_suites, wilc_cipher_suites,
+	wiphy->max_num_pmkids = WILC_MAX_NUM_PMKIDS;
+	wiphy->max_scan_ie_len = 1000;
+	wiphy->signal_type = CFG80211_SIGNAL_TYPE_MBM;
+	memcpy(wl->cipher_suites, wilc_cipher_suites,
 	       sizeof(wilc_cipher_suites));
-	wdev->wiphy->cipher_suites = priv->cipher_suites;
-	wdev->wiphy->n_cipher_suites = ARRAY_SIZE(wilc_cipher_suites);
-	wdev->wiphy->mgmt_stypes = wilc_wfi_cfg80211_mgmt_types;
-
-	wdev->wiphy->max_remain_on_channel_duration = 500;
-	wdev->wiphy->interface_modes = BIT(NL80211_IFTYPE_STATION) |
-					BIT(NL80211_IFTYPE_AP) |
-					BIT(NL80211_IFTYPE_MONITOR) |
-					BIT(NL80211_IFTYPE_P2P_GO) |
-					BIT(NL80211_IFTYPE_P2P_CLIENT);
-	wdev->wiphy->flags |= WIPHY_FLAG_HAS_REMAIN_ON_CHANNEL;
-	wdev->iftype = NL80211_IFTYPE_STATION;
-
-	set_wiphy_dev(wdev->wiphy, dev);
-
-	ret = wiphy_register(wdev->wiphy);
+	wiphy->cipher_suites = wl->cipher_suites;
+	wiphy->n_cipher_suites = ARRAY_SIZE(wilc_cipher_suites);
+	wiphy->mgmt_stypes = wilc_wfi_cfg80211_mgmt_types;
+
+	wiphy->max_remain_on_channel_duration = 500;
+	wiphy->interface_modes = BIT(NL80211_IFTYPE_STATION) |
+				BIT(NL80211_IFTYPE_AP) |
+				BIT(NL80211_IFTYPE_MONITOR) |
+				BIT(NL80211_IFTYPE_P2P_GO) |
+				BIT(NL80211_IFTYPE_P2P_CLIENT);
+	wiphy->flags |= WIPHY_FLAG_HAS_REMAIN_ON_CHANNEL;
+
+	set_wiphy_dev(wiphy, dev);
+	wl->wiphy = wiphy;
+	ret = wiphy_register(wiphy);
 	if (ret) {
-		netdev_err(net, "Cannot register wiphy device\n");
-		wiphy_free(wdev->wiphy);
-		kfree(wdev);
+		wiphy_free(wiphy);
 		return NULL;
 	}
-
-	priv->dev = net;
-	return wdev;
+	return wl;
 }
 
 int wilc_init_host_int(struct net_device *net)
 {
 	int ret;
-	struct wilc_priv *priv = wdev_priv(net->ieee80211_ptr);
-	struct wilc_vif *vif = netdev_priv(priv->dev);
+	struct wilc_vif *vif = netdev_priv(net);
+	struct wilc_priv *priv = &vif->priv;
 
 	timer_setup(&vif->during_ip_timer, clear_during_ip, 0);
 
@@ -1790,8 +1965,8 @@ int wilc_init_host_int(struct net_device *net)
 void wilc_deinit_host_int(struct net_device *net)
 {
 	int ret;
-	struct wilc_priv *priv = wdev_priv(net->ieee80211_ptr);
-	struct wilc_vif *vif = netdev_priv(priv->dev);
+	struct wilc_vif *vif = netdev_priv(net);
+	struct wilc_priv *priv = &vif->priv;
 
 	priv->p2p_listen_state = false;
 
@@ -1804,19 +1979,3 @@ void wilc_deinit_host_int(struct net_device *net)
 		netdev_err(net, "Error while deinitializing host interface\n");
 }
 
-void wilc_free_wiphy(struct net_device *net)
-{
-	if (!net)
-		return;
-
-	if (!net->ieee80211_ptr)
-		return;
-
-	if (!net->ieee80211_ptr->wiphy)
-		return;
-
-	wiphy_unregister(net->ieee80211_ptr->wiphy);
-
-	wiphy_free(net->ieee80211_ptr->wiphy);
-	kfree(net->ieee80211_ptr);
-}
diff --git a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.h b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.h
index 31dfa1f..234faaa 100644
--- a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.h
+++ b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.h
@@ -8,17 +8,20 @@
 #define NM_WFI_CFGOPERATIONS
 #include "wilc_wfi_netdevice.h"
 
-struct wireless_dev *wilc_create_wiphy(struct net_device *net,
-				       struct device *dev);
-void wilc_free_wiphy(struct net_device *net);
+struct wiphy *wilc_cfg_alloc(void);
+int wilc_cfg80211_init(struct wilc **wilc, struct device *dev, int io_type,
+		       const struct wilc_hif_func *ops);
+struct wilc *wilc_create_wiphy(struct device *dev);
 void wilc_deinit_host_int(struct net_device *net);
 int wilc_init_host_int(struct net_device *net);
 void wilc_wfi_monitor_rx(struct net_device *mon_dev, u8 *buff, u32 size);
-void wilc_wfi_deinit_mon_interface(struct wilc *wl);
+struct wilc_vif *wilc_netdev_interface(struct wilc *wl, const char *name,
+				       enum nl80211_iftype type);
+void wilc_wfi_deinit_mon_interface(struct wilc *wl, bool rtnl_locked);
 struct net_device *wilc_wfi_init_mon_interface(struct wilc *wl,
 					       const char *name,
 					       struct net_device *real_dev);
 void wilc_mgmt_frame_register(struct wiphy *wiphy, struct wireless_dev *wdev,
 			      u16 frame_type, bool reg);
-
+struct wilc_vif *wilc_get_interface(struct wilc *wl);
 #endif
diff --git a/drivers/staging/wilc1000/wilc_wfi_netdevice.h b/drivers/staging/wilc1000/wilc_wfi_netdevice.h
index df00762..fca3380 100644
--- a/drivers/staging/wilc1000/wilc_wfi_netdevice.h
+++ b/drivers/staging/wilc1000/wilc_wfi_netdevice.h
@@ -129,7 +129,7 @@ static struct ieee80211_rate wilc_bitrates[] = {
 };
 
 struct wilc_priv {
-	struct wireless_dev *wdev;
+	struct wireless_dev wdev;
 	struct cfg80211_scan_request *scan_req;
 
 	struct wilc_wfi_p2p_listen_params remain_on_ch_params;
@@ -156,10 +156,6 @@ struct wilc_priv {
 	int scanned_cnt;
 	struct wilc_p2p_var p2p;
 
-	struct ieee80211_channel channels[ARRAY_SIZE(wilc_2ghz_channels)];
-	struct ieee80211_rate bitrates[ARRAY_SIZE(wilc_bitrates)];
-	struct ieee80211_supported_band band;
-	u32 cipher_suites[ARRAY_SIZE(wilc_cipher_suites)];
 	u64 inc_roc_cookie;
 };
 
@@ -214,9 +210,11 @@ struct wilc_vif {
 	struct rf_info periodic_stat;
 	struct tcp_ack_filter ack_filter;
 	bool connecting;
+	struct wilc_priv priv;
 };
 
 struct wilc {
+	struct wiphy *wiphy;
 	const struct wilc_hif_func *hif_func;
 	int io_type;
 	s8 mac_status;
@@ -226,6 +224,8 @@ struct wilc {
 	int close;
 	u8 vif_num;
 	struct wilc_vif *vif[WILC_NUM_CONCURRENT_IFC];
+	/*protect vif list*/
+	struct mutex vif_mutex;
 	u8 open_ifcs;
 	/*protect head of transmit queue*/
 	struct mutex txq_add_to_head_cs;
@@ -275,6 +275,10 @@ struct wilc {
 	struct mutex deinit_lock;
 	u8 sta_ch;
 	u8 op_ch;
+	struct ieee80211_channel channels[ARRAY_SIZE(wilc_2ghz_channels)];
+	struct ieee80211_rate bitrates[ARRAY_SIZE(wilc_bitrates)];
+	struct ieee80211_supported_band band;
+	u32 cipher_suites[ARRAY_SIZE(wilc_cipher_suites)];
 };
 
 struct wilc_wfi_mon_priv {
@@ -284,9 +288,9 @@ struct wilc_wfi_mon_priv {
 void wilc_frmw_to_host(struct wilc *wilc, u8 *buff, u32 size, u32 pkt_offset);
 void wilc_mac_indicate(struct wilc *wilc);
 void wilc_netdev_cleanup(struct wilc *wilc);
-int wilc_netdev_init(struct wilc **wilc, struct device *dev, int io_type,
-		     const struct wilc_hif_func *ops);
 void wilc_wfi_mgmt_rx(struct wilc *wilc, u8 *buff, u32 size);
 void wilc_wlan_set_bssid(struct net_device *wilc_netdev, u8 *bssid, u8 mode);
-
+struct wilc_vif *wilc_netdev_ifc_init(struct wilc *wl, const char *name,
+				      int vif_type, enum nl80211_iftype type,
+				      bool rtnl_locked);
 #endif
diff --git a/drivers/staging/wilc1000/wilc_wlan.c b/drivers/staging/wilc1000/wilc_wlan.c
index dcd7285..bd2ffc3 100644
--- a/drivers/staging/wilc1000/wilc_wlan.c
+++ b/drivers/staging/wilc1000/wilc_wlan.c
@@ -6,7 +6,7 @@
 
 #include <linux/if_ether.h>
 #include <linux/ip.h>
-#include "wilc_wfi_netdevice.h"
+#include "wilc_wfi_cfgoperations.h"
 #include "wilc_wlan_cfg.h"
 
 static inline bool is_wilc1000(u32 id)
@@ -267,6 +267,7 @@ static int wilc_wlan_txq_add_cfg_pkt(struct wilc_vif *vif, u8 *buffer,
 	tqe->tx_complete_func = NULL;
 	tqe->priv = NULL;
 	tqe->ack_idx = NOT_TCP_ACK;
+	tqe->vif = vif;
 
 	wilc_wlan_txq_add_to_head(vif, tqe);
 
@@ -295,6 +296,7 @@ int wilc_wlan_txq_add_net_pkt(struct net_device *dev, void *priv, u8 *buffer,
 	tqe->buffer_size = buffer_size;
 	tqe->tx_complete_func = tx_complete_fn;
 	tqe->priv = priv;
+	tqe->vif = vif;
 
 	tqe->ack_idx = NOT_TCP_ACK;
 	if (vif->ack_filter.enabled)
@@ -326,6 +328,7 @@ int wilc_wlan_txq_add_mgmt_pkt(struct net_device *dev, void *priv, u8 *buffer,
 	tqe->tx_complete_func = tx_complete_fn;
 	tqe->priv = priv;
 	tqe->ack_idx = NOT_TCP_ACK;
+	tqe->vif = vif;
 	wilc_wlan_txq_add_to_tail(dev, tqe);
 	return 1;
 }
@@ -482,7 +485,7 @@ void host_sleep_notify(struct wilc *wilc)
 }
 EXPORT_SYMBOL_GPL(host_sleep_notify);
 
-int wilc_wlan_handle_txq(struct net_device *dev, u32 *txq_count)
+int wilc_wlan_handle_txq(struct wilc *wilc, u32 *txq_count)
 {
 	int i, entries = 0;
 	u32 sum;
@@ -494,17 +497,20 @@ int wilc_wlan_handle_txq(struct net_device *dev, u32 *txq_count)
 	int counter;
 	int timeout;
 	u32 vmm_table[WILC_VMM_TBL_SIZE];
-	struct wilc_vif *vif = netdev_priv(dev);
-	struct wilc *wilc = vif->wilc;
 	const struct wilc_hif_func *func;
 	u8 *txb = wilc->tx_buffer;
+	struct net_device *dev;
+	struct wilc_vif *vif;
 
 	if (wilc->quit)
 		goto out;
 
 	mutex_lock(&wilc->txq_add_to_head_cs);
-	wilc_wlan_txq_filter_dup_tcp_ack(dev);
 	tqe = wilc_wlan_txq_get_first(wilc);
+	if (!tqe)
+		goto out;
+	dev = tqe->vif->ndev;
+	wilc_wlan_txq_filter_dup_tcp_ack(dev);
 	i = 0;
 	sum = 0;
 	do {
@@ -629,6 +635,7 @@ int wilc_wlan_handle_txq(struct net_device *dev, u32 *txq_count)
 		if (!tqe)
 			break;
 
+		vif = tqe->vif;
 		if (vmm_table[i] == 0)
 			break;
 
@@ -648,8 +655,7 @@ int wilc_wlan_handle_txq(struct net_device *dev, u32 *txq_count)
 		if (tqe->type == WILC_CFG_PKT) {
 			buffer_offset = ETH_CONFIG_PKT_HDR_OFFSET;
 		} else if (tqe->type == WILC_NET_PKT) {
-			bssid = ((struct tx_complete_data *)(tqe->priv))->bssid;
-
+			bssid = tqe->vif->bssid;
 			buffer_offset = ETH_ETHERNET_HDR_OFFSET;
 			memcpy(&txb[offset + 8], bssid, 6);
 		} else {
diff --git a/drivers/staging/wilc1000/wilc_wlan.h b/drivers/staging/wilc1000/wilc_wlan.h
index 1a27f62..3e54a56 100644
--- a/drivers/staging/wilc1000/wilc_wlan.h
+++ b/drivers/staging/wilc1000/wilc_wlan.h
@@ -216,6 +216,7 @@ struct txq_entry_t {
 	int buffer_size;
 	void *priv;
 	int status;
+	struct wilc_vif *vif;
 	void (*tx_complete_func)(void *priv, int status);
 };
 
@@ -253,7 +254,6 @@ struct wilc_hif_func {
 struct tx_complete_data {
 	int size;
 	void *buff;
-	u8 *bssid;
 	struct sk_buff *skb;
 };
 
@@ -284,7 +284,7 @@ int wilc_wlan_stop(struct wilc *wilc);
 int wilc_wlan_txq_add_net_pkt(struct net_device *dev, void *priv, u8 *buffer,
 			      u32 buffer_size,
 			      void (*tx_complete_fn)(void *, int));
-int wilc_wlan_handle_txq(struct net_device *dev, u32 *txq_count);
+int wilc_wlan_handle_txq(struct wilc *wl, u32 *txq_count);
 void wilc_handle_isr(struct wilc *wilc);
 void wilc_wlan_cleanup(struct net_device *dev);
 int wilc_wlan_cfg_set(struct wilc_vif *vif, int start, u16 wid, u8 *buffer,
@@ -301,7 +301,7 @@ void wilc_enable_tcp_ack_filter(struct wilc_vif *vif, bool value);
 int wilc_wlan_get_num_conn_ifcs(struct wilc *wilc);
 netdev_tx_t wilc_mac_xmit(struct sk_buff *skb, struct net_device *dev);
 
-void wilc_wfi_p2p_rx(struct net_device *dev, u8 *buff, u32 size);
+void wilc_wfi_p2p_rx(struct wilc_vif *vif, u8 *buff, u32 size);
 void host_wakeup_notify(struct wilc *wilc);
 void host_sleep_notify(struct wilc *wilc);
 void chip_allow_sleep(struct wilc *wilc);
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
