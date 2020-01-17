Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7591B140804
	for <lists+driverdev-devel@lfdr.de>; Fri, 17 Jan 2020 11:31:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id DBFB8220DF;
	Fri, 17 Jan 2020 10:31:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UoeKOtq4z6Pi; Fri, 17 Jan 2020 10:31:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 03A1A220EF;
	Fri, 17 Jan 2020 10:31:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AB1FA1BF2BB
 for <devel@linuxdriverproject.org>; Fri, 17 Jan 2020 10:31:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9230C86DAE
 for <devel@linuxdriverproject.org>; Fri, 17 Jan 2020 10:31:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OnyjeLKNS1Xv for <devel@linuxdriverproject.org>;
 Fri, 17 Jan 2020 10:31:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa4.microchip.iphmx.com (esa4.microchip.iphmx.com
 [68.232.154.123])
 by whitealder.osuosl.org (Postfix) with ESMTPS id DD2E086DBD
 for <devel@driverdev.osuosl.org>; Fri, 17 Jan 2020 10:31:28 +0000 (UTC)
Received-SPF: Pass (esa4.microchip.iphmx.com: domain of
 Ajay.Kathat@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Ajay.Kathat@microchip.com";
 x-sender="Ajay.Kathat@microchip.com"; x-conformance=spf_only;
 x-record-type="v=spf1"; x-record-text="v=spf1 mx
 a:ushub1.microchip.com a:smtpout.microchip.com
 -exists:%{i}.spf.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa4.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Ajay.Kathat@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa4.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Ajay.Kathat@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: 2/Vzii/G1umOr/a6aXkJDvAMqj5gyyeOqaSn3jGOBIF8OqWCqh7mqs4A4384lNaibYJf/2R9Do
 ngvyqjiU8jfOzPuRlqor/+sbEb+ygqWZh2tqHfT2+Zx82dBtSKbUv27iRt/YvDSmZYjFOLXrGR
 0FUtsBiZnxfpcc4CltkrUCa15JywA+FlamRpwJIk1+OwF8CE6aP/rrb8kfAj4F5kIjVZUBjkOX
 8bjlw6mKJvC2IrKrzufa2UUmZ3JsDUpPbjqX/qyhhPxr9U+PQzcg+iwwJYo59kiYUp8FK+aPMI
 FXg=
X-IronPort-AV: E=Sophos;i="5.70,329,1574146800"; d="scan'208";a="61369408"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 17 Jan 2020 03:31:28 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 17 Jan 2020 03:31:27 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 17 Jan 2020 03:31:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fQwNoAO/BEdYTABFwjFyhwNEcYPbwBJBuP0KkXukio5HtwEGd4cgZdPPjePLojCT7Hb5PZ9m9EO1l7JwvnqpPOVaPnaLDdY7lIMWJOBFz9qwrNedfccSH4U8+TXOERAI3OwrPrTNnBaQvNaaCIfVJy0U5v058RZXVJCzaVMJwlbVhU1gSeZPQt44Xhb6Ez4MCXgheN0k7tBboak3/pAV8CqZVHcuUo5YFMyNptg3qUWNFz8savyDpBiMhlyhNVy9CFRuTBnIsuHQH3z2VwSE65k/0SC+maMH1LPWWmH5SI9U5c2RdB3Jd9Ib0q+WS0pAG+m2YFCkd7GQykwdrZp28A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=o5agV0/Us/zJnCJJdOS17jZO9qXX663ySI3hI96UWUQ=;
 b=le4K+T/FKo3coQNNrWXM97wpvHAgWQGK35zQXbc6dZXErNOhjpCdggy83TBsmSFRr99/WCCwGtBf5r4Izq0XVhDSPPXlpluLOa46HHMafSHmdrZzrQs52zIY2+AAFXbi9zfzuADf0X2CMED48Zfes1SeEhtphqTPqBKwNE8i+0/8Z1r7XFtC3rAl8057ouKEaH4An29ZJFrgHmVQRkKPxMrokbaJKOQLoUoZ5+ynpgmAdJHUzMxFICxDhocT/LEddWst28oOEsnaH5+M3o5oAkfmrHBTE+Iq8UP9MloEZhOc/TsJwYYaweaTNQOF/05ZND4+qkdYmcNlU8C62XpydQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=o5agV0/Us/zJnCJJdOS17jZO9qXX663ySI3hI96UWUQ=;
 b=QukTkvi2kwjbQVRxMpEjhZ3TLfTatoYa76FuJHiqWBEH7jkRSsk73VQ6M6NbZX1OlXMk5Sl/5lkrWXEB9m5kqN1pVWilwNB1CjisTTF6fXGPLdc0XSeVV7mc8tBCpZmj2XIp1X4Ck2aYxUqqPa/oUEz7g5xE3X5qvqMTDepWGCg=
Received: from DM6PR11MB3996.namprd11.prod.outlook.com (20.176.125.206) by
 DM6PR11MB2907.namprd11.prod.outlook.com (20.177.217.33) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.20; Fri, 17 Jan 2020 10:31:23 +0000
Received: from DM6PR11MB3996.namprd11.prod.outlook.com
 ([fe80::75b4:bb0c:c245:4392]) by DM6PR11MB3996.namprd11.prod.outlook.com
 ([fe80::75b4:bb0c:c245:4392%5]) with mapi id 15.20.2623.018; Fri, 17 Jan 2020
 10:31:23 +0000
From: <Ajay.Kathat@microchip.com>
To: <linux-wireless@vger.kernel.org>
Subject: [PATCH 1/4] staging: wilc1000: remove use of infinite loop conditions
Thread-Topic: [PATCH 1/4] staging: wilc1000: remove use of infinite loop
 conditions
Thread-Index: AQHVzSFEOFYj1tIKa0a59ayIYa8L2A==
Date: Fri, 17 Jan 2020 10:31:23 +0000
Message-ID: <20200117160157.8706-2-ajay.kathat@microchip.com>
References: <20200117160157.8706-1-ajay.kathat@microchip.com>
In-Reply-To: <20200117160157.8706-1-ajay.kathat@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.17.1
x-originating-ip: [121.244.27.38]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: db6f6df3-04fa-4aff-8dc7-08d79b386698
x-ms-traffictypediagnostic: DM6PR11MB2907:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB29079522392EF7FEB618BEF8E3310@DM6PR11MB2907.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:59;
x-forefront-prvs: 0285201563
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(366004)(39860400002)(396003)(376002)(346002)(189003)(199004)(8936002)(6916009)(5660300002)(6486002)(81166006)(966005)(478600001)(26005)(76116006)(91956017)(8676002)(81156014)(66946007)(66476007)(66446008)(64756008)(66556008)(36756003)(4326008)(2906002)(86362001)(316002)(6506007)(2616005)(107886003)(71200400001)(1076003)(6512007)(186003)(54906003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR11MB2907;
 H:DM6PR11MB3996.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: cycVtdoVr+awDsddfqwFIrKlVyAGvyQtJZ0c8QEB9msmtgUEauJbI7Kk8wtzCxv+SlX1LLL1txUqYYXAbC1hexbzjnLmoKQpaxGwSrObdiDypzlFP+jXlAMD0bqlMHm4vwWF47arAg+tYQ5lCxjdxLf5HP9zn1OhTbh5sFvPm8BcJlQ4TfpFMDZJJT7G3lmS+EqFy64RyEDUEzKqilt/ErTcmugSRqClMetxldwfy2Ot08drXL5eX2H4xOBY4krSHoNw9+lhEUp+eA+z8YwqJw4VTEGqX1Kehxsi9uZfgZsGouy/a23Lru3opCS6qTT2hfg1fOVZ6/ERfnfJmOFVgMc7ovn1G0J6fTuQt1WTMf7QWj0TnlAjcXxbMixRasVicIyMjzPoa19hbBkmaK8Floeo2CBmmjvVzYchPyfTygCF0+ikJ4ke5WF0mHFe9gCX3/JpcMGfjgjlLJkGwIbJDQ5BFiWjRNnRzsAQN5R+FqidYLzX+DQgDyhewQt70LVo2jlzySdKROp1ZGiVB6RzMQ==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: db6f6df3-04fa-4aff-8dc7-08d79b386698
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jan 2020 10:31:23.6543 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Tq/jvtpqeMvf0eAr4ieJGEm7tXZiKk4I+tO71KqGulurNxbeHQ/+DE4agpCl9aDBB456FcgOFZjzrhd0bPbU+ktvYabOlIPw7oDkzWzKbnU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB2907
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

Avoid the use of 'while (1)' infinite loop conditions. It's not
recommended to have infinite loop in kernel code because a small bug can
cause never ending loops so use terminator condition as suggested in
full driver review [1].

[1]. https://lore.kernel.org/linux-wireless/20191023100313.52B3F606CF@smtp.codeaurora.org/

Signed-off-by: Ajay Singh <ajay.kathat@microchip.com>
---
 drivers/staging/wilc1000/netdev.c   |   7 +-
 drivers/staging/wilc1000/wlan.c     |  79 ++++++---------
 drivers/staging/wilc1000/wlan_cfg.c | 144 ++++++++++------------------
 3 files changed, 84 insertions(+), 146 deletions(-)

diff --git a/drivers/staging/wilc1000/netdev.c b/drivers/staging/wilc1000/netdev.c
index 3fd8e008f733..960dbc8d5173 100644
--- a/drivers/staging/wilc1000/netdev.c
+++ b/drivers/staging/wilc1000/netdev.c
@@ -837,7 +837,7 @@ static const struct net_device_ops wilc_netdev_ops = {
 void wilc_netdev_cleanup(struct wilc *wilc)
 {
 	struct wilc_vif *vif;
-	int srcu_idx;
+	int srcu_idx, ifc_cnt = 0;
 
 	if (!wilc)
 		return;
@@ -858,7 +858,7 @@ void wilc_netdev_cleanup(struct wilc *wilc)
 	flush_workqueue(wilc->hif_workqueue);
 	destroy_workqueue(wilc->hif_workqueue);
 
-	do {
+	while (ifc_cnt < WILC_NUM_CONCURRENT_IFC) {
 		mutex_lock(&wilc->vif_mutex);
 		if (wilc->vif_num <= 0) {
 			mutex_unlock(&wilc->vif_mutex);
@@ -871,7 +871,8 @@ void wilc_netdev_cleanup(struct wilc *wilc)
 		wilc->vif_num--;
 		mutex_unlock(&wilc->vif_mutex);
 		synchronize_srcu(&wilc->srcu);
-	} while (1);
+		ifc_cnt++;
+	}
 
 	wilc_wlan_cfg_deinit(wilc);
 	wlan_deinit_locks(wilc);
diff --git a/drivers/staging/wilc1000/wlan.c b/drivers/staging/wilc1000/wlan.c
index ba5446724c93..c32af7076012 100644
--- a/drivers/staging/wilc1000/wlan.c
+++ b/drivers/staging/wilc1000/wlan.c
@@ -499,37 +499,31 @@ int wilc_wlan_handle_txq(struct wilc *wilc, u32 *txq_count)
 	wilc_wlan_txq_filter_dup_tcp_ack(dev);
 	i = 0;
 	sum = 0;
-	do {
-		if (tqe && (i < (WILC_VMM_TBL_SIZE - 1))) {
-			if (tqe->type == WILC_CFG_PKT)
-				vmm_sz = ETH_CONFIG_PKT_HDR_OFFSET;
-
-			else if (tqe->type == WILC_NET_PKT)
-				vmm_sz = ETH_ETHERNET_HDR_OFFSET;
-
-			else
-				vmm_sz = HOST_HDR_OFFSET;
+	while (tqe && (i < (WILC_VMM_TBL_SIZE - 1))) {
+		if (tqe->type == WILC_CFG_PKT)
+			vmm_sz = ETH_CONFIG_PKT_HDR_OFFSET;
+		else if (tqe->type == WILC_NET_PKT)
+			vmm_sz = ETH_ETHERNET_HDR_OFFSET;
+		else
+			vmm_sz = HOST_HDR_OFFSET;
 
-			vmm_sz += tqe->buffer_size;
+		vmm_sz += tqe->buffer_size;
 
-			if (vmm_sz & 0x3)
-				vmm_sz = (vmm_sz + 4) & ~0x3;
+		if (vmm_sz & 0x3)
+			vmm_sz = (vmm_sz + 4) & ~0x3;
 
-			if ((sum + vmm_sz) > WILC_TX_BUFF_SIZE)
-				break;
+		if ((sum + vmm_sz) > WILC_TX_BUFF_SIZE)
+			break;
 
-			vmm_table[i] = vmm_sz / 4;
-			if (tqe->type == WILC_CFG_PKT)
-				vmm_table[i] |= BIT(10);
-			cpu_to_le32s(&vmm_table[i]);
+		vmm_table[i] = vmm_sz / 4;
+		if (tqe->type == WILC_CFG_PKT)
+			vmm_table[i] |= BIT(10);
+		cpu_to_le32s(&vmm_table[i]);
 
-			i++;
-			sum += vmm_sz;
-			tqe = wilc_wlan_txq_get_next(wilc, tqe);
-		} else {
-			break;
-		}
-	} while (1);
+		i++;
+		sum += vmm_sz;
+		tqe = wilc_wlan_txq_get_next(wilc, tqe);
+	}
 
 	if (i == 0)
 		goto out;
@@ -594,12 +588,8 @@ int wilc_wlan_handle_txq(struct wilc *wilc, u32 *txq_count)
 				break;
 			reg &= ~BIT(0);
 			ret = func->hif_write_reg(wilc, WILC_HOST_TX_CTRL, reg);
-			if (!ret)
-				break;
-			break;
 		}
-		break;
-	} while (1);
+	} while (0);
 
 	if (!ret)
 		goto out_release_bus;
@@ -725,9 +715,7 @@ static void wilc_wlan_handle_rx_buff(struct wilc *wilc, u8 *buffer, int size)
 			}
 		}
 		offset += tp_len;
