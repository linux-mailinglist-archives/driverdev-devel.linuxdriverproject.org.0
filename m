Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B0991817D0
	for <lists+driverdev-devel@lfdr.de>; Wed, 11 Mar 2020 13:19:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1777386BB7;
	Wed, 11 Mar 2020 12:19:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 30OE2UEfJ4-s; Wed, 11 Mar 2020 12:19:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 08DAF87675;
	Wed, 11 Mar 2020 12:19:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 41B031BF599
 for <devel@linuxdriverproject.org>; Wed, 11 Mar 2020 12:19:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3D9EA847F8
 for <devel@linuxdriverproject.org>; Wed, 11 Mar 2020 12:19:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qks9efgfCTG6 for <devel@linuxdriverproject.org>;
 Wed, 11 Mar 2020 12:19:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa5.microchip.iphmx.com (esa5.microchip.iphmx.com
 [216.71.150.166])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9CDFF84C9F
 for <devel@driverdev.osuosl.org>; Wed, 11 Mar 2020 12:18:56 +0000 (UTC)
Received-SPF: Pass (esa5.microchip.iphmx.com: domain of
 Ajay.Kathat@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Ajay.Kathat@microchip.com";
 x-sender="Ajay.Kathat@microchip.com"; x-conformance=spf_only;
 x-record-type="v=spf1"; x-record-text="v=spf1 mx
 a:ushub1.microchip.com a:smtpout.microchip.com
 -exists:%{i}.spf.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa5.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Ajay.Kathat@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa5.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Ajay.Kathat@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: MzTHFuz+diijyXK/30N0rOqkuNxFfyGkuhu7nIm5InFFoH4BqO+ys/Ody20pdpXclDGh7ixvLX
 F8opw0WFPvjAJn37Dq+6MKPnE5puRnlakdchSW03Eo39PUomAqj+CJnYQi/1dKtNdWWgSzw0vV
 Oq0SupkNJbK1Ir4r9b9GL1HBV6x+9YGj4akD7c5pOq2iCQWYe3pr4nrtJpWHeALGKImbPQPYTy
 sInZXSVvC+ifVV404BEa8cd0IOoDqoEG9LltIGRivIy9ROTe/Wg7DOcjSWZF9Mv0dEi5nNVuvW
 a1M=
X-IronPort-AV: E=Sophos;i="5.70,540,1574146800"; d="scan'208";a="68440737"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 11 Mar 2020 05:18:56 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 11 Mar 2020 05:18:56 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 11 Mar 2020 05:18:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=L/XKq3+v8DH3zj92eLzXkV/Rr8HBuDtdc+ZVfgQxO/jKdvj76KxMqXdpMWNneZ6bWzRURRuRT3zXTzaQ0vjmyFJ5XfRH+DO1a5ZDvMyee55vVYPZcwk+MuvNyfuX/ALBdIVx8UZ73wzVSCefqjYc5QEgjkomgO/UZu2bxlKhtJrNhbvXsf7pyANybEXVpLF02xh12LQnzWohYHS5wb4pbnjOZu8xGnV8IOLQ4e7GvXbVXnTcj87+AIQLeymIYrlGAqS+Nt0WphEgpbwlx1p5G0Rqqg7UvQeSNj+JNOeC0Y5NEQ0cO1Bzp5iDJdCKJKJIPj0QPAB5v9b+OJSCef2lWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yM7DSo3pfXzV/3Pstpzs1QmL/t5wphbjKbPwoFgRNKY=;
 b=AZBa16kQdHnDfr+/e9Q8COFddkE33+rLcZ4enr/iljkg47diH28hvZ7WyMhGsK6nta1Mw6kVtlpDFM1TH04EmC2Au3RJLeF0EC923eVZgwKKFOC6coMPFGZfsrG18Sor4xmaxLyZuW1BwGTJc85xAQwP02LheSR+/UubvD/VxyoP5yv/iUTu/47G1KMxITCbDfjLUWrtH2nXwvY9+N5d18OF6fn+Bbc3Dc7PkMJDZ3l4590m55YGGYj8OJmqa/gJ5WhPk7wCchZa/QaaTexjC6RaL2ciXV0vdvZC9895AR+2ZlR/FGBM9uZWwL8+CPIFiraZuVlAH0Vnesl+DCMwHw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yM7DSo3pfXzV/3Pstpzs1QmL/t5wphbjKbPwoFgRNKY=;
 b=jJ38tLFyeNTNI5AEvIRJQRRsRKItpOM/ZKCTdHbJHhIiLIqZjXq2pXo0MGWKNXT7lehYNFxy60ZJACESGhEsHo0vsBZZCT7wEZuL2sj+fj/sNeYZ0SoRT6fovITBtCdUvzZlay0WrpOk4ZRP2ZLAkz8e6VzJOyDcagQTwJJGPDs=
Received: from BYAPR11MB3125.namprd11.prod.outlook.com (2603:10b6:a03:8e::32)
 by BYAPR11MB2805.namprd11.prod.outlook.com (2603:10b6:a02:c1::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2814.14; Wed, 11 Mar
 2020 12:18:44 +0000
Received: from BYAPR11MB3125.namprd11.prod.outlook.com
 ([fe80::c27:87cf:ca4:d86e]) by BYAPR11MB3125.namprd11.prod.outlook.com
 ([fe80::c27:87cf:ca4:d86e%4]) with mapi id 15.20.2793.013; Wed, 11 Mar 2020
 12:18:44 +0000
From: <Ajay.Kathat@microchip.com>
To: <linux-wireless@vger.kernel.org>
Subject: [PATCH v5 05/17] wilc1000: add wlan_cfg.c
Thread-Topic: [PATCH v5 05/17] wilc1000: add wlan_cfg.c
Thread-Index: AQHV9580CYLMO2Q5IkGwqsvCJkRN4g==
Date: Wed, 11 Mar 2020 12:18:43 +0000
Message-ID: <20200311121809.5610-6-ajay.kathat@microchip.com>
References: <20200311121809.5610-1-ajay.kathat@microchip.com>
In-Reply-To: <20200311121809.5610-1-ajay.kathat@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.17.1
x-originating-ip: [121.244.27.38]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 20a5ba02-33bb-4c90-1746-08d7c5b657bd
x-ms-traffictypediagnostic: BYAPR11MB2805:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR11MB28053EA341B1F2403F333E6FE3FC0@BYAPR11MB2805.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:343;
x-forefront-prvs: 0339F89554
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(376002)(136003)(346002)(396003)(366004)(199004)(478600001)(2906002)(71200400001)(8936002)(81166006)(81156014)(316002)(5660300002)(54906003)(6506007)(1076003)(8676002)(6512007)(86362001)(36756003)(107886003)(4326008)(6486002)(76116006)(91956017)(66476007)(64756008)(66446008)(66946007)(66556008)(6916009)(2616005)(186003)(26005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR11MB2805;
 H:BYAPR11MB3125.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: yrjP6fsaOacaZpCCpLbuztYajThH+Raniow9UQdf6ogcGgCsCjeMaPPkkHXdFqffWIHuwm7Q4gZ0EYCSR7EK7pXM08CRraS4vOOwb52qe1vwUYY4t+N2PF1bts1cm3Ea77iEklcUuKt38NcyWvVPb4vWjtV8a7Y6g5PiFxLGTwoiRyezp0G+oM+92PfXw80RbD4DrjBo00yDXccW6lGDceOkvJJ6YOcOq138enykDoEEnf3CWcoAF5ppvtKCIyUTPbSN7dqfxDTNu5LgS5px73oeg8R7wYB+lLvFq3R/gQzGsjU9ZxCRCxP4ZgMYbjw5HNEWRldc5pHkSuMyZQ06eOyZM42TMO9fMX0PexMEWEOoqLNhz55J/bcn/lRfMX22MqQ/z1WYlyAQzPHgiReTKYooZvpvlt7oHxp1ErOJrY9mA3EjDg3eMMXwDyrZXeJb
x-ms-exchange-antispam-messagedata: UuYRTT19Eb+KcZznl7lqjbChMzQR4Hqy+dND6BmsBSVdF6gG245HYAXo5+nKLfd6pbOGjxVi4qCZM1OAWbmSqHKJwGyWNT+8UqSrZuORCVbHVfrDlzs/vSrs0HQJYnN89JaAxRKJArF9S1pbGcsEzQ==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 20a5ba02-33bb-4c90-1746-08d7c5b657bd
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Mar 2020 12:18:43.7807 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /pUsAB0HVfxaKZW5mVg9Cra/DO69oEOgmQDfYNTKaP5eidTFuqR8cWK27X1pE/CWDSs86j7S4xkzKOj/SC372m59SXz/+cbhDClMsYfuB80=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB2805
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

Moved 'drivers/staging/wilc1000/wlan_cfg.c' to
'drivers/net/wireless/microchip/wilc1000/wlan_cfg.c'.

Signed-off-by: Ajay Singh <ajay.kathat@microchip.com>
---
 .../wireless/microchip/wilc1000/wlan_cfg.c    | 413 ++++++++++++++++++
 1 file changed, 413 insertions(+)
 create mode 100644 drivers/net/wireless/microchip/wilc1000/wlan_cfg.c

diff --git a/drivers/net/wireless/microchip/wilc1000/wlan_cfg.c b/drivers/net/wireless/microchip/wilc1000/wlan_cfg.c
new file mode 100644
index 000000000000..fe2a7ed8e5cd
--- /dev/null
+++ b/drivers/net/wireless/microchip/wilc1000/wlan_cfg.c
@@ -0,0 +1,413 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (c) 2012 - 2018 Microchip Technology Inc., and its subsidiaries.
+ * All rights reserved.
+ */
+
+#include <linux/bitfield.h>
+#include "wlan_if.h"
+#include "wlan.h"
+#include "wlan_cfg.h"
+#include "netdev.h"
+
+enum cfg_cmd_type {
+	CFG_BYTE_CMD	= 0,
+	CFG_HWORD_CMD	= 1,
+	CFG_WORD_CMD	= 2,
+	CFG_STR_CMD	= 3,
+	CFG_BIN_CMD	= 4
+};
+
+static const struct wilc_cfg_byte g_cfg_byte[] = {
+	{WID_STATUS, 0},
+	{WID_RSSI, 0},
+	{WID_LINKSPEED, 0},
+	{WID_NIL, 0}
+};
+
+static const struct wilc_cfg_hword g_cfg_hword[] = {
+	{WID_NIL, 0}
+};
+
+static const struct wilc_cfg_word g_cfg_word[] = {
+	{WID_FAILED_COUNT, 0},
+	{WID_RECEIVED_FRAGMENT_COUNT, 0},
+	{WID_SUCCESS_FRAME_COUNT, 0},
+	{WID_GET_INACTIVE_TIME, 0},
+	{WID_NIL, 0}
+
+};
+
+static const struct wilc_cfg_str g_cfg_str[] = {
+	{WID_FIRMWARE_VERSION, NULL},
+	{WID_MAC_ADDR, NULL},
+	{WID_ASSOC_RES_INFO, NULL},
+	{WID_NIL, NULL}
+};
+
+#define WILC_RESP_MSG_TYPE_CONFIG_REPLY		'R'
+#define WILC_RESP_MSG_TYPE_STATUS_INFO		'I'
+#define WILC_RESP_MSG_TYPE_NETWORK_INFO		'N'
+#define WILC_RESP_MSG_TYPE_SCAN_COMPLETE	'S'
+
+/********************************************
+ *
+ *      Configuration Functions
+ *
+ ********************************************/
+
+static int wilc_wlan_cfg_set_byte(u8 *frame, u32 offset, u16 id, u8 val8)
+{
+	if ((offset + 4) >= WILC_MAX_CFG_FRAME_SIZE)
+		return 0;
+
+	put_unaligned_le16(id, &frame[offset]);
+	put_unaligned_le16(1, &frame[offset + 2]);
+	frame[offset + 4] = val8;
+	return 5;
+}
+
+static int wilc_wlan_cfg_set_hword(u8 *frame, u32 offset, u16 id, u16 val16)
+{
+	if ((offset + 5) >= WILC_MAX_CFG_FRAME_SIZE)
+		return 0;
+
+	put_unaligned_le16(id, &frame[offset]);
+	put_unaligned_le16(2, &frame[offset + 2]);
+	put_unaligned_le16(val16, &frame[offset + 4]);
+
+	return 6;
+}
+
+static int wilc_wlan_cfg_set_word(u8 *frame, u32 offset, u16 id, u32 val32)
+{
+	if ((offset + 7) >= WILC_MAX_CFG_FRAME_SIZE)
+		return 0;
+
+	put_unaligned_le16(id, &frame[offset]);
+	put_unaligned_le16(4, &frame[offset + 2]);
+	put_unaligned_le32(val32, &frame[offset + 4]);
+
+	return 8;
+}
+
+static int wilc_wlan_cfg_set_str(u8 *frame, u32 offset, u16 id, u8 *str,
+				 u32 size)
+{
+	if ((offset + size + 4) >= WILC_MAX_CFG_FRAME_SIZE)
+		return 0;
+
+	put_unaligned_le16(id, &frame[offset]);
+	put_unaligned_le16(size, &frame[offset + 2]);
+	if (str && size != 0)
+		memcpy(&frame[offset + 4], str, size);
+
+	return (size + 4);
+}
+
+static int wilc_wlan_cfg_set_bin(u8 *frame, u32 offset, u16 id, u8 *b, u32 size)
+{
+	u32 i;
+	u8 checksum = 0;
+
+	if ((offset + size + 5) >= WILC_MAX_CFG_FRAME_SIZE)
+		return 0;
+
+	put_unaligned_le16(id, &frame[offset]);
+	put_unaligned_le16(size, &frame[offset + 2]);
+
+	if ((b) && size != 0) {
+		memcpy(&frame[offset + 4], b, size);
+		for (i = 0; i < size; i++)
+			checksum += frame[offset + i + 4];
+	}
+
+	frame[offset + size + 4] = checksum;
+
+	return (size + 5);
+}
+
+/********************************************
+ *
+ *      Configuration Response Functions
+ *
+ ********************************************/
+
+static void wilc_wlan_parse_response_frame(struct wilc *wl, u8 *info, int size)
+{
+	u16 wid;
+	u32 len = 0, i = 0;
+	struct wilc_cfg *cfg = &wl->cfg;
+
+	while (size > 0) {
+		i = 0;
+		wid = get_unaligned_le16(info);
+
+		switch (FIELD_GET(WILC_WID_TYPE, wid)) {
+		case WID_CHAR:
+			while (cfg->b[i].id != WID_NIL && cfg->b[i].id != wid)
+				i++;
+
+			if (cfg->b[i].id == wid)
+				cfg->b[i].val = info[4];
+
+			len = 3;
+			break;
+
+		case WID_SHORT:
+			while (cfg->hw[i].id != WID_NIL && cfg->hw[i].id != wid)
+				i++;
+
+			if (cfg->hw[i].id == wid)
+				cfg->hw[i].val = get_unaligned_le16(&info[4]);
+
+			len = 4;
+			break;
+
+		case WID_INT:
+			while (cfg->w[i].id != WID_NIL && cfg->w[i].id != wid)
+				i++;
+
+			if (cfg->w[i].id == wid)
+				cfg->w[i].val = get_unaligned_le32(&info[4]);
+
+			len = 6;
+			break;
+
+		case WID_STR:
+			while (cfg->s[i].id != WID_NIL && cfg->s[i].id != wid)
+				i++;
+
+			if (cfg->s[i].id == wid)
+				memcpy(cfg->s[i].str, &info[2], info[2] + 2);
+
+			len = 2 + info[2];
+			break;
+
+		default:
+			break;
+		}
+		size -= (2 + len);
+		info += (2 + len);
+	}
+}
+
+static void wilc_wlan_parse_info_frame(struct wilc *wl, u8 *info)
+{
+	u32 wid, len;
+
+	wid = get_unaligned_le16(info);
+
+	len = info[2];
+
+	if (len == 1 && wid == WID_STATUS) {
+		int i = 0;
+
+		while (wl->cfg.b[i].id != WID_NIL &&
+		       wl->cfg.b[i].id != wid)
+			i++;
+
+		if (wl->cfg.b[i].id == wid)
+			wl->cfg.b[i].val = info[3];
+	}
+}
+
+/********************************************
+ *
+ *      Configuration Exported Functions
+ *
+ ********************************************/
+
+int wilc_wlan_cfg_set_wid(u8 *frame, u32 offset, u16 id, u8 *buf, int size)
+{
+	u8 type = FIELD_GET(WILC_WID_TYPE, id);
+	int ret = 0;
+
+	switch (type) {
+	case CFG_BYTE_CMD:
+		if (size >= 1)
+			ret = wilc_wlan_cfg_set_byte(frame, offset, id, *buf);
+		break;
+
+	case CFG_HWORD_CMD:
+		if (size >= 2)
+			ret = wilc_wlan_cfg_set_hword(frame, offset, id,
+						      *((u16 *)buf));
+		break;
+
+	case CFG_WORD_CMD:
+		if (size >= 4)
+			ret = wilc_wlan_cfg_set_word(frame, offset, id,
+						     *((u32 *)buf));
+		break;
+
+	case CFG_STR_CMD:
+		ret = wilc_wlan_cfg_set_str(frame, offset, id, buf, size);
+		break;
+
+	case CFG_BIN_CMD:
+		ret = wilc_wlan_cfg_set_bin(frame, offset, id, buf, size);
+		break;
+	}
+
+	return ret;
+}
+
+int wilc_wlan_cfg_get_wid(u8 *frame, u32 offset, u16 id)
+{
+	if ((offset + 2) >= WILC_MAX_CFG_FRAME_SIZE)
+		return 0;
+
+	put_unaligned_le16(id, &frame[offset]);
+
+	return 2;
+}
+
+int wilc_wlan_cfg_get_val(struct wilc *wl, u16 wid, u8 *buffer,
+			  u32 buffer_size)
+{
+	u8 type = FIELD_GET(WILC_WID_TYPE, wid);
+	int i, ret = 0;
+	struct wilc_cfg *cfg = &wl->cfg;
+
+	i = 0;
+	if (type == CFG_BYTE_CMD) {
+		while (cfg->b[i].id != WID_NIL && cfg->b[i].id != wid)
+			i++;
+
+		if (cfg->b[i].id == wid) {
+			memcpy(buffer, &cfg->b[i].val, 1);
+			ret = 1;
+		}
+	} else if (type == CFG_HWORD_CMD) {
+		while (cfg->hw[i].id != WID_NIL && cfg->hw[i].id != wid)
+			i++;
+
+		if (cfg->hw[i].id == wid) {
+			memcpy(buffer, &cfg->hw[i].val, 2);
+			ret = 2;
+		}
+	} else if (type == CFG_WORD_CMD) {
+		while (cfg->w[i].id != WID_NIL && cfg->w[i].id != wid)
+			i++;
+
+		if (cfg->w[i].id == wid) {
+			memcpy(buffer, &cfg->w[i].val, 4);
+			ret = 4;
+		}
+	} else if (type == CFG_STR_CMD) {
+		while (cfg->s[i].id != WID_NIL && cfg->s[i].id != wid)
+			i++;
+
+		if (cfg->s[i].id == wid) {
+			u16 size = get_unaligned_le16(cfg->s[i].str);
+
+			if (buffer_size >= size) {
+				memcpy(buffer, &cfg->s[i].str[2], size);
+				ret = size;
+			}
+		}
+	}
+	return ret;
+}
+
+void wilc_wlan_cfg_indicate_rx(struct wilc *wilc, u8 *frame, int size,
+			       struct wilc_cfg_rsp *rsp)
+{
+	u8 msg_type;
+	u8 msg_id;
+
+	msg_type = frame[0];
+	msg_id = frame[1];      /* seq no */
+	frame += 4;
+	size -= 4;
+	rsp->type = 0;
+
+	switch (msg_type) {
+	case WILC_RESP_MSG_TYPE_CONFIG_REPLY:
+		wilc_wlan_parse_response_frame(wilc, frame, size);
+		rsp->type = WILC_CFG_RSP;
+		rsp->seq_no = msg_id;
+		break;
+
+	case WILC_RESP_MSG_TYPE_STATUS_INFO:
+		wilc_wlan_parse_info_frame(wilc, frame);
+		rsp->type = WILC_CFG_RSP_STATUS;
+		rsp->seq_no = msg_id;
+		/* call host interface info parse as well */
+		wilc_gnrl_async_info_received(wilc, frame - 4, size + 4);
+		break;
+
+	case WILC_RESP_MSG_TYPE_NETWORK_INFO:
+		wilc_network_info_received(wilc, frame - 4, size + 4);
+		break;
+
+	case WILC_RESP_MSG_TYPE_SCAN_COMPLETE:
+		wilc_scan_complete_received(wilc, frame - 4, size + 4);
+		break;
+
+	default:
+		rsp->seq_no = msg_id;
+		break;
+	}
+}
+
+int wilc_wlan_cfg_init(struct wilc *wl)
+{
+	struct wilc_cfg_str_vals *str_vals;
+	int i = 0;
+
+	wl->cfg.b = kmemdup(g_cfg_byte, sizeof(g_cfg_byte), GFP_KERNEL);
+	if (!wl->cfg.b)
+		return -ENOMEM;
+
+	wl->cfg.hw = kmemdup(g_cfg_hword, sizeof(g_cfg_hword), GFP_KERNEL);
+	if (!wl->cfg.hw)
+		goto out_b;
+
+	wl->cfg.w = kmemdup(g_cfg_word, sizeof(g_cfg_word), GFP_KERNEL);
+	if (!wl->cfg.w)
+		goto out_hw;
+
+	wl->cfg.s = kmemdup(g_cfg_str, sizeof(g_cfg_str), GFP_KERNEL);
+	if (!wl->cfg.s)
+		goto out_w;
+
+	str_vals = kzalloc(sizeof(*str_vals), GFP_KERNEL);
+	if (!str_vals)
+		goto out_s;
+
+	wl->cfg.str_vals = str_vals;
+	/* store the string cfg parameters */
+	wl->cfg.s[i].id = WID_FIRMWARE_VERSION;
+	wl->cfg.s[i].str = str_vals->firmware_version;
+	i++;
+	wl->cfg.s[i].id = WID_MAC_ADDR;
+	wl->cfg.s[i].str = str_vals->mac_address;
+	i++;
+	wl->cfg.s[i].id = WID_ASSOC_RES_INFO;
+	wl->cfg.s[i].str = str_vals->assoc_rsp;
+	i++;
+	wl->cfg.s[i].id = WID_NIL;
+	wl->cfg.s[i].str = NULL;
+	return 0;
+
+out_s:
+	kfree(wl->cfg.s);
+out_w:
+	kfree(wl->cfg.w);
+out_hw:
+	kfree(wl->cfg.hw);
+out_b:
+	kfree(wl->cfg.b);
+	return -ENOMEM;
+}
+
+void wilc_wlan_cfg_deinit(struct wilc *wl)
+{
+	kfree(wl->cfg.b);
+	kfree(wl->cfg.hw);
+	kfree(wl->cfg.w);
+	kfree(wl->cfg.s);
+	kfree(wl->cfg.str_vals);
+}
-- 
2.24.0
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
