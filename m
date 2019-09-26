Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CD16FBF5AE
	for <lists+driverdev-devel@lfdr.de>; Thu, 26 Sep 2019 17:15:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5FA4120515;
	Thu, 26 Sep 2019 15:15:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rIFDPnZdV+D0; Thu, 26 Sep 2019 15:15:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E8BD522001;
	Thu, 26 Sep 2019 15:15:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 550F01BF334
 for <devel@linuxdriverproject.org>; Thu, 26 Sep 2019 15:15:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5178486ACB
 for <devel@linuxdriverproject.org>; Thu, 26 Sep 2019 15:15:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id A5XRYkzYH4lM for <devel@linuxdriverproject.org>;
 Thu, 26 Sep 2019 15:15:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa2.microchip.iphmx.com (esa2.microchip.iphmx.com
 [68.232.149.84])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 6DD348695B
 for <devel@driverdev.osuosl.org>; Thu, 26 Sep 2019 15:15:04 +0000 (UTC)
Received-SPF: Pass (esa2.microchip.iphmx.com: domain of
 Ajay.Kathat@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Ajay.Kathat@microchip.com";
 x-sender="Ajay.Kathat@microchip.com"; x-conformance=spf_only;
 x-record-type="v=spf1"; x-record-text="v=spf1 mx
 a:ushub1.microchip.com a:smtpout.microchip.com
 a:mx1.microchip.iphmx.com a:mx2.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa2.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Ajay.Kathat@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa2.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Ajay.Kathat@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: F0+m+ayIFa49tArqudLA2wS0/T0xhEKDNH49fe+tvXwzBddROpwUgq6w6zBp9WYAQOO71ptDlS
 tCmHQWxSSWpegu7RRDOwQl6/C8sJ4znwMgETsHzqL8eqlDFXEy1HbmUlb6Kbjnx31HCjAMbI/A
 W9ZNsxtwsvXi1hjik0xFNy/C8zkNBIam29eheL8REBoVDnYofrN2FMCSaVuIF9n+bA2DVgCtZU
 bJ+dzOtl5yWjYiwA9WQyWtW+7ceFSQYr6JOe/pChfPQUQBbpeT2dp3R5PWBoi+gDCpP6K1B+9K
 hE0=
X-IronPort-AV: E=Sophos;i="5.64,552,1559545200"; d="scan'208";a="50456130"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 26 Sep 2019 08:15:02 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 26 Sep 2019 08:15:01 -0700
Received: from NAM03-BY2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5 via Frontend
 Transport; Thu, 26 Sep 2019 08:15:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hF9F1odUtPXu2NTO8nE08Dr85eLaYcMTCKnjlVsrtgMU8odBxl06dQmMv5m/I++wLsDKLEQ4cPlZaMGMw+r/csStxjwtxe5WOXLLc2WhW5ibYv8CxnC1oFqMFzw+R9gQQ/5+FwPWrTpcdGLQtO8oJmEssY9JAkoW1NQWD5EWui21+VppEiMus+7y74Dc1B1B+RboWxus4zCAOcjvaQnfTeAmf20R9actAepWEZu49gsWeh+3FmLndt00pWAV/K4MVRXNHCMezhyo89RgOwfBLX/q6fHPt1pS3jZgWyIPK60nKyh0SQYo7B1Ves8Z+7utbHkoO0VQy2Eo2izawZKBAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Q1VJEAceu0/igecMa5xsWkqM7woekV/9DiMX7EhFAN8=;
 b=VNquexLkyb5toI/tDgbabe9KH87MH3v9TvDOF9QiVw2HFI8dhCFFrYiQiqhTch8HTVyjzYbwsOW5NPzoAs9bl7SIk5ida+ZJfUzTlCfEjo+NPKB6dayXo6ljfY4S9jPPS8kpMC397csdo4sOtShFlxlRoFrNda9Li+/6tGgL4EnoVgdBO7O5rZhTPc/LcHK5m3m6sng4OQi32L12KmCzxrd+93FW0iKnXhC4vCvrPb66MECUvuL72M4Qyl66h6qbLeDibi4VSIsbvOEFpsP3vzXjB1BozrSmq0oRRp5ZRYZBXzNvA1Nne+EZ+9NrNF+kNSdJA6kQdUKK2vxVI1qNxA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Q1VJEAceu0/igecMa5xsWkqM7woekV/9DiMX7EhFAN8=;
 b=UiBP6sDXMORdnkV95e7Vh7aR1urQuAecg51U90Dt8tvhwePZFhn6tfGV0/0F1lofOyKrz26QIH4SycLYIetQeKoNG/0LXrZByzssWTXmVKz/iwaZPr8Ywf7tmWRzf+Pg8P+HHbOo3DLSk/KSrNMubuORhGuv3M+ZV5t39C8dHvg=
Received: from BN6PR11MB3985.namprd11.prod.outlook.com (10.255.129.78) by
 BN6PR11MB1860.namprd11.prod.outlook.com (10.175.99.21) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.20; Thu, 26 Sep 2019 15:15:00 +0000
Received: from BN6PR11MB3985.namprd11.prod.outlook.com
 ([fe80::8d48:6075:7cc9:7d43]) by BN6PR11MB3985.namprd11.prod.outlook.com
 ([fe80::8d48:6075:7cc9:7d43%6]) with mapi id 15.20.2284.028; Thu, 26 Sep 2019
 15:15:00 +0000
From: <Ajay.Kathat@microchip.com>
To: <linux-wireless@vger.kernel.org>
Subject: [PATCH 3/3] staging: wilc1000: use RCU list to maintain vif
 interfaces list
Thread-Topic: [PATCH 3/3] staging: wilc1000: use RCU list to maintain vif
 interfaces list
Thread-Index: AQHVdH0pCOUR4fwSlU+S5NhuomFS7A==
Date: Thu, 26 Sep 2019 15:14:59 +0000
Message-ID: <20190926151436.27819-3-ajay.kathat@microchip.com>
References: <20190926151436.27819-1-ajay.kathat@microchip.com>
In-Reply-To: <20190926151436.27819-1-ajay.kathat@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: MAXPR0101CA0021.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:c::31) To BN6PR11MB3985.namprd11.prod.outlook.com
 (2603:10b6:405:7b::14)
