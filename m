Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E53F716BAF6
	for <lists+driverdev-devel@lfdr.de>; Tue, 25 Feb 2020 08:41:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 92DE5866F6;
	Tue, 25 Feb 2020 07:41:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5a64OIlTq2m7; Tue, 25 Feb 2020 07:41:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2E45E860CD;
	Tue, 25 Feb 2020 07:41:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 003E01BF316
 for <devel@linuxdriverproject.org>; Tue, 25 Feb 2020 07:41:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id F1776203F0
 for <devel@linuxdriverproject.org>; Tue, 25 Feb 2020 07:41:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CggTtqdMUr6h for <devel@linuxdriverproject.org>;
 Tue, 25 Feb 2020 07:41:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa1.microchip.iphmx.com (esa1.microchip.iphmx.com
 [68.232.147.91])
 by silver.osuosl.org (Postfix) with ESMTPS id 6D64720555
 for <devel@driverdev.osuosl.org>; Tue, 25 Feb 2020 07:41:19 +0000 (UTC)
Received-SPF: Pass (esa1.microchip.iphmx.com: domain of
 Ajay.Kathat@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Ajay.Kathat@microchip.com";
 x-sender="Ajay.Kathat@microchip.com"; x-conformance=spf_only;
 x-record-type="v=spf1"; x-record-text="v=spf1 mx
 a:ushub1.microchip.com a:smtpout.microchip.com
 -exists:%{i}.spf.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa1.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Ajay.Kathat@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa1.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Ajay.Kathat@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: dV+/ugyFt5+zuLcoa2MgE+vkDAqChm/cCWFpY+6J5fP5pspU5aqsRH0lLQCJoHywWx3LpH616k
 oiLPLfCXCRzf4PbFqu0SiiyK8m0NY6vwSnbDwC3j+578jvhLRUVMlLWuEyLtFDh7BWLVEcq7u7
 zlREIBroIp/Ut81i1c20sGz79oYlUhzKSUFuMWwgkJaUdGqP0SKJe9Kd1p0IL+VGv7RDlb0jJs
 xwQG3XbGiKFiPXUozO2uJcEjyP9lzcrZwzGtdKaApeD15xyrFRcMrUk8L1Ve9JQa80pXGycCkY
 KJI=
X-IronPort-AV: E=Sophos;i="5.70,483,1574146800"; d="scan'208";a="69675586"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 25 Feb 2020 00:41:18 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 25 Feb 2020 00:41:14 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 25 Feb 2020 00:41:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kNdumozUqf2CxEBOvNddKebsn5pTRfqQSnARsaRNQ0+6qGKxUQhcxpBS+NBtHRUYmMoOjJzEqoYi9gdVtwys9HLYJ1ZmRegjeiq/5cAqBIudofnwciCrbGpgwmHNvA4GJrGfkcmceijTQxkbNl77+tGBRHOwo/taJgqXU93VZUfzA/rHekLR062HDPM5Zc6JrxM1GMjMmDcF2sYsgyiyrzSLUEiU3wVp6WSDDIyQZ/5Yvrnjfo6fuZC4w1Kw69MlzX9wR3KM3EhYZdHudh0v6Z5t79Vzph8KjcrxtthMgk+71QplfWm5wzx5c82xWpsBtAcm4b3zGkr3lOLzUvtU1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=B1CWqNU1H9hc2J0CBVPk5OE7X4CykPUWsjTvFVtm6i4=;
 b=mol2+ap1mfzKgqqeC6VL4YoQoYR97buD8hx+UdOWltp5DI7WUrofftQ5nq77v728fgBfTkCOH8NQ/JhHdqQVVAtsgpRGLYf+Bb79yn+1DNbEpIC7mdAQOeMR/mX2eEUYDy+PUb+CX1nswWQeK1qwyPWdB7Svh/ewAdBG7qOFzrJ4SCd2Vy3RkIYG18Wt9HctnUrPCC6PyINpaBqxeSt8fYjNXrnP32tXZqdq8Ewv8z/iG79+1KRPEdDb6Ba/ClmfMhUItQx9Ob0QnBnVN1BjcvFjdOSK7q/5zpg2mVSHaQ+bphzVVHcCgOVvjAoAwehGyGjoPpbD0i4KJ58nz9n09w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=B1CWqNU1H9hc2J0CBVPk5OE7X4CykPUWsjTvFVtm6i4=;
 b=seAHQeGevF/3pscAJRcND6pxa3dwGJ6ELDIENol3mr3fqn8MvSOYQ1liEzZlPP3F7db0z6EhCZ+Gf1zyG0XzAJXnYHk3kw9JfIc8mG+4wtMmx4hpqCVa7XO2FKVC3aLUErsXWjhsTuqy8m0pfIRfqwu7wFYOoTmTnDzuVS/z5ZY=
Received: from BN6PR11MB3985.namprd11.prod.outlook.com (2603:10b6:405:7b::14)
 by BN6PR11MB1875.namprd11.prod.outlook.com (2603:10b6:404:104::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2750.17; Tue, 25 Feb
 2020 07:41:16 +0000
Received: from BN6PR11MB3985.namprd11.prod.outlook.com
 ([fe80::ec62:e7fd:f17c:dfd4]) by BN6PR11MB3985.namprd11.prod.outlook.com
 ([fe80::ec62:e7fd:f17c:dfd4%3]) with mapi id 15.20.2750.021; Tue, 25 Feb 2020
 07:41:16 +0000
From: <Ajay.Kathat@microchip.com>
To: <linux-wireless@vger.kernel.org>
Subject: [PATCH v3 10/18] wilc1000: add mon.c
Thread-Topic: [PATCH v3 10/18] wilc1000: add mon.c
Thread-Index: AQHV6672PbLFQLlbJU684y/svxp6XQ==
Date: Tue, 25 Feb 2020 07:41:16 +0000
Message-ID: <20200225074105.7740-11-ajay.kathat@microchip.com>
References: <20200225074105.7740-1-ajay.kathat@microchip.com>
In-Reply-To: <20200225074105.7740-1-ajay.kathat@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.17.1
x-originating-ip: [121.244.27.38]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 95b370e2-e5f5-4039-e825-08d7b9c61898
x-ms-traffictypediagnostic: BN6PR11MB1875:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BN6PR11MB1875D520176DC737CC9D2ED4E3ED0@BN6PR11MB1875.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1284;
x-forefront-prvs: 0324C2C0E2
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(376002)(136003)(396003)(366004)(346002)(199004)(189003)(2906002)(316002)(2616005)(54906003)(86362001)(1076003)(66556008)(76116006)(66476007)(66946007)(91956017)(64756008)(36756003)(66446008)(186003)(8936002)(26005)(81156014)(478600001)(6512007)(5660300002)(71200400001)(4326008)(81166006)(107886003)(6916009)(8676002)(6506007)(6486002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN6PR11MB1875;
 H:BN6PR11MB3985.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: XBnQPn8OjyQQ2coDBM5Qbm+iHzf+9VY83eyeIqDYk5+y4acelvv8iORnXAUJOC0RwiMc+t2HO6QTiLdCavabGZFQubNeO3rrz+bxzeKjx35/aqPewcDbYLBkAOm8OfGRlPxVIw2r/n+955n91aM1yH4MwA2QZAvX4tw050kSnZHuyTPKX7JyUtXj2VOSr9gO2EtxHqVHKXnkGxQykF7LylRr1oSrcyr4IJTyy4gMF0Sfw4AszcThzsq7LT01uzx/Kf/rTZnyB+nHdlBY0vKIO/S3eRuCUgCgAMgDECzef3TmNKq9kXCsnO4vikacUmjrY/ZSt1fCvRwt+DkzX5YST5E+yo2hG1E+AzBiK8efdoOD5yZbLYpl36fBErdGpSn7XpSHbQwb6J9btsAF3PvdveIdOSS1Skjw3AIm//7vhD44Kcm4Exlw2dZBv7zs52V/
x-ms-exchange-antispam-messagedata: phoTkVQOo4h0uDHYfQFoesMos7l8osQdarNfWZvLCpA16YNyey/lYNZ8ReHdu8VpHhSRmLj8NDXyD7vKEroDFIkb7fHXysE14Cj6F2XC4YEbSgIUOMeeC6zj54qIk5LvkGceMuAi/ZGJv7j8gK511Q==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 95b370e2-e5f5-4039-e825-08d7b9c61898
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Feb 2020 07:41:16.1752 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3BBs58y0iE7TFQdUbbxT4g28+PMknanhHKXtyw3AxfnX6EQr8LiOnXegJ0nYwcULS+YJmCN0fyskulAto9/1NNf925gVX5J6S1WPjqxvzGE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1875
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 Ajay.Kathat@microchip.com, Venkateswara.Kaja@microchip.com,
 gregkh@linuxfoundation.org, Nicolas.Ferre@microchip.com,
 Adham.Abozaeid@microchip.com, johannes@sipsolutions.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Ajay Singh <ajay.kathat@microchip.com>

Moved 'drivers/staging/wilc1000/mon.c' to
'drivers/net/wireless/microchip/wilc1000/mon.c'.

Signed-off-by: Ajay Singh <ajay.kathat@microchip.com>
---
 drivers/net/wireless/microchip/wilc1000/mon.c | 260 ++++++++++++++++++
 1 file changed, 260 insertions(+)
 create mode 100644 drivers/net/wireless/microchip/wilc1000/mon.c

diff --git a/drivers/net/wireless/microchip/wilc1000/mon.c b/drivers/net/wireless/microchip/wilc1000/mon.c
new file mode 100644
index 000000000000..60331417bd98
--- /dev/null
+++ b/drivers/net/wireless/microchip/wilc1000/mon.c
@@ -0,0 +1,260 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (c) 2012 - 2018 Microchip Technology Inc., and its subsidiaries.
+ * All rights reserved.
+ */
+
+#include "cfg80211.h"
+
+struct wilc_wfi_radiotap_hdr {
+	struct ieee80211_radiotap_header hdr;
+	u8 rate;
+} __packed;
+
+struct wilc_wfi_radiotap_cb_hdr {
+	struct ieee80211_radiotap_header hdr;
+	u8 rate;
+	u8 dump;
+	u16 tx_flags;
+} __packed;
+
+#define TX_RADIOTAP_PRESENT ((1 << IEEE80211_RADIOTAP_RATE) |	\
+			     (1 << IEEE80211_RADIOTAP_TX_FLAGS))
+
+void wilc_wfi_monitor_rx(struct net_device *mon_dev, u8 *buff, u32 size)
+{
+	u32 header, pkt_offset;
+	struct sk_buff *skb = NULL;
+	struct wilc_wfi_radiotap_hdr *hdr;
+	struct wilc_wfi_radiotap_cb_hdr *cb_hdr;
+
+	if (!mon_dev)
+		return;
+
+	if (!netif_running(mon_dev))
+		return;
+
+	/* Get WILC header */
+	header = get_unaligned_le32(buff - HOST_HDR_OFFSET);
+	/*
+	 * The packet offset field contain info about what type of management
+	 * the frame we are dealing with and ack status
+	 */
+	pkt_offset = FIELD_GET(WILC_PKT_HDR_OFFSET_FIELD, header);
+
+	if (pkt_offset & IS_MANAGMEMENT_CALLBACK) {
+		/* hostapd callback mgmt frame */
+
+		skb = dev_alloc_skb(size + sizeof(*cb_hdr));
+		if (!skb)
+			return;
+
+		skb_put_data(skb, buff, size);
+
+		cb_hdr = skb_push(skb, sizeof(*cb_hdr));
+		memset(cb_hdr, 0, sizeof(*cb_hdr));
+
+		cb_hdr->hdr.it_version = 0; /* PKTHDR_RADIOTAP_VERSION; */
+
+		cb_hdr->hdr.it_len = cpu_to_le16(sizeof(*cb_hdr));
+
+		cb_hdr->hdr.it_present = cpu_to_le32(TX_RADIOTAP_PRESENT);
+
+		cb_hdr->rate = 5;
+
+		if (pkt_offset & IS_MGMT_STATUS_SUCCES)	{
+			/* success */
+			cb_hdr->tx_flags = IEEE80211_RADIOTAP_F_TX_RTS;
+		} else {
+			cb_hdr->tx_flags = IEEE80211_RADIOTAP_F_TX_FAIL;
+		}
+
+	} else {
+		skb = dev_alloc_skb(size + sizeof(*hdr));
+
+		if (!skb)
+			return;
+
+		skb_put_data(skb, buff, size);
+		hdr = skb_push(skb, sizeof(*hdr));
+		memset(hdr, 0, sizeof(struct wilc_wfi_radiotap_hdr));
+		hdr->hdr.it_version = 0; /* PKTHDR_RADIOTAP_VERSION; */
+		hdr->hdr.it_len = cpu_to_le16(sizeof(*hdr));
+		hdr->hdr.it_present = cpu_to_le32
+				(1 << IEEE80211_RADIOTAP_RATE);
+		hdr->rate = 5;
+	}
+
+	skb->dev = mon_dev;
+	skb_reset_mac_header(skb);
+	skb->ip_summed = CHECKSUM_UNNECESSARY;
+	skb->pkt_type = PACKET_OTHERHOST;
+	skb->protocol = htons(ETH_P_802_2);
+	memset(skb->cb, 0, sizeof(skb->cb));
+
+	netif_rx(skb);
+}
+
+struct tx_complete_mon_data {
+	int size;
+	void *buff;
+};
+
+static void mgmt_tx_complete(void *priv, int status)
+{
+	struct tx_complete_mon_data *pv_data = priv;
+	/*
+	 * in case of fully hosting mode, the freeing will be done
+	 * in response to the cfg packet
+	 */
+	kfree(pv_data->buff);
+
+	kfree(pv_data);
+}
+
+static int mon_mgmt_tx(struct net_device *dev, const u8 *buf, size_t len)
+{
+	struct tx_complete_mon_data *mgmt_tx = NULL;
+
+	if (!dev)
+		return -EFAULT;
+
+	netif_stop_queue(dev);
+	mgmt_tx = kmalloc(sizeof(*mgmt_tx), GFP_ATOMIC);
+	if (!mgmt_tx)
+		return -ENOMEM;
+
+	mgmt_tx->buff = kmemdup(buf, len, GFP_ATOMIC);
+	if (!mgmt_tx->buff) {
+		kfree(mgmt_tx);
+		return -ENOMEM;
+	}
+
+	mgmt_tx->size = len;
+
+	wilc_wlan_txq_add_mgmt_pkt(dev, mgmt_tx, mgmt_tx->buff, mgmt_tx->size,
+				   mgmt_tx_complete);
+
+	netif_wake_queue(dev);
+	return 0;
+}
+
+static netdev_tx_t wilc_wfi_mon_xmit(struct sk_buff *skb,
+				     struct net_device *dev)
+{
+	u32 rtap_len, ret = 0;
+	struct wilc_wfi_mon_priv  *mon_priv;
+	struct sk_buff *skb2;
+	struct wilc_wfi_radiotap_cb_hdr *cb_hdr;
+	u8 srcadd[ETH_ALEN];
+	u8 bssid[ETH_ALEN];
+
+	mon_priv = netdev_priv(dev);
+	if (!mon_priv)
+		return -EFAULT;
+
+	rtap_len = ieee80211_get_radiotap_len(skb->data);
+	if (skb->len < rtap_len)
+		return -1;
+
+	skb_pull(skb, rtap_len);
+
+	if (skb->data[0] == 0xc0 && is_broadcast_ether_addr(&skb->data[4])) {
+		skb2 = dev_alloc_skb(skb->len + sizeof(*cb_hdr));
+		if (!skb2)
+			return -ENOMEM;
+
+		skb_put_data(skb2, skb->data, skb->len);
+
+		cb_hdr = skb_push(skb2, sizeof(*cb_hdr));
+		memset(cb_hdr, 0, sizeof(struct wilc_wfi_radiotap_cb_hdr));
+
+		cb_hdr->hdr.it_version = 0; /* PKTHDR_RADIOTAP_VERSION; */
+
+		cb_hdr->hdr.it_len = cpu_to_le16(sizeof(*cb_hdr));
+
+		cb_hdr->hdr.it_present = cpu_to_le32(TX_RADIOTAP_PRESENT);
+
+		cb_hdr->rate = 5;
+		cb_hdr->tx_flags = 0x0004;
+
+		skb2->dev = dev;
+		skb_reset_mac_header(skb2);
+		skb2->ip_summed = CHECKSUM_UNNECESSARY;
+		skb2->pkt_type = PACKET_OTHERHOST;
+		skb2->protocol = htons(ETH_P_802_2);
+		memset(skb2->cb, 0, sizeof(skb2->cb));
+
+		netif_rx(skb2);
+
+		return 0;
+	}
+	skb->dev = mon_priv->real_ndev;
+
+	ether_addr_copy(srcadd, &skb->data[10]);
+	ether_addr_copy(bssid, &skb->data[16]);
+	/*
+	 * Identify if data or mgmt packet, if source address and bssid
+	 * fields are equal send it to mgmt frames handler
+	 */
+	if (!(memcmp(srcadd, bssid, 6))) {
+		ret = mon_mgmt_tx(mon_priv->real_ndev, skb->data, skb->len);
+		if (ret)
+			netdev_err(dev, "fail to mgmt tx\n");
+		dev_kfree_skb(skb);
+	} else {
+		ret = wilc_mac_xmit(skb, mon_priv->real_ndev);
+	}
+
+	return ret;
+}
+
+static const struct net_device_ops wilc_wfi_netdev_ops = {
+	.ndo_start_xmit         = wilc_wfi_mon_xmit,
+
+};
+
+struct net_device *wilc_wfi_init_mon_interface(struct wilc *wl,
+					       const char *name,
+					       struct net_device *real_dev)
+{
+	struct wilc_wfi_mon_priv *priv;
+
+	/* If monitor interface is already initialized, return it */
+	if (wl->monitor_dev)
+		return wl->monitor_dev;
+
+	wl->monitor_dev = alloc_etherdev(sizeof(struct wilc_wfi_mon_priv));
+	if (!wl->monitor_dev)
+		return NULL;
+
+	wl->monitor_dev->type = ARPHRD_IEEE80211_RADIOTAP;
+	strncpy(wl->monitor_dev->name, name, IFNAMSIZ);
+	wl->monitor_dev->name[IFNAMSIZ - 1] = 0;
+	wl->monitor_dev->netdev_ops = &wilc_wfi_netdev_ops;
+	wl->monitor_dev->needs_free_netdev = true;
+
+	if (register_netdevice(wl->monitor_dev)) {
+		netdev_err(real_dev, "register_netdevice failed\n");
+		return NULL;
+	}
+	priv = netdev_priv(wl->monitor_dev);
+	if (!priv)
+		return NULL;
+
+	priv->real_ndev = real_dev;
+
+	return wl->monitor_dev;
+}
+
+void wilc_wfi_deinit_mon_interface(struct wilc *wl, bool rtnl_locked)
+{
+	if (!wl->monitor_dev)
+		return;
+
+	if (rtnl_locked)
+		unregister_netdevice(wl->monitor_dev);
+	else
+		unregister_netdev(wl->monitor_dev);
+	wl->monitor_dev = NULL;
+}
-- 
2.24.0
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