-		if (offset >= size)
-			break;
-	} while (1);
+	} while (offset < size);
 }
 
 static void wilc_wlan_handle_rxq(struct wilc *wilc)
@@ -736,11 +724,7 @@ static void wilc_wlan_handle_rxq(struct wilc *wilc)
 	u8 *buffer;
 	struct rxq_entry_t *rqe;
 
-	do {
-		if (wilc->quit) {
-			complete(&wilc->cfg_event);
-			break;
-		}
+	while (!wilc->quit) {
 		rqe = wilc_wlan_rxq_remove(wilc);
 		if (!rqe)
 			break;
@@ -750,7 +734,9 @@ static void wilc_wlan_handle_rxq(struct wilc *wilc)
 		wilc_wlan_handle_rx_buff(wilc, buffer, size);
 
 		kfree(rqe);
-	} while (1);
+	}
+	if (wilc->quit)
+		complete(&wilc->cfg_event);
 }
 
 static void wilc_unknown_isr_ext(struct wilc *wilc)
@@ -969,21 +955,14 @@ void wilc_wlan_cleanup(struct net_device *dev)
 	struct wilc *wilc = vif->wilc;
 
 	wilc->quit = 1;
-	do {
-		tqe = wilc_wlan_txq_remove_from_head(dev);
-		if (!tqe)
-			break;
+	while ((tqe = wilc_wlan_txq_remove_from_head(dev))) {
 		if (tqe->tx_complete_func)
 			tqe->tx_complete_func(tqe->priv, 0);
 		kfree(tqe);
-	} while (1);
+	}
 
