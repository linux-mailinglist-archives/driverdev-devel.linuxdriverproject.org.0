Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F3F0195137
	for <lists+driverdev-devel@lfdr.de>; Fri, 27 Mar 2020 07:33:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 552B48751D;
	Fri, 27 Mar 2020 06:33:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VyJDd0VC4z0n; Fri, 27 Mar 2020 06:33:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7D44387493;
	Fri, 27 Mar 2020 06:33:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D95E71BF3EB
 for <devel@linuxdriverproject.org>; Fri, 27 Mar 2020 06:33:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 9D3EA26295
 for <devel@linuxdriverproject.org>; Fri, 27 Mar 2020 06:33:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VAa9ONS-XEbS for <devel@linuxdriverproject.org>;
 Fri, 27 Mar 2020 06:33:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa6.microchip.iphmx.com (esa6.microchip.iphmx.com
 [216.71.154.253])
 by silver.osuosl.org (Postfix) with ESMTPS id AB33D26319
 for <devel@driverdev.osuosl.org>; Fri, 27 Mar 2020 06:33:13 +0000 (UTC)
IronPort-SDR: CtGqqJ4P6TqJntDvaLr74r+01WNn/drKGfnairDiUsZ1D4RrSdgzilm1WtxixkMlBDqycNhCcb
 hEbXcJv0qDL7sVpgLZEAJ3XUSKh3G5ONC4+8zQ49mI2EqxjG2tgmCukgF4SdwwkcKl2XpJ+fvB
 4k+DA9rVcPc2IkNKfnj+0O8qCflrLibzdtBRFKrs+etuLuhcIZvWQ1W/e6T3Yy8R8mvUiIMr9M
 8+gkKe3muEDfcQf/WRuHpP/LDQx3mssRIqVec5lJaKJtMFijfpDbhMRnxlZ5mXxL3BohwQaXwc
 zek=
X-IronPort-AV: E=Sophos;i="5.72,311,1580799600"; 
   d="scan'208";a="7177545"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 26 Mar 2020 23:33:13 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 26 Mar 2020 23:33:12 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Thu, 26 Mar 2020 23:33:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XfHB6VQGwUutmR/RmBtYOEvkCpz65WQIJvGnS+4HxJv3APVs5B9/ia8C/S6fHNW89Uuh1vzA1qyprgJJrmc4UPvhRJ8GtbDNtevQEDaNDIDczCqtb7WsWT8xLKgoO9ZNM/o14gfI67NEVMkq9JJDPisBwVwfr2G+JuRic0blMiJv/j7Z4CM9FGURcO2jVCpgLIXV6zuEGmAKhnr9YworY1cPN/VTTP2VBrUhKxvLYHG3eVYpbtJIUj6YdLY9qlapemvhjFY0dNV0Oc9vcFWbbWKYGniaz5u9wYrmSumoJy9+TojmPt26zrKAaeQnRko+lor3TqnRczzXODtsEUgAWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yM7DSo3pfXzV/3Pstpzs1QmL/t5wphbjKbPwoFgRNKY=;
 b=h215S+5GxbP9Z5mEuDk4U3jj7oU1ye66DDEC7YcBlxR6dZMetD8fjhr9BAUkh2gAzwV3udO9p4gFRuFQFyD5uocEnCCsJvDmrP+jTZMgZA2hau9nlVVstSHzNlDdMcv9ORjo+D8tRD2fpt+NAwtxtHt76z05oFbOyBSDZ1nbf2WuLI+BbcJFsilSu3ZMa4IRLvpNxXoKyhIJ5uc37/3SOIcNlb7b/nUmg/9qHmNvQUq/vOPQXa/vuIynoN1RMR0XfYMmFIQYw9V9cghfHx4WGXzeErrDqnjSa3GW1EHU6I/vQAI4RyUqaM1c6Sp8d0r6EWhTKfHmfsZnO4YP67gmTw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yM7DSo3pfXzV/3Pstpzs1QmL/t5wphbjKbPwoFgRNKY=;
 b=HJ2jCuvtSKC7k+vmTtNGiexOo1rPHxmsgXwhxLr14wAabmcHA7clDD2vOXBV1k5sOb1sIAQJFr5EFIjgcdGUkNUmstgWo355fXL/fOwhmaQ5iGkfRqUkt/MGS8fqXYmBq1AVpQvpHF+6D0lKHdUw2LZ/sh4DTND3DmWVSraxrsI=