x-mailer: git-send-email 2.22.0
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [183.82.19.178]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b821a277-4685-4568-4cd6-08d742944c19
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600167)(711020)(4605104)(1401327)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:BN6PR11MB1860; 
x-ms-traffictypediagnostic: BN6PR11MB1860:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BN6PR11MB1860CCAF0FED2B5F56D72C4FE3860@BN6PR11MB1860.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:669;
x-forefront-prvs: 0172F0EF77
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(366004)(396003)(39860400002)(136003)(346002)(199004)(189003)(476003)(71200400001)(5660300002)(316002)(99286004)(186003)(2351001)(26005)(1076003)(66476007)(66946007)(6506007)(14454004)(66556008)(30864003)(2501003)(86362001)(478600001)(102836004)(76176011)(66446008)(52116002)(64756008)(2906002)(386003)(36756003)(50226002)(81166006)(6436002)(6116002)(3846002)(4326008)(8936002)(25786009)(486006)(305945005)(7736002)(66066001)(8676002)(5640700003)(6512007)(81156014)(107886003)(6916009)(256004)(6486002)(14444005)(2616005)(71190400001)(54906003)(446003)(11346002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN6PR11MB1860;
 H:BN6PR11MB3985.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: nr6tT5wbVfyFPbvXeJXy/5yxsTQp+hlCzXfg3YdL2aD6nhJmfVFN2RzuRGA+uux45j2fdhSF8RF//XPqUGnFbvshT87/967qzT1pUdHB1t5Trph+DmJNzP//wEMSpWR0fOXa312yOOZ17DOhIsABJuOsCdkEJN7t2rOyCkxOh5XQb9EfDJczHSjuHI6B68hfLvq1EGG+QV/pfZyhJgrXvzXp6u1Q7kS6SI+TWvUurqfizygwAEsLkvsYGbN1t3ERY6uTl0Fae8xzGxcEbBuR7/5BVqo//t92enff3YEBZ6f76U1AiYencZhVDGtq6GUyqAT76g+o4s93miEdzrEhHH6YaK/Mn51LqOpaIC4kSv0oQgLxuDQ+++zXOLPNNg3F5I7dXgYjqxWW2FEScQ6AQHqN8RxkCMsuPi1IGnG0+4Q=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: b821a277-4685-4568-4cd6-08d742944c19
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Sep 2019 15:15:00.0491 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5ESQmnHGNKx/3jmJNs8TPILwLQVacrkVSZr53aRApcYHmBdZXbfDcQwI0nkydCp0sqkZJYyRfCJIyxRlzFiZjj/+9GCS0n800+rLa4JvEUA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1860
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

Make use of RCU list to maintain virtual interfaces instead of an array.
The update operation on 'vif' list is less compare to the read
operations. Mostly the 'vif' list elements are accessed for the read
operation, so RCU list is more suited for this requirement.
The shifting of interface index id's during the delete interface is not
required. As the firmware only supports 2 interfaces so make use of
available free slot index id during add interface.

Signed-off-by: Ajay Singh <ajay.kathat@microchip.com>
---
 drivers/staging/wilc1000/wilc_hif.c           |   8 +-
 drivers/staging/wilc1000/wilc_netdev.c        | 117 ++++++++++-----
 .../staging/wilc1000/wilc_wfi_cfgoperations.c | 141 ++++++++----------
 .../staging/wilc1000/wilc_wfi_cfgoperations.h |   1 +
 drivers/staging/wilc1000/wilc_wfi_netdevice.h |   4 +-
 5 files changed, 148 insertions(+), 123 deletions(-)

diff --git a/drivers/staging/wilc1000/wilc_hif.c b/drivers/staging/wilc1000/wilc_hif.c
index f2b7d5a1be17..0ac2b6ac50b0 100644
--- a/drivers/staging/wilc1000/wilc_hif.c
+++ b/drivers/staging/wilc1000/wilc_hif.c
@@ -183,11 +183,17 @@ int wilc_get_vif_idx(struct wilc_vif *vif)
 static struct wilc_vif *wilc_get_vif_from_idx(struct wilc *wilc, int idx)
 {
 	int index = idx - 1;
+	struct wilc_vif *vif;
 
 	if (index < 0 || index >= WILC_NUM_CONCURRENT_IFC)
 		return NULL;
 
-	return wilc->vif[index];
+	list_for_each_entry_rcu(vif, &wilc->vif_list, list) {
+		if (vif->idx == index)
+			return vif;
+	}
+
+	return NULL;
 }
 
 static int handle_scan_done(struct wilc_vif *vif, enum scan_event evt)
diff --git a/drivers/staging/wilc1000/wilc_netdev.c b/drivers/staging/wilc1000/wilc_netdev.c
index d931fb2b2745..93c0d6e78813 100644
--- a/drivers/staging/wilc1000/wilc_netdev.c
+++ b/drivers/staging/wilc1000/wilc_netdev.c
@@ -97,29 +97,25 @@ void wilc_mac_indicate(struct wilc *wilc)
 static struct net_device *get_if_handler(struct wilc *wilc, u8 *mac_header)
 {
 	u8 *bssid, *bssid1;
-	int i = 0;
 	struct net_device *ndev = NULL;
+	struct wilc_vif *vif;
 
 	bssid = mac_header + 10;
 	bssid1 = mac_header + 4;
 
-	mutex_lock(&wilc->vif_mutex);
-	for (i = 0; i < wilc->vif_num; i++) {
-		if (wilc->vif[i]->mode == WILC_STATION_MODE)
-			if (ether_addr_equal_unaligned(bssid,
-						       wilc->vif[i]->bssid)) {
-				ndev = wilc->vif[i]->ndev;
+	list_for_each_entry_rcu(vif, &wilc->vif_list, list) {
+		if (vif->mode == WILC_STATION_MODE)
+			if (ether_addr_equal_unaligned(bssid, vif->bssid)) {
+				ndev = vif->ndev;
 				goto out;
 			}
-		if (wilc->vif[i]->mode == WILC_AP_MODE)
-			if (ether_addr_equal_unaligned(bssid1,
-						       wilc->vif[i]->bssid)) {
-				ndev = wilc->vif[i]->ndev;
+		if (vif->mode == WILC_AP_MODE)
+			if (ether_addr_equal_unaligned(bssid1, vif->bssid)) {
+				ndev = vif->ndev;
 				goto out;
 			}
 	}
 out:
-	mutex_unlock(&wilc->vif_mutex);
 	return ndev;
 }
 
@@ -137,13 +133,16 @@ void wilc_wlan_set_bssid(struct net_device *wilc_netdev, u8 *bssid, u8 mode)
 
 int wilc_wlan_get_num_conn_ifcs(struct wilc *wilc)
 {
-	u8 i = 0;
+	int srcu_idx;
 	u8 ret_val = 0;
+	struct wilc_vif *vif;
 
-	for (i = 0; i < wilc->vif_num; i++)
-		if (!is_zero_ether_addr(wilc->vif[i]->bssid))
+	srcu_idx = srcu_read_lock(&wilc->srcu);
+	list_for_each_entry_rcu(vif, &wilc->vif_list, list) {
+		if (!is_zero_ether_addr(vif->bssid))
 			ret_val++;
-
+	}
+	srcu_read_unlock(&wilc->srcu, srcu_idx);
 	return ret_val;
 }
 
@@ -167,16 +166,16 @@ static int wilc_txq_task(void *vp)
 		do {
 			ret = wilc_wlan_handle_txq(wl, &txq_count);
 			if (txq_count < FLOW_CONTROL_LOWER_THRESHOLD) {
-				int i;
+				int srcu_idx;
 				struct wilc_vif *ifc;
 
-				mutex_lock(&wl->vif_mutex);
-				for (i = 0; i < wl->vif_num; i++) {
-					ifc = wl->vif[i];
+				srcu_idx = srcu_read_lock(&wl->srcu);
+				list_for_each_entry_rcu(ifc, &wl->vif_list,
+							list) {
 					if (ifc->mac_opened && ifc->ndev)
 						netif_wake_queue(ifc->ndev);
 				}
-				mutex_unlock(&wl->vif_mutex);
+				srcu_read_unlock(&wl->srcu, srcu_idx);
 			}
 		} while (ret == -ENOBUFS && !wl->close);
 	}
@@ -725,14 +724,15 @@ netdev_tx_t wilc_mac_xmit(struct sk_buff *skb, struct net_device *ndev)
 						wilc_tx_complete);
 
 	if (queue_count > FLOW_CONTROL_UPPER_THRESHOLD) {
-		int i;
+		int srcu_idx;
+		struct wilc_vif *vif;
 
-		mutex_lock(&wilc->vif_mutex);
-		for (i = 0; i < wilc->vif_num; i++) {
-			if (wilc->vif[i]->mac_opened)
-				netif_stop_queue(wilc->vif[i]->ndev);
+		srcu_idx = srcu_read_lock(&wilc->srcu);
+		list_for_each_entry_rcu(vif, &wilc->vif_list, list) {
+			if (vif->mac_opened)
+				netif_stop_queue(vif->ndev);
 		}
-		mutex_unlock(&wilc->vif_mutex);
+		srcu_read_unlock(&wilc->srcu, srcu_idx);
 	}
 
 	return 0;
@@ -810,14 +810,13 @@ void wilc_frmw_to_host(struct wilc *wilc, u8 *buff, u32 size,
 
 void wilc_wfi_mgmt_rx(struct wilc *wilc, u8 *buff, u32 size)
 {
-	int i = 0;
+	int srcu_idx;
 	struct wilc_vif *vif;
 
-	mutex_lock(&wilc->vif_mutex);
-	for (i = 0; i < wilc->vif_num; i++) {
+	srcu_idx = srcu_read_lock(&wilc->srcu);
+	list_for_each_entry_rcu(vif, &wilc->vif_list, list) {
 		u16 type = le16_to_cpup((__le16 *)buff);
 
-		vif = netdev_priv(wilc->vif[i]->ndev);
 		if ((type == vif->frame_reg[0].type && vif->frame_reg[0].reg) ||
 		    (type == vif->frame_reg[1].type && vif->frame_reg[1].reg)) {
 			wilc_wfi_p2p_rx(vif, buff, size);
@@ -829,7 +828,7 @@ void wilc_wfi_mgmt_rx(struct wilc *wilc, u8 *buff, u32 size)
 			break;
 		}
 	}
-	mutex_unlock(&wilc->vif_mutex);
+	srcu_read_unlock(&wilc->srcu, srcu_idx);
 }
 
 static const struct net_device_ops wilc_netdev_ops = {
@@ -843,7 +842,8 @@ static const struct net_device_ops wilc_netdev_ops = {
 
 void wilc_netdev_cleanup(struct wilc *wilc)
 {
-	int i;
+	struct wilc_vif *vif;
+	int srcu_idx;
 
 	if (!wilc)
 		return;
@@ -853,14 +853,32 @@ void wilc_netdev_cleanup(struct wilc *wilc)
 		wilc->firmware = NULL;
 	}
 
-	for (i = 0; i < wilc->vif_num; i++) {
-		if (wilc->vif[i] && wilc->vif[i]->ndev)
-			unregister_netdev(wilc->vif[i]->ndev);
+	srcu_idx = srcu_read_lock(&wilc->srcu);
+	list_for_each_entry_rcu(vif, &wilc->vif_list, list) {
+		if (vif->ndev)
+			unregister_netdev(vif->ndev);
 	}
+	srcu_read_unlock(&wilc->srcu, srcu_idx);
 
 	wilc_wfi_deinit_mon_interface(wilc, false);
 	flush_workqueue(wilc->hif_workqueue);
 	destroy_workqueue(wilc->hif_workqueue);
+
+	do {
+		mutex_lock(&wilc->vif_mutex);
+		if (wilc->vif_num <= 0) {
+			mutex_unlock(&wilc->vif_mutex);
+			break;
+		}
+		vif = wilc_get_wl_to_vif(wilc);
+		if (!IS_ERR(vif))
+			list_del_rcu(&vif->list);
+
+		wilc->vif_num--;
+		mutex_unlock(&wilc->vif_mutex);
+		synchronize_srcu(&wilc->srcu);
+	} while (1);
+
 	wilc_wlan_cfg_deinit(wilc);
 	wlan_deinit_locks(wilc);
 	kfree(wilc->bus_data);
@@ -869,6 +887,23 @@ void wilc_netdev_cleanup(struct wilc *wilc)
 }
 EXPORT_SYMBOL_GPL(wilc_netdev_cleanup);
 
+static u8 wilc_get_available_idx(struct wilc *wl)
+{
+	int idx = 0;
+	struct wilc_vif *vif;
+	int srcu_idx;
+
+	srcu_idx = srcu_read_lock(&wl->srcu);
+	list_for_each_entry_rcu(vif, &wl->vif_list, list) {
+		if (vif->idx == 0)
+			idx = 1;
+		else
+			idx = 0;
+	}
+	srcu_read_unlock(&wl->srcu, srcu_idx);
+	return idx;
+}
+
 struct wilc_vif *wilc_netdev_ifc_init(struct wilc *wl, const char *name,
 				      int vif_type, enum nl80211_iftype type,
 				      bool rtnl_locked)
@@ -909,10 +944,14 @@ struct wilc_vif *wilc_netdev_ifc_init(struct wilc *wl, const char *name,
 
 	ndev->needs_free_netdev = true;
 	vif->iftype = vif_type;
-	vif->wilc->vif[wl->vif_num] = vif;
-	vif->idx = wl->vif_num;
-	wl->vif_num += 1;
+	vif->idx = wilc_get_available_idx(wl);
 	vif->mac_opened = 0;
+	mutex_lock(&wl->vif_mutex);
+	list_add_tail_rcu(&vif->list, &wl->vif_list);
+	wl->vif_num += 1;
+	mutex_unlock(&wl->vif_mutex);
+	synchronize_srcu(&wl->srcu);
+
 	return vif;
 }
 
diff --git a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
index 549b1d078198..3882c90dc3fb 100644
--- a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
+++ b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
@@ -186,15 +186,15 @@ static void cfg_connect_result(enum conn_event conn_disconn_evt, u8 mac_status,
 	}
 }
 
-static struct wilc_vif *wilc_get_wl_to_vif(struct wilc *wl)
+struct wilc_vif *wilc_get_wl_to_vif(struct wilc *wl)
 {
-	int i;
+	struct wilc_vif *vif;
 
-	for (i = 0; i < wl->vif_num; i++)
-		if (wl->vif[i])
-			return wl->vif[i];
+	vif = list_first_or_null_rcu(&wl->vif_list, typeof(*vif), list);
+	if (!vif)
+		return ERR_PTR(-EINVAL);
 
-	return ERR_PTR(-EINVAL);
+	return vif;
 }
 
 static int set_channel(struct wiphy *wiphy,
@@ -204,11 +204,12 @@ static int set_channel(struct wiphy *wiphy,
 	struct wilc_vif *vif;
 	u32 channelnum;
 	int result;
+	int srcu_idx;
 
-	mutex_lock(&wl->vif_mutex);
+	srcu_idx = srcu_read_lock(&wl->srcu);
 	vif = wilc_get_wl_to_vif(wl);
 	if (IS_ERR(vif)) {
-		mutex_unlock(&wl->vif_mutex);
+		srcu_read_unlock(&wl->srcu, srcu_idx);
 		return PTR_ERR(vif);
 	}
 
@@ -219,7 +220,7 @@ static int set_channel(struct wiphy *wiphy,
 	if (result)
 		netdev_err(vif->ndev, "Error in setting channel\n");
 
-	mutex_unlock(&wl->vif_mutex);
+	srcu_read_unlock(&wl->srcu, srcu_idx);
 	return result;
 }
 
@@ -749,33 +750,19 @@ static int change_bss(struct wiphy *wiphy, struct net_device *dev,
 	return 0;
 }
 
-struct wilc_vif *wilc_get_interface(struct wilc *wl)
-{
-	int i;
-	struct wilc_vif *vif = NULL;
-
-	mutex_lock(&wl->vif_mutex);
-	for (i = 0; i < wl->vif_num; i++) {
-		if (wl->vif[i]) {
-			vif = wl->vif[i];
-			break;
-		}
-	}
-	mutex_unlock(&wl->vif_mutex);
-	return vif;
-}
-
 static int set_wiphy_params(struct wiphy *wiphy, u32 changed)
 {
-	int ret;
+	int ret = -EINVAL;
 	struct cfg_param_attr cfg_param_val;
 	struct wilc *wl = wiphy_priv(wiphy);
 	struct wilc_vif *vif;
 	struct wilc_priv *priv;
+	int srcu_idx;
 
-	vif = wilc_get_interface(wl);
-	if (!vif)
-		return -EINVAL;
+	srcu_idx = srcu_read_lock(&wl->srcu);
+	vif = wilc_get_wl_to_vif(wl);
+	if (IS_ERR(vif))
+		goto out;
 
 	priv = &vif->priv;
 	cfg_param_val.flag = 0;
@@ -805,7 +792,7 @@ static int set_wiphy_params(struct wiphy *wiphy, u32 changed)
 		} else {
 			netdev_err(vif->ndev,
 				   "Fragmentation threshold out of range\n");
-			return -EINVAL;
+			goto out;
 		}
 	}
 
@@ -818,7 +805,7 @@ static int set_wiphy_params(struct wiphy *wiphy, u32 changed)
 			cfg_param_val.rts_threshold = wiphy->rts_threshold;
 		} else {
 			netdev_err(vif->ndev, "RTS threshold out of range\n");
-			return -EINVAL;
+			goto out;
 		}
 	}
 
@@ -826,6 +813,8 @@ static int set_wiphy_params(struct wiphy *wiphy, u32 changed)
 	if (ret)
 		netdev_err(priv->dev, "Error in setting WIPHY PARAMS\n");
 
+out:
+	srcu_read_unlock(&wl->srcu, srcu_idx);
 	return ret;
 }
 
@@ -1554,20 +1543,16 @@ static int change_station(struct wiphy *wiphy, struct net_device *dev,
 	return ret;
 }
 
-static int wilc_get_vif_from_type(struct wilc *wl, int type)
+static struct wilc_vif *wilc_get_vif_from_type(struct wilc *wl, int type)
 {
-	int i;
+	struct wilc_vif *vif;
 
-	mutex_lock(&wl->vif_mutex);
-	for (i = 0; i < wl->vif_num; i++) {
-		if (wl->vif[i]->iftype == type) {
-			mutex_unlock(&wl->vif_mutex);
-			return i;
-		}
+	list_for_each_entry_rcu(vif, &wl->vif_list, list) {
+		if (vif->iftype == type)
+			return vif;
 	}
-	mutex_unlock(&wl->vif_mutex);
 
-	return -EINVAL;
+	return NULL;
 }
 
 static struct wireless_dev *add_virtual_intf(struct wiphy *wiphy,
@@ -1580,29 +1565,36 @@ static struct wireless_dev *add_virtual_intf(struct wiphy *wiphy,
 	struct wilc_vif *vif;
 	struct wireless_dev *wdev;
 	int iftype;
-	int ret;
 
 	if (type == NL80211_IFTYPE_MONITOR) {
 		struct net_device *ndev;
-		int ap_index = wilc_get_vif_from_type(wl, WILC_AP_MODE);
-
-		if (ap_index < 0) {
-			ap_index = wilc_get_vif_from_type(wl, WILC_GO_MODE);
-			if (ap_index < 0)
+		int srcu_idx;
+
+		srcu_idx = srcu_read_lock(&wl->srcu);
+		vif = wilc_get_vif_from_type(wl, WILC_AP_MODE);
+		if (!vif) {
+			vif = wilc_get_vif_from_type(wl, WILC_GO_MODE);
+			if (!vif) {
+				srcu_read_unlock(&wl->srcu, srcu_idx);
 				goto validate_interface;
+			}
 		}
 
-		vif  = wl->vif[ap_index];
-		if (vif->monitor_flag)
+		if (vif->monitor_flag) {
+			srcu_read_unlock(&wl->srcu, srcu_idx);
 			goto validate_interface;
+		}
 
 		ndev = wilc_wfi_init_mon_interface(wl, name, vif->ndev);
-		if (ndev)
+		if (ndev) {
 			vif->monitor_flag = 1;
-		else
+		} else {
+			srcu_read_unlock(&wl->srcu, srcu_idx);
 			return ERR_PTR(-EINVAL);
+		}
 
 		wdev = &vif->priv.wdev;
+		srcu_read_unlock(&wl->srcu, srcu_idx);
 		return wdev;
 	}
 
@@ -1610,9 +1602,10 @@ static struct wireless_dev *add_virtual_intf(struct wiphy *wiphy,
 	mutex_lock(&wl->vif_mutex);
 	if (wl->vif_num == WILC_NUM_CONCURRENT_IFC) {
 		pr_err("Reached maximum number of interface\n");
-		ret = -EINVAL;
-		goto out_err;
+		mutex_unlock(&wl->vif_mutex);
+		return ERR_PTR(-EINVAL);
 	}
+	mutex_unlock(&wl->vif_mutex);
 
 	switch (type) {
 	case NL80211_IFTYPE_STATION:
@@ -1622,30 +1615,20 @@ static struct wireless_dev *add_virtual_intf(struct wiphy *wiphy,
 		iftype = WILC_AP_MODE;
 		break;
 	default:
-		ret = -EOPNOTSUPP;
-		goto out_err;
+		return ERR_PTR(-EOPNOTSUPP);
 	}
 
 	vif = wilc_netdev_ifc_init(wl, name, iftype, type, true);
-	if (IS_ERR(vif)) {
-		ret = PTR_ERR(vif);
-		goto out_err;
-	}
-
-	mutex_unlock(&wl->vif_mutex);
+	if (IS_ERR(vif))
+		return ERR_CAST(vif);
 
 	return &vif->priv.wdev;
-
-out_err:
-	mutex_unlock(&wl->vif_mutex);
-	return ERR_PTR(ret);
 }
 
 static int del_virtual_intf(struct wiphy *wiphy, struct wireless_dev *wdev)
 {
 	struct wilc *wl = wiphy_priv(wiphy);
 	struct wilc_vif *vif;
-	int i;
 
 	if (wdev->iftype == NL80211_IFTYPE_AP ||
 	    wdev->iftype == NL80211_IFTYPE_P2P_GO)
@@ -1655,22 +1638,12 @@ static int del_virtual_intf(struct wiphy *wiphy, struct wireless_dev *wdev)
 	unregister_netdevice(vif->ndev);
 	vif->monitor_flag = 0;
 
-	mutex_lock(&wl->vif_mutex);
 	wilc_set_operation_mode(vif, 0, 0, 0);
-	for (i = vif->idx; i < wl->vif_num; i++) {
-		if ((i + 1) >= wl->vif_num) {
-			wl->vif[i] = NULL;
-		} else {
-			vif = wl->vif[i + 1];
-			vif->idx = i;
-			wl->vif[i] = vif;
-			wilc_set_operation_mode(vif, wilc_get_vif_idx(vif),
-						vif->iftype, vif->idx);
-		}
-	}
+	mutex_lock(&wl->vif_mutex);
+	list_del_rcu(&vif->list);
 	wl->vif_num--;
 	mutex_unlock(&wl->vif_mutex);
-
+	synchronize_srcu(&wl->srcu);
 	return 0;
 }
 
@@ -1695,16 +1668,17 @@ static void wilc_set_wakeup(struct wiphy *wiphy, bool enabled)
 {
 	struct wilc *wl = wiphy_priv(wiphy);
 	struct wilc_vif *vif;
+	int srcu_idx;
 
-	mutex_lock(&wl->vif_mutex);
+	srcu_idx = srcu_read_lock(&wl->srcu);
 	vif = wilc_get_wl_to_vif(wl);
 	if (IS_ERR(vif)) {
-		mutex_unlock(&wl->vif_mutex);
+		srcu_read_unlock(&wl->srcu, srcu_idx);
 		return;
 	}
 
 	netdev_info(vif->ndev, "cfg set wake up = %d\n", enabled);
-	mutex_unlock(&wl->vif_mutex);
+	srcu_read_unlock(&wl->srcu, srcu_idx);
 }
 
 static int set_tx_power(struct wiphy *wiphy, struct wireless_dev *wdev,
@@ -1800,6 +1774,7 @@ static void wlan_init_locks(struct wilc *wl)
 	init_completion(&wl->cfg_event);
 	init_completion(&wl->sync_event);
 	init_completion(&wl->txq_thread_started);
+	init_srcu_struct(&wl->srcu);
 }
 
 void wlan_deinit_locks(struct wilc *wilc)
@@ -1809,6 +1784,7 @@ void wlan_deinit_locks(struct wilc *wilc)
 	mutex_destroy(&wilc->cfg_cmd_lock);
 	mutex_destroy(&wilc->txq_add_to_head_cs);
 	mutex_destroy(&wilc->vif_mutex);
+	cleanup_srcu_struct(&wilc->srcu);
 }
 
 int wilc_cfg80211_init(struct wilc **wilc, struct device *dev, int io_type,
@@ -1834,6 +1810,7 @@ int wilc_cfg80211_init(struct wilc **wilc, struct device *dev, int io_type,
 	wl->chip_ps_state = WILC_CHIP_WAKEDUP;
 	INIT_LIST_HEAD(&wl->txq_head.list);
 	INIT_LIST_HEAD(&wl->rxq_head.list);
+	INIT_LIST_HEAD(&wl->vif_list);
 
 	wl->hif_workqueue = create_singlethread_workqueue("WILC_wq");
 	if (!wl->hif_workqueue) {
diff --git a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.h b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.h
index d802f884e525..7206b6162a8c 100644
--- a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.h
+++ b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.h
@@ -24,5 +24,6 @@ struct net_device *wilc_wfi_init_mon_interface(struct wilc *wl,
 void wilc_mgmt_frame_register(struct wiphy *wiphy, struct wireless_dev *wdev,
 			      u16 frame_type, bool reg);
 struct wilc_vif *wilc_get_interface(struct wilc *wl);
+struct wilc_vif *wilc_get_wl_to_vif(struct wilc *wl);
 void wlan_deinit_locks(struct wilc *wilc);
 #endif
diff --git a/drivers/staging/wilc1000/wilc_wfi_netdevice.h b/drivers/staging/wilc1000/wilc_wfi_netdevice.h
index 978a8bdbfc40..fa41b46eb245 100644
--- a/drivers/staging/wilc1000/wilc_wfi_netdevice.h
+++ b/drivers/staging/wilc1000/wilc_wfi_netdevice.h
@@ -208,6 +208,7 @@ struct wilc_vif {
 	struct tcp_ack_filter ack_filter;
 	bool connecting;
 	struct wilc_priv priv;
+	struct list_head list;
 };
 
 struct wilc {
@@ -221,9 +222,10 @@ struct wilc {
 	int dev_irq_num;
 	int close;
 	u8 vif_num;
-	struct wilc_vif *vif[WILC_NUM_CONCURRENT_IFC];
+	struct list_head vif_list;
 	/*protect vif list*/
 	struct mutex vif_mutex;
+	struct srcu_struct srcu;
 	u8 open_ifcs;
 	/*protect head of transmit queue*/
 	struct mutex txq_add_to_head_cs;
-- 
2.22.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