-	do {
-		rqe = wilc_wlan_rxq_remove(wilc);
-		if (!rqe)
-			break;
+	while ((rqe = wilc_wlan_rxq_remove(wilc)))
 		kfree(rqe);
-	} while (1);
 
 	kfree(wilc->rx_buffer);
 	wilc->rx_buffer = NULL;
diff --git a/drivers/staging/wilc1000/wlan_cfg.c b/drivers/staging/wilc1000/wlan_cfg.c
index 2538435b82fd..fe2a7ed8e5cd 100644
--- a/drivers/staging/wilc1000/wlan_cfg.c
+++ b/drivers/staging/wilc1000/wlan_cfg.c
@@ -137,6 +137,7 @@ static void wilc_wlan_parse_response_frame(struct wilc *wl, u8 *info, int size)
 {
 	u16 wid;
 	u32 len = 0, i = 0;
+	struct wilc_cfg *cfg = &wl->cfg;
 
 	while (size > 0) {
 		i = 0;
@@ -144,63 +145,42 @@ static void wilc_wlan_parse_response_frame(struct wilc *wl, u8 *info, int size)
 
 		switch (FIELD_GET(WILC_WID_TYPE, wid)) {
 		case WID_CHAR:
-			do {
-				if (wl->cfg.b[i].id == WID_NIL)
-					break;
-
-				if (wl->cfg.b[i].id == wid) {
-					wl->cfg.b[i].val = info[4];
-					break;
-				}
+			while (cfg->b[i].id != WID_NIL && cfg->b[i].id != wid)
 				i++;
-			} while (1);
+
+			if (cfg->b[i].id == wid)
+				cfg->b[i].val = info[4];
+
 			len = 3;
 			break;
 
 		case WID_SHORT:
-			do {
-				struct wilc_cfg_hword *hw = &wl->cfg.hw[i];
+			while (cfg->hw[i].id != WID_NIL && cfg->hw[i].id != wid)
+				i++;
 
-				if (hw->id == WID_NIL)
-					break;
+			if (cfg->hw[i].id == wid)
+				cfg->hw[i].val = get_unaligned_le16(&info[4]);
 
-				if (hw->id == wid) {
-					hw->val = get_unaligned_le16(&info[4]);
-					break;
-				}
-				i++;
-			} while (1);
 			len = 4;
 			break;
 
 		case WID_INT:
-			do {
-				struct wilc_cfg_word *w = &wl->cfg.w[i];
+			while (cfg->w[i].id != WID_NIL && cfg->w[i].id != wid)
+				i++;
 
-				if (w->id == WID_NIL)
-					break;
+			if (cfg->w[i].id == wid)
+				cfg->w[i].val = get_unaligned_le32(&info[4]);
 
-				if (w->id == wid) {
-					w->val = get_unaligned_le32(&info[4]);
-					break;
-				}
-				i++;
-			} while (1);
 			len = 6;
 			break;
 
 		case WID_STR:
-			do {
-				if (wl->cfg.s[i].id == WID_NIL)
-					break;
-
-				if (wl->cfg.s[i].id == wid) {
-					memcpy(wl->cfg.s[i].str, &info[2],
-					       (info[2] + 2));
-					break;
-				}
+			while (cfg->s[i].id != WID_NIL && cfg->s[i].id != wid)
 				i++;
-			} while (1);
+
+			if (cfg->s[i].id == wid)
+				memcpy(cfg->s[i].str, &info[2], info[2] + 2);
+
 			len = 2 + info[2];
 			break;
 
@@ -223,16 +203,12 @@ static void wilc_wlan_parse_info_frame(struct wilc *wl, u8 *info)
 	if (len == 1 && wid == WID_STATUS) {
 		int i = 0;
 
-		do {
-			if (wl->cfg.b[i].id == WID_NIL)
-				break;
-
-			if (wl->cfg.b[i].id == wid) {
-				wl->cfg.b[i].val = info[3];
-				break;
-			}
+		while (wl->cfg.b[i].id != WID_NIL &&
+		       wl->cfg.b[i].id != wid)
 			i++;
-		} while (1);
+
+		if (wl->cfg.b[i].id == wid)
+			wl->cfg.b[i].val = info[3];
 	}
 }
 
@@ -292,63 +268,45 @@ int wilc_wlan_cfg_get_val(struct wilc *wl, u16 wid, u8 *buffer,
 {
 	u8 type = FIELD_GET(WILC_WID_TYPE, wid);
 	int i, ret = 0;
+	struct wilc_cfg *cfg = &wl->cfg;
 
 	i = 0;
 	if (type == CFG_BYTE_CMD) {
-		do {
-			if (wl->cfg.b[i].id == WID_NIL)
-				break;
-
-			if (wl->cfg.b[i].id == wid) {
-				memcpy(buffer, &wl->cfg.b[i].val, 1);
-				ret = 1;
-				break;
-			}
+		while (cfg->b[i].id != WID_NIL && cfg->b[i].id != wid)
 			i++;
-		} while (1);
+
+		if (cfg->b[i].id == wid) {
+			memcpy(buffer, &cfg->b[i].val, 1);
+			ret = 1;
+		}
 	} else if (type == CFG_HWORD_CMD) {
-		do {
-			if (wl->cfg.hw[i].id == WID_NIL)
-				break;
-
-			if (wl->cfg.hw[i].id == wid) {
-				memcpy(buffer, &wl->cfg.hw[i].val, 2);
-				ret = 2;
-				break;
-			}
+		while (cfg->hw[i].id != WID_NIL && cfg->hw[i].id != wid)
 			i++;
-		} while (1);
+
+		if (cfg->hw[i].id == wid) {
+			memcpy(buffer, &cfg->hw[i].val, 2);
+			ret = 2;
+		}
 	} else if (type == CFG_WORD_CMD) {
-		do {
-			if (wl->cfg.w[i].id == WID_NIL)
-				break;
-
-			if (wl->cfg.w[i].id == wid) {
-				memcpy(buffer, &wl->cfg.w[i].val, 4);
-				ret = 4;
-				break;
-			}
+		while (cfg->w[i].id != WID_NIL && cfg->w[i].id != wid)
 			i++;
-		} while (1);
-	} else if (type == CFG_STR_CMD) {
-		do {
-			u32 id = wl->cfg.s[i].id;
 
-			if (id == WID_NIL)
-				break;
+		if (cfg->w[i].id == wid) {
+			memcpy(buffer, &cfg->w[i].val, 4);
+			ret = 4;
+		}
+	} else if (type == CFG_STR_CMD) {
+		while (cfg->s[i].id != WID_NIL && cfg->s[i].id != wid)
+			i++;
 
-			if (id == wid) {
-				u16 size = get_unaligned_le16(wl->cfg.s[i].str);
+		if (cfg->s[i].id == wid) {
+			u16 size = get_unaligned_le16(cfg->s[i].str);
 
-				if (buffer_size >= size) {
-					memcpy(buffer, &wl->cfg.s[i].str[2],
-					       size);
-					ret = size;
-				}
-				break;
+			if (buffer_size >= size) {
+				memcpy(buffer, &cfg->s[i].str[2], size);
+				ret = size;
 			}
-			i++;
-		} while (1);
+		}
 	}
 	return ret;
 }
-- 
2.24.0
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