Received: from BYAPR11MB3125.namprd11.prod.outlook.com (2603:10b6:a03:8e::32)
 by BYAPR11MB3397.namprd11.prod.outlook.com (2603:10b6:a03:1b::29)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2856.19; Fri, 27 Mar
 2020 06:33:11 +0000
Received: from BYAPR11MB3125.namprd11.prod.outlook.com
 ([fe80::c27:87cf:ca4:d86e]) by BYAPR11MB3125.namprd11.prod.outlook.com
 ([fe80::c27:87cf:ca4:d86e%4]) with mapi id 15.20.2835.021; Fri, 27 Mar 2020
 06:33:11 +0000
From: <Ajay.Kathat@microchip.com>
To: <linux-wireless@vger.kernel.org>
Subject: [PATCH v6 05/17] wilc1000: add wlan_cfg.c
Thread-Topic: [PATCH v6 05/17] wilc1000: add wlan_cfg.c
Thread-Index: AQHWBAGWnWipWlaZWkqrZnR9Oeq/og==
Date: Fri, 27 Mar 2020 06:33:11 +0000
Message-ID: <20200327063302.20511-6-ajay.kathat@microchip.com>
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
x-ms-office365-filtering-correlation-id: 4c6093f8-4ce9-4d44-5c62-08d7d218b8d3
x-ms-traffictypediagnostic: BYAPR11MB3397:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR11MB339752A43A3A920E8A9BAF1FE3CC0@BYAPR11MB3397.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:343;
x-forefront-prvs: 0355F3A3AE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39850400004)(136003)(376002)(346002)(366004)(396003)(81156014)(26005)(8676002)(81166006)(76116006)(66446008)(66556008)(66476007)(36756003)(6512007)(66946007)(6486002)(64756008)(91956017)(2906002)(6506007)(4326008)(71200400001)(2616005)(107886003)(186003)(86362001)(5660300002)(478600001)(1076003)(6916009)(316002)(8936002)(54906003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR11MB3397;
 H:BYAPR11MB3125.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: EvWpXsX6LGcatHs/ePWaAvsr+D9mBGfKoNGlGepMqfJ1ur+zWOAwOEVFaq98Y0/Cm/i1Bazf+XYyKLXjWpmQf7URIOdwBEVxX0YtCLDnlr08g6j974Ni6lWiXPkfvzA4zS1mGZ5Z+yayyxFv+6KfMTqjGsSFvGnZjZOY+JM3GsqCTGecwXNtF2evFrRnv4iDn9GSxQe3vZ5KihngJHb2hXrhjlBXWffXMgVpUKJjMlqdK/PyuR3S0LaBUZvA3p5iWl2msTRGnuWYoFenkaiPjpCJS5+UWlINd1L8gO/6HdC1gwB7kXkl/VFUNRcb8VVvsap0RpYJgRSzn+w1inwEI7ReC2fd2WH3pJDmD+vIpFS2yQOM0gDBSVGFzFEx6F5gyLbRyz+Sov5GfUOPxbHHWJ88bjXY3C5HFMvTwTF/j9nbDhi2+bRC38khCX3WKuGE
x-ms-exchange-antispam-messagedata: 6SiMe3bKo498C/aKfVyI5V1m6ZiE6sBvJyPK1m5QWFuHJ3WSm3DsQ5PWo0nY0jeiVBjzhlDeyElVcCjv/38rBKRKXXN4+V2KrIwrTWJuNR7EG5phckcOezbSvpXlYjcv7zfmjUxXVDEq8BbTdR76cw==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 4c6093f8-4ce9-4d44-5c62-08d7d218b8d3
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Mar 2020 06:33:11.6692 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uK+gHGnROf6TptR5HAs092kK/Gziqj5iwbpliziIlLH53hxBUqERVCJPITfcojR+rRBlKFbt98XhM0pKRpnAkHq6WismWfjwAI1hdq0/biI=
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
