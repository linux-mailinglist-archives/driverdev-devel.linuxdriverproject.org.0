Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 63A1719514D
	for <lists+driverdev-devel@lfdr.de>; Fri, 27 Mar 2020 07:33:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 01E28870F9;
	Fri, 27 Mar 2020 06:33:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bn0EyKmqB1vM; Fri, 27 Mar 2020 06:33:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0B28C8705D;
	Fri, 27 Mar 2020 06:33:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1F4F51BF3EB
 for <devel@linuxdriverproject.org>; Fri, 27 Mar 2020 06:33:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 1863D8875F
 for <devel@linuxdriverproject.org>; Fri, 27 Mar 2020 06:33:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GGuAY3I-pyxh for <devel@linuxdriverproject.org>;
 Fri, 27 Mar 2020 06:33:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa5.microchip.iphmx.com (esa5.microchip.iphmx.com
 [216.71.150.166])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 87B5988AFB
 for <devel@driverdev.osuosl.org>; Fri, 27 Mar 2020 06:33:22 +0000 (UTC)
IronPort-SDR: wKatXDfB42BuW6I3gZZ/056XvwjhoIrLxaLU38l+CEhCMnFuynDSPPl2j6pxYxVsRpoRldRidq
 ncIB3Ppg9/KtyNLH+CCzSLD16PjOzbr2JooRpPgwHjVoWGDLqrl+5F6rtmiRk5JKrPWpzKTy/e
 3Gkzj5TMd/GXt2cbzXV7IjdoAVlnrM1101lQRKH6IDL3ENumvxVzsDnN5ES/IMJqIm9KQIFlKF
 xJckplViV3RNQpgkqBsjyvV4MJFGxiRizvtZiDZHAyxzkp1MFudCw835F1Ac0Jnd69rXOqN4ha
 MJQ=
X-IronPort-AV: E=Sophos;i="5.72,311,1580799600"; d="scan'208";a="70452409"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 26 Mar 2020 23:33:22 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 26 Mar 2020 23:33:20 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 26 Mar 2020 23:33:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DmaMZK23yShtthal5jndqjGCRGHViIfzdkZta3L7Ju8jZK1kugkaMU8xn/klzEFtGXgQ557FCL2RK3tLcVfP6rDl6Im9xqlaC5JDnSRNfo0OpK2MhA4ONCeipev7ZQgvwFnw54VucxzVSDn98w4m5Z/Y/zjuZvb7IWoIGdFu65YzD4tBhbCtQ8bl+SBsx9KDyRNAQcCkrLCzSqx0ivyi1SZYX2sLC0rdY/KRjdR9jpqK6J2fITdKdyAyHyDxoAantYaA82z9wce4TlemSE9Jg6qiEQGmPLm+rD5TUfOS00Rkp6vOtXWjP+hboD+zRwq84pvHjxnbc1CMl9vyorbhgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8NEmNxWHt//zd0Rl+EbH1Xdj3cXo36+I+LbtvN+CtOo=;
 b=CB/VNL91rqImoa1AMzBbNzpNxZltdlpIGfjbyjJ1WqezLO5sWKMlKQFkNgKqQdkFHocgY/C02s6zbh6IhK38LOjviphQHUYN+xI7NZz37D+iqseyTiA60pR6dgI0vaC+Xv9El/OPnncI5HogHoN4qa7q3BT9Q+F3X0OKD/ryC4CGBj5d1qfuAQmdYz4Mt751u7Ct5tx4JfiqLyUB8qdcUWwNYbfEJXqtaYlR3cxiuefxxwtnNpghPY5Z2kKnzjxuJNuctqnurNs5bSR7jnULbxomAgkX1DJbQuHHwDMv0S3w1XVZxWkWMzFJOIKsrYwWGvbV/8ZuVlUPVYdH/sVbHg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8NEmNxWHt//zd0Rl+EbH1Xdj3cXo36+I+LbtvN+CtOo=;
 b=U5g7F3nhGjqRWpQef+8R+Ojl9t68BVVwZiyPHKkGXhZDL+xyxYJujEbIADhgUxMkze6VjJZEGawmcevLsv5AJRG1g2GgjYUhs64pTy5bH51Nhe5FH1JJ6b5en+o5BNS/U+6M1QbHup54dApIeU5Io9L2tjgmq2x9A+FhduQeIX8=
Received: from BYAPR11MB3125.namprd11.prod.outlook.com (2603:10b6:a03:8e::32)
 by BYAPR11MB3397.namprd11.prod.outlook.com (2603:10b6:a03:1b::29)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2856.19; Fri, 27 Mar
 2020 06:33:18 +0000
Received: from BYAPR11MB3125.namprd11.prod.outlook.com
 ([fe80::c27:87cf:ca4:d86e]) by BYAPR11MB3125.namprd11.prod.outlook.com
 ([fe80::c27:87cf:ca4:d86e%4]) with mapi id 15.20.2835.021; Fri, 27 Mar 2020
 06:33:18 +0000
From: <Ajay.Kathat@microchip.com>
To: <linux-wireless@vger.kernel.org>
Subject: [PATCH v6 13/17] wilc1000: add wlan.c
Thread-Topic: [PATCH v6 13/17] wilc1000: add wlan.c
Thread-Index: AQHWBAGavm4rnYaCekSS9jKTjxch6g==
Date: Fri, 27 Mar 2020 06:33:18 +0000
Message-ID: <20200327063302.20511-14-ajay.kathat@microchip.com>
References: <20200327063302.20511-1-ajay.kathat@microchip.com>
In-Reply-To: <20200327063302.20511-1-ajay.kathat@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.17.1
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Ajay.Kathat@microchip.com; 
x-originating-ip: [183.82.22.58]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: fe80c991-87a4-4a27-0ad6-08d7d218bcbe
x-ms-traffictypediagnostic: BYAPR11MB3397:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR11MB3397F5E05E3E81ECB6F4F201E3CC0@BYAPR11MB3397.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:15;
x-forefront-prvs: 0355F3A3AE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39850400004)(136003)(376002)(346002)(366004)(396003)(81156014)(26005)(8676002)(81166006)(76116006)(66446008)(66556008)(66476007)(36756003)(6512007)(66946007)(6486002)(64756008)(91956017)(2906002)(6506007)(4326008)(71200400001)(2616005)(107886003)(186003)(30864003)(86362001)(5660300002)(478600001)(1076003)(6916009)(316002)(8936002)(54906003)(559001)(579004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR11MB3397;
 H:BYAPR11MB3125.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 4gyS8fl5PM8tnO07mWWmdtPImJYArFi7AAltaFqZJEE9zr1OEwYLHRJ0cqTfYCbHqUIwHhvKlEA47+yyS26DYaNHfSG8gTef3Ur3oZQkLr3Tot/dqcsnZNG9FrCLnEz8MVUXo6xk+HnaHhJhE/DGqkbVfHBGJ5feJxQHsVQsdKoQNhr6QQlnyEDpqHk6i54BqK9HkjRSu39ZcsXk39IUhjcdRJ91Zumx8qbmiDUw5xKEZCxaBkxh5JxDXmSFjW9QNDjyL/NqjN/r3r0ZvK2pNKW4K4QDZOPQh1XCRDsxArS5xcevuZPfjxc0dXRunijhIu/d8G38bwQySJgSvU2vckC7MvAZcfbdgr/HcJha4NjFow76wK/qRSqWiEX0cH+vAzGcDf2V4EDoLCDV4JXhQbIR3OeAC72UC+5TolFFgYhU5svhH2TLUAB+OJWCsfVK
x-ms-exchange-antispam-messagedata: 9CSF3JDhFfekFrxXhWgltjnAcasCMERWfCCvpqT8bM5G2WU2BXfydRtqTfePH+XLYyC0hxD5v2t80SxPRO3H0yIC9jyFmshRJdm+m7vOrJmhPlbAggzL9EHAqQ9LCHiEISiPe8m9/CE8X1FxzcSypA==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: fe80c991-87a4-4a27-0ad6-08d7d218bcbe
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Mar 2020 06:33:18.2434 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zPH2Mz9HSi4eJpsgkLuWCcYKGKDT24fehnlKviCpPXUyjvGwOCC1xH1oz3/GAEIPcy6h5H6kJYl8tsFlCLl+v/0KTt1+a9Wy/MxyzC5ZJJk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3397
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

Moved 'drivers/staging/wilc1000/wlan.c' to
'drivers/net/wireless/microchip/wilc1000/wlan.c'.

Signed-off-by: Ajay Singh <ajay.kathat@microchip.com>
---
 .../net/wireless/microchip/wilc1000/wlan.c    | 1238 +++++++++++++++++
 1 file changed, 1238 insertions(+)
 create mode 100644 drivers/net/wireless/microchip/wilc1000/wlan.c

diff --git a/drivers/net/wireless/microchip/wilc1000/wlan.c b/drivers/net/wireless/microchip/wilc1000/wlan.c
new file mode 100644
index 000000000000..6a82fb2f283e
--- /dev/null
+++ b/drivers/net/wireless/microchip/wilc1000/wlan.c
@@ -0,0 +1,1238 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (c) 2012 - 2018 Microchip Technology Inc., and its subsidiaries.
+ * All rights reserved.
+ */
+
+#include <linux/if_ether.h>
+#include <linux/ip.h>
+#include "cfg80211.h"
+#include "wlan_cfg.h"
+
+static inline bool is_wilc1000(u32 id)
+{
+	return (id & (~WILC_CHIP_REV_FIELD)) == WILC_1000_BASE_ID;
+}
+
+static inline void acquire_bus(struct wilc *wilc, enum bus_acquire acquire)
+{
+	mutex_lock(&wilc->hif_cs);
+	if (acquire == WILC_BUS_ACQUIRE_AND_WAKEUP)
+		chip_wakeup(wilc);
+}
+
+static inline void release_bus(struct wilc *wilc, enum bus_release release)
+{
+	if (release == WILC_BUS_RELEASE_ALLOW_SLEEP)
+		chip_allow_sleep(wilc);
+	mutex_unlock(&wilc->hif_cs);
+}
+
+static void wilc_wlan_txq_remove(struct wilc *wilc, struct txq_entry_t *tqe)
+{
+	list_del(&tqe->list);
+	wilc->txq_entries -= 1;
+}
+
+static struct txq_entry_t *
+wilc_wlan_txq_remove_from_head(struct net_device *dev)
+{
+	struct txq_entry_t *tqe = NULL;
+	unsigned long flags;
+	struct wilc_vif *vif = netdev_priv(dev);
+	struct wilc *wilc = vif->wilc;
+
+	spin_lock_irqsave(&wilc->txq_spinlock, flags);
+
+	if (!list_empty(&wilc->txq_head.list)) {
+		tqe = list_first_entry(&wilc->txq_head.list, struct txq_entry_t,
+				       list);
+		list_del(&tqe->list);
+		wilc->txq_entries -= 1;
+	}
+	spin_unlock_irqrestore(&wilc->txq_spinlock, flags);
+	return tqe;
+}
+
+static void wilc_wlan_txq_add_to_tail(struct net_device *dev,
+				      struct txq_entry_t *tqe)
+{
+	unsigned long flags;
+	struct wilc_vif *vif = netdev_priv(dev);
+	struct wilc *wilc = vif->wilc;
+
+	spin_lock_irqsave(&wilc->txq_spinlock, flags);
+
+	list_add_tail(&tqe->list, &wilc->txq_head.list);
+	wilc->txq_entries += 1;
+
+	spin_unlock_irqrestore(&wilc->txq_spinlock, flags);
+
+	complete(&wilc->txq_event);
+}
+
+static void wilc_wlan_txq_add_to_head(struct wilc_vif *vif,
+				      struct txq_entry_t *tqe)
+{
+	unsigned long flags;
+	struct wilc *wilc = vif->wilc;
+
+	mutex_lock(&wilc->txq_add_to_head_cs);
+
+	spin_lock_irqsave(&wilc->txq_spinlock, flags);
+
+	list_add(&tqe->list, &wilc->txq_head.list);
+	wilc->txq_entries += 1;
+
+	spin_unlock_irqrestore(&wilc->txq_spinlock, flags);
+	mutex_unlock(&wilc->txq_add_to_head_cs);
+	complete(&wilc->txq_event);
+}
+
+#define NOT_TCP_ACK			(-1)
+
+static inline void add_tcp_session(struct wilc_vif *vif, u32 src_prt,
+				   u32 dst_prt, u32 seq)
+{
+	struct tcp_ack_filter *f = &vif->ack_filter;
+
+	if (f->tcp_session < 2 * MAX_TCP_SESSION) {
+		f->ack_session_info[f->tcp_session].seq_num = seq;
+		f->ack_session_info[f->tcp_session].bigger_ack_num = 0;
+		f->ack_session_info[f->tcp_session].src_port = src_prt;
+		f->ack_session_info[f->tcp_session].dst_port = dst_prt;
+		f->tcp_session++;
+	}
+}
+
+static inline void update_tcp_session(struct wilc_vif *vif, u32 index, u32 ack)
+{
+	struct tcp_ack_filter *f = &vif->ack_filter;
+
+	if (index < 2 * MAX_TCP_SESSION &&
+	    ack > f->ack_session_info[index].bigger_ack_num)
+		f->ack_session_info[index].bigger_ack_num = ack;
+}
+
+static inline void add_tcp_pending_ack(struct wilc_vif *vif, u32 ack,
+				       u32 session_index,
+				       struct txq_entry_t *txqe)
+{
+	struct tcp_ack_filter *f = &vif->ack_filter;
+	u32 i = f->pending_base + f->pending_acks_idx;
+
+	if (i < MAX_PENDING_ACKS) {
+		f->pending_acks[i].ack_num = ack;
+		f->pending_acks[i].txqe = txqe;
+		f->pending_acks[i].session_index = session_index;
+		txqe->ack_idx = i;
+		f->pending_acks_idx++;
+	}
+}
+
+static inline void tcp_process(struct net_device *dev, struct txq_entry_t *tqe)
+{
+	void *buffer = tqe->buffer;
+	const struct ethhdr *eth_hdr_ptr = buffer;
+	int i;
+	unsigned long flags;
+	struct wilc_vif *vif = netdev_priv(dev);
+	struct wilc *wilc = vif->wilc;
+	struct tcp_ack_filter *f = &vif->ack_filter;
+	const struct iphdr *ip_hdr_ptr;
+	const struct tcphdr *tcp_hdr_ptr;
+	u32 ihl, total_length, data_offset;
+
+	spin_lock_irqsave(&wilc->txq_spinlock, flags);
+
+	if (eth_hdr_ptr->h_proto != htons(ETH_P_IP))
+		goto out;
+
+	ip_hdr_ptr = buffer + ETH_HLEN;
+
+	if (ip_hdr_ptr->protocol != IPPROTO_TCP)
+		goto out;
+
+	ihl = ip_hdr_ptr->ihl << 2;
+	tcp_hdr_ptr = buffer + ETH_HLEN + ihl;
+	total_length = ntohs(ip_hdr_ptr->tot_len);
+
+	data_offset = tcp_hdr_ptr->doff << 2;
+	if (total_length == (ihl + data_offset)) {
+		u32 seq_no, ack_no;
+
+		seq_no = ntohl(tcp_hdr_ptr->seq);
+		ack_no = ntohl(tcp_hdr_ptr->ack_seq);
+		for (i = 0; i < f->tcp_session; i++) {
+			u32 j = f->ack_session_info[i].seq_num;
+
+			if (i < 2 * MAX_TCP_SESSION &&
+			    j == seq_no) {
+				update_tcp_session(vif, i, ack_no);
+				break;
+			}
+		}
+		if (i == f->tcp_session)
+			add_tcp_session(vif, 0, 0, seq_no);
+
+		add_tcp_pending_ack(vif, ack_no, i, tqe);
+	}
+
+out:
+	spin_unlock_irqrestore(&wilc->txq_spinlock, flags);
+}
+
+static void wilc_wlan_txq_filter_dup_tcp_ack(struct net_device *dev)
+{
+	struct wilc_vif *vif = netdev_priv(dev);
+	struct wilc *wilc = vif->wilc;
+	struct tcp_ack_filter *f = &vif->ack_filter;
+	u32 i = 0;
+	u32 dropped = 0;
+	unsigned long flags;
+
+	spin_lock_irqsave(&wilc->txq_spinlock, flags);
+	for (i = f->pending_base;
+	     i < (f->pending_base + f->pending_acks_idx); i++) {
+		u32 index;
+		u32 bigger_ack_num;
+
+		if (i >= MAX_PENDING_ACKS)
+			break;
+
+		index = f->pending_acks[i].session_index;
+
+		if (index >= 2 * MAX_TCP_SESSION)
+			break;
+
+		bigger_ack_num = f->ack_session_info[index].bigger_ack_num;
+
+		if (f->pending_acks[i].ack_num < bigger_ack_num) {
+			struct txq_entry_t *tqe;
+
+			tqe = f->pending_acks[i].txqe;
+			if (tqe) {
+				wilc_wlan_txq_remove(wilc, tqe);
+				tqe->status = 1;
+				if (tqe->tx_complete_func)
+					tqe->tx_complete_func(tqe->priv,
+							      tqe->status);
+				kfree(tqe);
+				dropped++;
+			}
+		}
+	}
+	f->pending_acks_idx = 0;
+	f->tcp_session = 0;
+
+	if (f->pending_base == 0)
+		f->pending_base = MAX_TCP_SESSION;
+	else
+		f->pending_base = 0;
+
+	spin_unlock_irqrestore(&wilc->txq_spinlock, flags);
+
+	while (dropped > 0) {
+		wait_for_completion_timeout(&wilc->txq_event,
+					    msecs_to_jiffies(1));
+		dropped--;
+	}
+}
+
+void wilc_enable_tcp_ack_filter(struct wilc_vif *vif, bool value)
+{
+	vif->ack_filter.enabled = value;
+}
+
+static int wilc_wlan_txq_add_cfg_pkt(struct wilc_vif *vif, u8 *buffer,
+				     u32 buffer_size)
+{
+	struct txq_entry_t *tqe;
+	struct wilc *wilc = vif->wilc;
+
+	netdev_dbg(vif->ndev, "Adding config packet ...\n");
+	if (wilc->quit) {
+		netdev_dbg(vif->ndev, "Return due to clear function\n");
+		complete(&wilc->cfg_event);
+		return 0;
+	}
+
+	tqe = kmalloc(sizeof(*tqe), GFP_ATOMIC);
+	if (!tqe)
+		return 0;
+
+	tqe->type = WILC_CFG_PKT;
+	tqe->buffer = buffer;
+	tqe->buffer_size = buffer_size;
+	tqe->tx_complete_func = NULL;
+	tqe->priv = NULL;
+	tqe->ack_idx = NOT_TCP_ACK;
+	tqe->vif = vif;
+
+	wilc_wlan_txq_add_to_head(vif, tqe);
+
+	return 1;
+}
+
+int wilc_wlan_txq_add_net_pkt(struct net_device *dev, void *priv, u8 *buffer,
+			      u32 buffer_size,
+			      void (*tx_complete_fn)(void *, int))
+{
+	struct txq_entry_t *tqe;
+	struct wilc_vif *vif = netdev_priv(dev);
+	struct wilc *wilc;
+
+	wilc = vif->wilc;
+
+	if (wilc->quit)
+		return 0;
+
+	tqe = kmalloc(sizeof(*tqe), GFP_ATOMIC);
+
+	if (!tqe)
+		return 0;
+	tqe->type = WILC_NET_PKT;
+	tqe->buffer = buffer;
+	tqe->buffer_size = buffer_size;
+	tqe->tx_complete_func = tx_complete_fn;
+	tqe->priv = priv;
+	tqe->vif = vif;
+
+	tqe->ack_idx = NOT_TCP_ACK;
+	if (vif->ack_filter.enabled)
+		tcp_process(dev, tqe);
+	wilc_wlan_txq_add_to_tail(dev, tqe);
+	return wilc->txq_entries;
+}
+
+int wilc_wlan_txq_add_mgmt_pkt(struct net_device *dev, void *priv, u8 *buffer,
+			       u32 buffer_size,
+			       void (*tx_complete_fn)(void *, int))
+{
+	struct txq_entry_t *tqe;
+	struct wilc_vif *vif = netdev_priv(dev);
+	struct wilc *wilc;
+
+	wilc = vif->wilc;
+
+	if (wilc->quit)
+		return 0;
+
+	tqe = kmalloc(sizeof(*tqe), GFP_ATOMIC);
+
+	if (!tqe)
+		return 0;
+	tqe->type = WILC_MGMT_PKT;
+	tqe->buffer = buffer;
+	tqe->buffer_size = buffer_size;
+	tqe->tx_complete_func = tx_complete_fn;
+	tqe->priv = priv;
+	tqe->ack_idx = NOT_TCP_ACK;
+	tqe->vif = vif;
+	wilc_wlan_txq_add_to_tail(dev, tqe);
+	return 1;
+}
+
+static struct txq_entry_t *wilc_wlan_txq_get_first(struct wilc *wilc)
+{
+	struct txq_entry_t *tqe = NULL;
+	unsigned long flags;
+
+	spin_lock_irqsave(&wilc->txq_spinlock, flags);
+
+	if (!list_empty(&wilc->txq_head.list))
+		tqe = list_first_entry(&wilc->txq_head.list, struct txq_entry_t,
+				       list);
+
+	spin_unlock_irqrestore(&wilc->txq_spinlock, flags);
+
+	return tqe;
+}
+
+static struct txq_entry_t *wilc_wlan_txq_get_next(struct wilc *wilc,
+						  struct txq_entry_t *tqe)
+{
+	unsigned long flags;
+
+	spin_lock_irqsave(&wilc->txq_spinlock, flags);
+
+	if (!list_is_last(&tqe->list, &wilc->txq_head.list))
+		tqe = list_next_entry(tqe, list);
+	else
+		tqe = NULL;
+	spin_unlock_irqrestore(&wilc->txq_spinlock, flags);
+
+	return tqe;
+}
+
+static void wilc_wlan_rxq_add(struct wilc *wilc, struct rxq_entry_t *rqe)
+{
+	if (wilc->quit)
+		return;
+
+	mutex_lock(&wilc->rxq_cs);
+	list_add_tail(&rqe->list, &wilc->rxq_head.list);
+	mutex_unlock(&wilc->rxq_cs);
+}
+
+static struct rxq_entry_t *wilc_wlan_rxq_remove(struct wilc *wilc)
+{
+	struct rxq_entry_t *rqe = NULL;
+
+	mutex_lock(&wilc->rxq_cs);
+	if (!list_empty(&wilc->rxq_head.list)) {
+		rqe = list_first_entry(&wilc->rxq_head.list, struct rxq_entry_t,
+				       list);
+		list_del(&rqe->list);
+	}
+	mutex_unlock(&wilc->rxq_cs);
+	return rqe;
+}
+
+void chip_allow_sleep(struct wilc *wilc)
+{
+	u32 reg = 0;
+
+	wilc->hif_func->hif_read_reg(wilc, WILC_SDIO_WAKEUP_REG, &reg);
+
+	wilc->hif_func->hif_write_reg(wilc, WILC_SDIO_WAKEUP_REG,
+				      reg & ~WILC_SDIO_WAKEUP_BIT);
+	wilc->hif_func->hif_write_reg(wilc, WILC_SDIO_HOST_TO_FW_REG, 0);
+}
+EXPORT_SYMBOL_GPL(chip_allow_sleep);
+
+void chip_wakeup(struct wilc *wilc)
+{
+	u32 reg, clk_status_reg;
+	const struct wilc_hif_func *h = wilc->hif_func;
+
+	if (wilc->io_type == WILC_HIF_SPI) {
+		do {
+			h->hif_read_reg(wilc, WILC_SPI_WAKEUP_REG, &reg);
+			h->hif_write_reg(wilc, WILC_SPI_WAKEUP_REG,
+					 reg | WILC_SPI_WAKEUP_BIT);
+			h->hif_write_reg(wilc, WILC_SPI_WAKEUP_REG,
+					 reg & ~WILC_SPI_WAKEUP_BIT);
+
+			do {
+				usleep_range(2000, 2500);
+				wilc_get_chipid(wilc, true);
+			} while (wilc_get_chipid(wilc, true) == 0);
+		} while (wilc_get_chipid(wilc, true) == 0);
+	} else if (wilc->io_type == WILC_HIF_SDIO) {
+		h->hif_write_reg(wilc, WILC_SDIO_HOST_TO_FW_REG,
+				 WILC_SDIO_HOST_TO_FW_BIT);
+		usleep_range(200, 400);
+		h->hif_read_reg(wilc, WILC_SDIO_WAKEUP_REG, &reg);
+		do {
+			h->hif_write_reg(wilc, WILC_SDIO_WAKEUP_REG,
+					 reg | WILC_SDIO_WAKEUP_BIT);
+			h->hif_read_reg(wilc, WILC_SDIO_CLK_STATUS_REG,
+					&clk_status_reg);
+
+			while (!(clk_status_reg & WILC_SDIO_CLK_STATUS_BIT)) {
+				usleep_range(2000, 2500);
+
+				h->hif_read_reg(wilc, WILC_SDIO_CLK_STATUS_REG,
+						&clk_status_reg);
+			}
+			if (!(clk_status_reg & WILC_SDIO_CLK_STATUS_BIT)) {
+				h->hif_write_reg(wilc, WILC_SDIO_WAKEUP_REG,
+						 reg & ~WILC_SDIO_WAKEUP_BIT);
+			}
+		} while (!(clk_status_reg & WILC_SDIO_CLK_STATUS_BIT));
+	}
+
+	if (wilc->chip_ps_state == WILC_CHIP_SLEEPING_MANUAL) {
+		if (wilc_get_chipid(wilc, false) < WILC_1000_BASE_ID_2B) {
+			u32 val32;
+
+			h->hif_read_reg(wilc, WILC_REG_4_TO_1_RX, &val32);
+			val32 |= BIT(6);
+			h->hif_write_reg(wilc, WILC_REG_4_TO_1_RX, val32);
+
+			h->hif_read_reg(wilc, WILC_REG_4_TO_1_TX_BANK0, &val32);
+			val32 |= BIT(6);
+			h->hif_write_reg(wilc, WILC_REG_4_TO_1_TX_BANK0, val32);
+		}
+	}
+	wilc->chip_ps_state = WILC_CHIP_WAKEDUP;
+}
+EXPORT_SYMBOL_GPL(chip_wakeup);
+
+void host_wakeup_notify(struct wilc *wilc)
+{
+	acquire_bus(wilc, WILC_BUS_ACQUIRE_ONLY);
+	wilc->hif_func->hif_write_reg(wilc, WILC_CORTUS_INTERRUPT_2, 1);
+	release_bus(wilc, WILC_BUS_RELEASE_ONLY);
+}
+EXPORT_SYMBOL_GPL(host_wakeup_notify);
+
+void host_sleep_notify(struct wilc *wilc)
+{
+	acquire_bus(wilc, WILC_BUS_ACQUIRE_ONLY);
+	wilc->hif_func->hif_write_reg(wilc, WILC_CORTUS_INTERRUPT_1, 1);
+	release_bus(wilc, WILC_BUS_RELEASE_ONLY);
+}
+EXPORT_SYMBOL_GPL(host_sleep_notify);
+
+int wilc_wlan_handle_txq(struct wilc *wilc, u32 *txq_count)
+{
+	int i, entries = 0;
+	u32 sum;
+	u32 reg;
+	u32 offset = 0;
+	int vmm_sz = 0;
+	struct txq_entry_t *tqe;
+	int ret = 0;
+	int counter;
+	int timeout;
+	u32 vmm_table[WILC_VMM_TBL_SIZE];
+	const struct wilc_hif_func *func;
+	u8 *txb = wilc->tx_buffer;
+	struct net_device *dev;
+	struct wilc_vif *vif;
+
+	if (wilc->quit)
+		goto out_update_cnt;
+
+	mutex_lock(&wilc->txq_add_to_head_cs);
+	tqe = wilc_wlan_txq_get_first(wilc);
+	if (!tqe)
+		goto out_unlock;
+	dev = tqe->vif->ndev;
+	wilc_wlan_txq_filter_dup_tcp_ack(dev);
+	i = 0;
+	sum = 0;
+	while (tqe && (i < (WILC_VMM_TBL_SIZE - 1))) {
+		if (tqe->type == WILC_CFG_PKT)
+			vmm_sz = ETH_CONFIG_PKT_HDR_OFFSET;
+		else if (tqe->type == WILC_NET_PKT)
+			vmm_sz = ETH_ETHERNET_HDR_OFFSET;
+		else
+			vmm_sz = HOST_HDR_OFFSET;
+
+		vmm_sz += tqe->buffer_size;
+		vmm_sz = ALIGN(vmm_sz, 4);
+
+		if ((sum + vmm_sz) > WILC_TX_BUFF_SIZE)
+			break;
+
+		vmm_table[i] = vmm_sz / 4;
+		if (tqe->type == WILC_CFG_PKT)
+			vmm_table[i] |= BIT(10);
+		cpu_to_le32s(&vmm_table[i]);
+
+		i++;
+		sum += vmm_sz;
+		tqe = wilc_wlan_txq_get_next(wilc, tqe);
+	}
+
+	if (i == 0)
+		goto out_unlock;
+	vmm_table[i] = 0x0;
+
+	acquire_bus(wilc, WILC_BUS_ACQUIRE_AND_WAKEUP);
+	counter = 0;
+	func = wilc->hif_func;
+	do {
+		ret = func->hif_read_reg(wilc, WILC_HOST_TX_CTRL, &reg);
+		if (ret)
+			break;
+
+		if ((reg & 0x1) == 0)
+			break;
+
+		counter++;
+		if (counter > 200) {
+			counter = 0;
+			ret = func->hif_write_reg(wilc, WILC_HOST_TX_CTRL, 0);
+			break;
+		}
+	} while (!wilc->quit);
+
+	if (ret)
+		goto out_release_bus;
+
+	timeout = 200;
+	do {
+		ret = func->hif_block_tx(wilc,
+					 WILC_VMM_TBL_RX_SHADOW_BASE,
+					 (u8 *)vmm_table,
+					 ((i + 1) * 4));
+		if (ret)
+			break;
+
+		ret = func->hif_write_reg(wilc, WILC_HOST_VMM_CTL, 0x2);
+		if (ret)
+			break;
+
+		do {
+			ret = func->hif_read_reg(wilc, WILC_HOST_VMM_CTL, &reg);
+			if (ret)
+				break;
+			if (FIELD_GET(WILC_VMM_ENTRY_AVAILABLE, reg)) {
+				entries = FIELD_GET(WILC_VMM_ENTRY_COUNT, reg);
+				break;
+			}
+		} while (--timeout);
+		if (timeout <= 0) {
+			ret = func->hif_write_reg(wilc, WILC_HOST_VMM_CTL, 0x0);
+			break;
+		}
+
+		if (ret)
+			break;
+
+		if (entries == 0) {
+			ret = func->hif_read_reg(wilc, WILC_HOST_TX_CTRL, &reg);
+			if (ret)
+				break;
+			reg &= ~BIT(0);
+			ret = func->hif_write_reg(wilc, WILC_HOST_TX_CTRL, reg);
+		}
+	} while (0);
+
+	if (ret)
+		goto out_release_bus;
+
+	if (entries == 0) {
+		/*
+		 * No VMM space available in firmware so retry to transmit
+		 * the packet from tx queue.
+		 */
+		ret = WILC_VMM_ENTRY_FULL_RETRY;
+		goto out_release_bus;
+	}
+
+	release_bus(wilc, WILC_BUS_RELEASE_ALLOW_SLEEP);
+
+	offset = 0;
+	i = 0;
+	do {
+		u32 header, buffer_offset;
+		char *bssid;
+		u8 mgmt_ptk = 0;
+
+		tqe = wilc_wlan_txq_remove_from_head(dev);
+		if (!tqe)
+			break;
+
+		vif = tqe->vif;
+		if (vmm_table[i] == 0)
+			break;
+
+		le32_to_cpus(&vmm_table[i]);
+		vmm_sz = FIELD_GET(WILC_VMM_BUFFER_SIZE, vmm_table[i]);
+		vmm_sz *= 4;
+
+		if (tqe->type == WILC_MGMT_PKT)
+			mgmt_ptk = 1;
+
+		header = (FIELD_PREP(WILC_VMM_HDR_TYPE, tqe->type) |
+			  FIELD_PREP(WILC_VMM_HDR_MGMT_FIELD, mgmt_ptk) |
+			  FIELD_PREP(WILC_VMM_HDR_PKT_SIZE, tqe->buffer_size) |
+			  FIELD_PREP(WILC_VMM_HDR_BUFF_SIZE, vmm_sz));
+
+		cpu_to_le32s(&header);
+		memcpy(&txb[offset], &header, 4);
+		if (tqe->type == WILC_CFG_PKT) {
+			buffer_offset = ETH_CONFIG_PKT_HDR_OFFSET;
+		} else if (tqe->type == WILC_NET_PKT) {
+			bssid = tqe->vif->bssid;
+			buffer_offset = ETH_ETHERNET_HDR_OFFSET;
+			memcpy(&txb[offset + 8], bssid, 6);
+		} else {
+			buffer_offset = HOST_HDR_OFFSET;
+		}
+
+		memcpy(&txb[offset + buffer_offset],
+		       tqe->buffer, tqe->buffer_size);
+		offset += vmm_sz;
+		i++;
+		tqe->status = 1;
+		if (tqe->tx_complete_func)
+			tqe->tx_complete_func(tqe->priv, tqe->status);
+		if (tqe->ack_idx != NOT_TCP_ACK &&
+		    tqe->ack_idx < MAX_PENDING_ACKS)
+			vif->ack_filter.pending_acks[tqe->ack_idx].txqe = NULL;
+		kfree(tqe);
+	} while (--entries);
+
+	acquire_bus(wilc, WILC_BUS_ACQUIRE_AND_WAKEUP);
+
+	ret = func->hif_clear_int_ext(wilc, ENABLE_TX_VMM);
+	if (ret)
+		goto out_release_bus;
+
+	ret = func->hif_block_tx_ext(wilc, 0, txb, offset);
+
+out_release_bus:
+	release_bus(wilc, WILC_BUS_RELEASE_ALLOW_SLEEP);
+
+out_unlock:
+	mutex_unlock(&wilc->txq_add_to_head_cs);
+
+out_update_cnt:
+	*txq_count = wilc->txq_entries;
+	return ret;
+}
+
+static void wilc_wlan_handle_rx_buff(struct wilc *wilc, u8 *buffer, int size)
+{
+	int offset = 0;
+	u32 header;
+	u32 pkt_len, pkt_offset, tp_len;
+	int is_cfg_packet;
+	u8 *buff_ptr;
+
+	do {
+		buff_ptr = buffer + offset;
+		header = get_unaligned_le32(buff_ptr);
+
+		is_cfg_packet = FIELD_GET(WILC_PKT_HDR_CONFIG_FIELD, header);
+		pkt_offset = FIELD_GET(WILC_PKT_HDR_OFFSET_FIELD, header);
+		tp_len = FIELD_GET(WILC_PKT_HDR_TOTAL_LEN_FIELD, header);
+		pkt_len = FIELD_GET(WILC_PKT_HDR_LEN_FIELD, header);
+
+		if (pkt_len == 0 || tp_len == 0)
+			break;
+
+		if (pkt_offset & IS_MANAGMEMENT) {
+			buff_ptr += HOST_HDR_OFFSET;
+			wilc_wfi_mgmt_rx(wilc, buff_ptr, pkt_len);
+		} else {
+			if (!is_cfg_packet) {
+				wilc_frmw_to_host(wilc, buff_ptr, pkt_len,
+						  pkt_offset);
+			} else {
+				struct wilc_cfg_rsp rsp;
+
+				buff_ptr += pkt_offset;
+
+				wilc_wlan_cfg_indicate_rx(wilc, buff_ptr,
+							  pkt_len,
+							  &rsp);
+				if (rsp.type == WILC_CFG_RSP) {
+					if (wilc->cfg_seq_no == rsp.seq_no)
+						complete(&wilc->cfg_event);
+				} else if (rsp.type == WILC_CFG_RSP_STATUS) {
+					wilc_mac_indicate(wilc);
+				}
+			}
+		}
+		offset += tp_len;
+	} while (offset < size);
+}
+
+static void wilc_wlan_handle_rxq(struct wilc *wilc)
+{
+	int size;
+	u8 *buffer;
+	struct rxq_entry_t *rqe;
+
+	while (!wilc->quit) {
+		rqe = wilc_wlan_rxq_remove(wilc);
+		if (!rqe)
+			break;
+
+		buffer = rqe->buffer;
+		size = rqe->buffer_size;
+		wilc_wlan_handle_rx_buff(wilc, buffer, size);
+
+		kfree(rqe);
+	}
+	if (wilc->quit)
+		complete(&wilc->cfg_event);
+}
+
+static void wilc_unknown_isr_ext(struct wilc *wilc)
+{
+	wilc->hif_func->hif_clear_int_ext(wilc, 0);
+}
+
+static void wilc_wlan_handle_isr_ext(struct wilc *wilc, u32 int_status)
+{
+	u32 offset = wilc->rx_buffer_offset;
+	u8 *buffer = NULL;
+	u32 size;
+	u32 retries = 0;
+	int ret = 0;
+	struct rxq_entry_t *rqe;
+
+	size = FIELD_GET(WILC_INTERRUPT_DATA_SIZE, int_status) << 2;
+
+	while (!size && retries < 10) {
+		wilc->hif_func->hif_read_size(wilc, &size);
+		size = FIELD_GET(WILC_INTERRUPT_DATA_SIZE, size) << 2;
+		retries++;
+	}
+
+	if (size <= 0)
+		return;
+
+	if (WILC_RX_BUFF_SIZE - offset < size)
+		offset = 0;
+
+	buffer = &wilc->rx_buffer[offset];
+
+	wilc->hif_func->hif_clear_int_ext(wilc, DATA_INT_CLR | ENABLE_RX_VMM);
+	ret = wilc->hif_func->hif_block_rx_ext(wilc, 0, buffer, size);
+	if (ret)
+		return;
+
+	offset += size;
+	wilc->rx_buffer_offset = offset;
+	rqe = kmalloc(sizeof(*rqe), GFP_KERNEL);
+	if (!rqe)
+		return;
+
+	rqe->buffer = buffer;
+	rqe->buffer_size = size;
+	wilc_wlan_rxq_add(wilc, rqe);
+	wilc_wlan_handle_rxq(wilc);
+}
+
+void wilc_handle_isr(struct wilc *wilc)
+{
+	u32 int_status;
+
+	acquire_bus(wilc, WILC_BUS_ACQUIRE_AND_WAKEUP);
+	wilc->hif_func->hif_read_int(wilc, &int_status);
+
+	if (int_status & DATA_INT_EXT)
+		wilc_wlan_handle_isr_ext(wilc, int_status);
+
+	if (!(int_status & (ALL_INT_EXT)))
+		wilc_unknown_isr_ext(wilc);
+
+	release_bus(wilc, WILC_BUS_RELEASE_ALLOW_SLEEP);
+}
+EXPORT_SYMBOL_GPL(wilc_handle_isr);
+
+int wilc_wlan_firmware_download(struct wilc *wilc, const u8 *buffer,
+				u32 buffer_size)
+{
+	u32 offset;
+	u32 addr, size, size2, blksz;
+	u8 *dma_buffer;
+	int ret = 0;
+
+	blksz = BIT(12);
+
+	dma_buffer = kmalloc(blksz, GFP_KERNEL);
+	if (!dma_buffer)
+		return -EIO;
+
+	offset = 0;
+	do {
+		addr = get_unaligned_le32(&buffer[offset]);
+		size = get_unaligned_le32(&buffer[offset + 4]);
+		acquire_bus(wilc, WILC_BUS_ACQUIRE_ONLY);
+		offset += 8;
+		while (((int)size) && (offset < buffer_size)) {
+			if (size <= blksz)
+				size2 = size;
+			else
+				size2 = blksz;
+
+			memcpy(dma_buffer, &buffer[offset], size2);
+			ret = wilc->hif_func->hif_block_tx(wilc, addr,
+							   dma_buffer, size2);
+			if (ret)
+				break;
+
+			addr += size2;
+			offset += size2;
+			size -= size2;
+		}
+		release_bus(wilc, WILC_BUS_RELEASE_ONLY);
+
+		if (ret)
+			goto fail;
+	} while (offset < buffer_size);
+
+fail:
+
+	kfree(dma_buffer);
+
+	return ret;
+}
+
+int wilc_wlan_start(struct wilc *wilc)
+{
+	u32 reg = 0;
+	int ret;
+	u32 chipid;
+
+	if (wilc->io_type == WILC_HIF_SDIO) {
+		reg = 0;
+		reg |= BIT(3);
+	} else if (wilc->io_type == WILC_HIF_SPI) {
+		reg = 1;
+	}
+	acquire_bus(wilc, WILC_BUS_ACQUIRE_ONLY);
+	ret = wilc->hif_func->hif_write_reg(wilc, WILC_VMM_CORE_CFG, reg);
+	if (ret) {
+		release_bus(wilc, WILC_BUS_RELEASE_ONLY);
+		return ret;
+	}
+	reg = 0;
+	if (wilc->io_type == WILC_HIF_SDIO && wilc->dev_irq_num)
+		reg |= WILC_HAVE_SDIO_IRQ_GPIO;
+
+	ret = wilc->hif_func->hif_write_reg(wilc, WILC_GP_REG_1, reg);
+	if (ret) {
+		release_bus(wilc, WILC_BUS_RELEASE_ONLY);
+		return ret;
+	}
+
+	wilc->hif_func->hif_sync_ext(wilc, NUM_INT_EXT);
+
+	ret = wilc->hif_func->hif_read_reg(wilc, WILC_CHIPID, &chipid);
+	if (ret) {
+		release_bus(wilc, WILC_BUS_RELEASE_ONLY);
+		return ret;
+	}
+
+	wilc->hif_func->hif_read_reg(wilc, WILC_GLB_RESET_0, &reg);
+	if ((reg & BIT(10)) == BIT(10)) {
+		reg &= ~BIT(10);
+		wilc->hif_func->hif_write_reg(wilc, WILC_GLB_RESET_0, reg);
+		wilc->hif_func->hif_read_reg(wilc, WILC_GLB_RESET_0, &reg);
+	}
+
+	reg |= BIT(10);
+	ret = wilc->hif_func->hif_write_reg(wilc, WILC_GLB_RESET_0, reg);
+	wilc->hif_func->hif_read_reg(wilc, WILC_GLB_RESET_0, &reg);
+	release_bus(wilc, WILC_BUS_RELEASE_ONLY);
+
+	return ret;
+}
+
+int wilc_wlan_stop(struct wilc *wilc, struct wilc_vif *vif)
+{
+	u32 reg = 0;
+	int ret;
+
+	acquire_bus(wilc, WILC_BUS_ACQUIRE_AND_WAKEUP);
+
+	ret = wilc->hif_func->hif_read_reg(wilc, WILC_GP_REG_0, &reg);
+	if (ret) {
+		netdev_err(vif->ndev, "Error while reading reg\n");
+		release_bus(wilc, WILC_BUS_RELEASE_ALLOW_SLEEP);
+		return ret;
+	}
+
+	ret = wilc->hif_func->hif_write_reg(wilc, WILC_GP_REG_0,
+					(reg | WILC_ABORT_REQ_BIT));
+	if (ret) {
+		netdev_err(vif->ndev, "Error while writing reg\n");
+		release_bus(wilc, WILC_BUS_RELEASE_ALLOW_SLEEP);
+		return ret;
+	}
+
+	ret = wilc->hif_func->hif_read_reg(wilc, WILC_FW_HOST_COMM, &reg);
+	if (ret) {
+		netdev_err(vif->ndev, "Error while reading reg\n");
+		release_bus(wilc, WILC_BUS_RELEASE_ALLOW_SLEEP);
+		return ret;
+	}
+	reg = BIT(0);
+
+	ret = wilc->hif_func->hif_write_reg(wilc, WILC_FW_HOST_COMM, reg);
+	if (ret) {
+		netdev_err(vif->ndev, "Error while writing reg\n");
+		release_bus(wilc, WILC_BUS_RELEASE_ALLOW_SLEEP);
+		return ret;
+	}
+
+	release_bus(wilc, WILC_BUS_RELEASE_ALLOW_SLEEP);
+
+	return 0;
+}
+
+void wilc_wlan_cleanup(struct net_device *dev)
+{
+	struct txq_entry_t *tqe;
+	struct rxq_entry_t *rqe;
+	struct wilc_vif *vif = netdev_priv(dev);
+	struct wilc *wilc = vif->wilc;
+
+	wilc->quit = 1;
+	while ((tqe = wilc_wlan_txq_remove_from_head(dev))) {
+		if (tqe->tx_complete_func)
+			tqe->tx_complete_func(tqe->priv, 0);
+		kfree(tqe);
+	}
+
+	while ((rqe = wilc_wlan_rxq_remove(wilc)))
+		kfree(rqe);
+
+	kfree(wilc->rx_buffer);
+	wilc->rx_buffer = NULL;
+	kfree(wilc->tx_buffer);
+	wilc->tx_buffer = NULL;
+	wilc->hif_func->hif_deinit(NULL);
+}
+
+static int wilc_wlan_cfg_commit(struct wilc_vif *vif, int type,
+				u32 drv_handler)
+{
+	struct wilc *wilc = vif->wilc;
+	struct wilc_cfg_frame *cfg = &wilc->cfg_frame;
+	int t_len = wilc->cfg_frame_offset + sizeof(struct wilc_cfg_cmd_hdr);
+
+	if (type == WILC_CFG_SET)
+		cfg->hdr.cmd_type = 'W';
+	else
+		cfg->hdr.cmd_type = 'Q';
+
+	cfg->hdr.seq_no = wilc->cfg_seq_no % 256;
+	cfg->hdr.total_len = cpu_to_le16(t_len);
+	cfg->hdr.driver_handler = cpu_to_le32(drv_handler);
+	wilc->cfg_seq_no = cfg->hdr.seq_no;
+
+	if (!wilc_wlan_txq_add_cfg_pkt(vif, (u8 *)&cfg->hdr, t_len))
+		return -1;
+
+	return 0;
+}
+
+int wilc_wlan_cfg_set(struct wilc_vif *vif, int start, u16 wid, u8 *buffer,
+		      u32 buffer_size, int commit, u32 drv_handler)
+{
+	u32 offset;
+	int ret_size;
+	struct wilc *wilc = vif->wilc;
+
+	mutex_lock(&wilc->cfg_cmd_lock);
+
+	if (start)
+		wilc->cfg_frame_offset = 0;
+
+	offset = wilc->cfg_frame_offset;
+	ret_size = wilc_wlan_cfg_set_wid(wilc->cfg_frame.frame, offset,
+					 wid, buffer, buffer_size);
+	offset += ret_size;
+	wilc->cfg_frame_offset = offset;
+
+	if (!commit) {
+		mutex_unlock(&wilc->cfg_cmd_lock);
+		return ret_size;
+	}
+
+	netdev_dbg(vif->ndev, "%s: seqno[%d]\n", __func__, wilc->cfg_seq_no);
+
+	if (wilc_wlan_cfg_commit(vif, WILC_CFG_SET, drv_handler))
+		ret_size = 0;
+
+	if (!wait_for_completion_timeout(&wilc->cfg_event,
+					 WILC_CFG_PKTS_TIMEOUT)) {
+		netdev_dbg(vif->ndev, "%s: Timed Out\n", __func__);
+		ret_size = 0;
+	}
+
+	wilc->cfg_frame_offset = 0;
+	wilc->cfg_seq_no += 1;
+	mutex_unlock(&wilc->cfg_cmd_lock);
+
+	return ret_size;
+}
+
+int wilc_wlan_cfg_get(struct wilc_vif *vif, int start, u16 wid, int commit,
+		      u32 drv_handler)
+{
+	u32 offset;
+	int ret_size;
+	struct wilc *wilc = vif->wilc;
+
+	mutex_lock(&wilc->cfg_cmd_lock);
+
+	if (start)
+		wilc->cfg_frame_offset = 0;
+
+	offset = wilc->cfg_frame_offset;
+	ret_size = wilc_wlan_cfg_get_wid(wilc->cfg_frame.frame, offset, wid);
+	offset += ret_size;
+	wilc->cfg_frame_offset = offset;
+
+	if (!commit) {
+		mutex_unlock(&wilc->cfg_cmd_lock);
+		return ret_size;
+	}
+
+	if (wilc_wlan_cfg_commit(vif, WILC_CFG_QUERY, drv_handler))
+		ret_size = 0;
+
+	if (!wait_for_completion_timeout(&wilc->cfg_event,
+					 WILC_CFG_PKTS_TIMEOUT)) {
+		netdev_dbg(vif->ndev, "%s: Timed Out\n", __func__);
+		ret_size = 0;
+	}
+	wilc->cfg_frame_offset = 0;
+	wilc->cfg_seq_no += 1;
+	mutex_unlock(&wilc->cfg_cmd_lock);
+
+	return ret_size;
+}
+
+int wilc_send_config_pkt(struct wilc_vif *vif, u8 mode, struct wid *wids,
+			 u32 count)
+{
+	int i;
+	int ret = 0;
+	u32 drv = wilc_get_vif_idx(vif);
+
+	if (mode == WILC_GET_CFG) {
+		for (i = 0; i < count; i++) {
+			if (!wilc_wlan_cfg_get(vif, !i,
+					       wids[i].id,
+					       (i == count - 1),
+					       drv)) {
+				ret = -ETIMEDOUT;
+				break;
+			}
+		}
+		for (i = 0; i < count; i++) {
+			wids[i].size = wilc_wlan_cfg_get_val(vif->wilc,
+							     wids[i].id,
+							     wids[i].val,
+							     wids[i].size);
+		}
+	} else if (mode == WILC_SET_CFG) {
+		for (i = 0; i < count; i++) {
+			if (!wilc_wlan_cfg_set(vif, !i,
+					       wids[i].id,
+					       wids[i].val,
+					       wids[i].size,
+					       (i == count - 1),
+					       drv)) {
+				ret = -ETIMEDOUT;
+				break;
+			}
+		}
+	}
+
+	return ret;
+}
+
+static int init_chip(struct net_device *dev)
+{
+	u32 chipid;
+	u32 reg;
+	int ret = 0;
+	struct wilc_vif *vif = netdev_priv(dev);
+	struct wilc *wilc = vif->wilc;
+
+	acquire_bus(wilc, WILC_BUS_ACQUIRE_ONLY);
+
+	chipid = wilc_get_chipid(wilc, true);
+
+	if ((chipid & 0xfff) != 0xa0) {
+		ret = wilc->hif_func->hif_read_reg(wilc,
+						   WILC_CORTUS_RESET_MUX_SEL,
+						   &reg);
+		if (ret) {
+			netdev_err(dev, "fail read reg 0x1118\n");
+			goto release;
+		}
+		reg |= BIT(0);
+		ret = wilc->hif_func->hif_write_reg(wilc,
+						    WILC_CORTUS_RESET_MUX_SEL,
+						    reg);
+		if (ret) {
+			netdev_err(dev, "fail write reg 0x1118\n");
+			goto release;
+		}
+		ret = wilc->hif_func->hif_write_reg(wilc,
+						    WILC_CORTUS_BOOT_REGISTER,
+						    WILC_CORTUS_BOOT_FROM_IRAM);
+		if (ret) {
+			netdev_err(dev, "fail write reg 0xc0000\n");
+			goto release;
+		}
+	}
+
+release:
+	release_bus(wilc, WILC_BUS_RELEASE_ONLY);
+
+	return ret;
+}
+
+u32 wilc_get_chipid(struct wilc *wilc, bool update)
+{
+	static u32 chipid;
+	u32 tempchipid = 0;
+	u32 rfrevid = 0;
+
+	if (chipid == 0 || update) {
+		wilc->hif_func->hif_read_reg(wilc, WILC_CHIPID, &tempchipid);
+		wilc->hif_func->hif_read_reg(wilc, WILC_RF_REVISION_ID,
+					     &rfrevid);
+		if (!is_wilc1000(tempchipid)) {
+			chipid = 0;
+			return chipid;
+		}
+		if (tempchipid == WILC_1000_BASE_ID_2A) { /* 0x1002A0 */
+			if (rfrevid != 0x1)
+				tempchipid = WILC_1000_BASE_ID_2A_REV1;
+		} else if (tempchipid == WILC_1000_BASE_ID_2B) { /* 0x1002B0 */
+			if (rfrevid == 0x4)
+				tempchipid = WILC_1000_BASE_ID_2B_REV1;
+			else if (rfrevid != 0x3)
+				tempchipid = WILC_1000_BASE_ID_2B_REV2;
+		}
+
+		chipid = tempchipid;
+	}
+	return chipid;
+}
+
+int wilc_wlan_init(struct net_device *dev)
+{
+	int ret = 0;
+	struct wilc_vif *vif = netdev_priv(dev);
+	struct wilc *wilc;
+
+	wilc = vif->wilc;
+
+	wilc->quit = 0;
+
+	if (wilc->hif_func->hif_init(wilc, false)) {
+		ret = -EIO;
+		goto fail;
+	}
+
+	if (!wilc->tx_buffer)
+		wilc->tx_buffer = kmalloc(WILC_TX_BUFF_SIZE, GFP_KERNEL);
+
+	if (!wilc->tx_buffer) {
+		ret = -ENOBUFS;
+		goto fail;
+	}
+
+	if (!wilc->rx_buffer)
+		wilc->rx_buffer = kmalloc(WILC_RX_BUFF_SIZE, GFP_KERNEL);
+
+	if (!wilc->rx_buffer) {
+		ret = -ENOBUFS;
+		goto fail;
+	}
+
+	if (init_chip(dev)) {
+		ret = -EIO;
+		goto fail;
+	}
+
+	return 0;
+
+fail:
+
+	kfree(wilc->rx_buffer);
+	wilc->rx_buffer = NULL;
+	kfree(wilc->tx_buffer);
+	wilc->tx_buffer = NULL;
+
+	return ret;
+}
-- 
2.24.0
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

