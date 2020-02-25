Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B9B7216BAFD
	for <lists+driverdev-devel@lfdr.de>; Tue, 25 Feb 2020 08:41:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 51F488609C;
	Tue, 25 Feb 2020 07:41:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 66OyEIuaoFDz; Tue, 25 Feb 2020 07:41:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 098B2864B8;
	Tue, 25 Feb 2020 07:41:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 50A951BF316
 for <devel@linuxdriverproject.org>; Tue, 25 Feb 2020 07:41:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 4DEEF203F0
 for <devel@linuxdriverproject.org>; Tue, 25 Feb 2020 07:41:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id p1gdlpRE2sXX for <devel@linuxdriverproject.org>;
 Tue, 25 Feb 2020 07:41:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa5.microchip.iphmx.com (esa5.microchip.iphmx.com
 [216.71.150.166])
 by silver.osuosl.org (Postfix) with ESMTPS id D89C120520
 for <devel@driverdev.osuosl.org>; Tue, 25 Feb 2020 07:41:18 +0000 (UTC)
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
IronPort-SDR: MoQbG9g+eYlA4Jtwuvf8ZGZVN7TV9LHateQqk6sIIY6LyV8LmUu24HR/iUKkF69Yd72sRbxDC3
 7ODKdOIHHXm0bIeIcjvdPgYTi7ISSOV/pLq2ZmmZFhNQM9bl87TjAc0tmAANldTPxqvTI05wPs
 ghFCRNyGHOtm8g17UQwUCVowlt0WudksRwXqsawEbRsqkFaanzFxa+NzXqPBPI74ntgfp0rH2D
 JchyQii4PfvY+/HHnUIX949O5znoTSRPhODYqitsLH8W8awZmA1CWIC+2xHpPl+r9/Vx4vpi5T
 eEc=
X-IronPort-AV: E=Sophos;i="5.70,483,1574146800"; d="scan'208";a="66616029"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 25 Feb 2020 00:41:18 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 25 Feb 2020 00:41:14 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 25 Feb 2020 00:41:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=g4SVssv7wlfDktJ+Pvw4H7Uc4wJkj4LEj6vJGsPYgfDTftqvDXrzsYkV2zlQh/pq/Q4r8gxIGYK5HoiOuAt5x2JATClDIem5cjUfVfA7d5gv+3HjpMIJG6Yuyl3IAN7URQPNVej6wJI8ZV/xedoDwXFtbNlO8ZieQkaw/Je16nCwkBK35rqLiGwalEq+I5LEltFIpeif7dhStRjPixwwgN0LvxsmZ2WFPGzCjHyZrsmRc4waQoC7vYePh+mxiKHIbIhRYAtofV7msKGfhGYaw7VetczwRQk7fjbWhhUDW17cEHwc1x5tRd724ePlIcjLc9zuE6PmjbttUt6IztKSwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yM7DSo3pfXzV/3Pstpzs1QmL/t5wphbjKbPwoFgRNKY=;
 b=b9Jm5Rp0iCCfQulEEA6y1ge7ZZF0hty/fJ1KslVzirqNbEVp5xSHtLdPi1p5pxr8ln7XtGXjQzDEmuacNYX8DplekCeEfblxgpcyl+zwskCjnUmdp/PQ/PsBoe7mN7NeJc0STxsLE1Dp/NWGVk/nFfuQ9PcuGqXDeDJmuaMFkhKoUj4hQ4VJxUuc9xx5Z5/2WkCCvkFHPg49JoMxp9TscA1r+GC97hTLYGqkF1wgvO1R34CVDbWOVTvPrWEq8vI1uG1rddNnfjgAZh24TY9KB49Czf3gaqT4U7tok56pbDhaFl7I9/Pusg8lAlqZUDWHza1aqFVvUhqcaXN5ZmgPBg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yM7DSo3pfXzV/3Pstpzs1QmL/t5wphbjKbPwoFgRNKY=;
 b=U9xtNhLcxunuaSjrZLjoe5nRW/ougJkkLcePJc9luh84kbPsXlWr4uGzRX350QQRkITTQ4TZbNSLzAeLoqTnhG3i/motjGl8qDouzTRPC2wS1CoABG7vswo/jPtKpVTO8qN8SAkqCMH8Vx4IEa18miWVcZW/qLDRkKVMQ1TTf7Q=
Received: from BN6PR11MB3985.namprd11.prod.outlook.com (2603:10b6:405:7b::14)
 by BN6PR11MB1875.namprd11.prod.outlook.com (2603:10b6:404:104::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2750.17; Tue, 25 Feb
 2020 07:41:13 +0000
Received: from BN6PR11MB3985.namprd11.prod.outlook.com
 ([fe80::ec62:e7fd:f17c:dfd4]) by BN6PR11MB3985.namprd11.prod.outlook.com
 ([fe80::ec62:e7fd:f17c:dfd4%3]) with mapi id 15.20.2750.021; Tue, 25 Feb 2020
 07:41:13 +0000
From: <Ajay.Kathat@microchip.com>
To: <linux-wireless@vger.kernel.org>
Subject: [PATCH v3 05/18] wilc1000: add wlan_cfg.c
Thread-Topic: [PATCH v3 05/18] wilc1000: add wlan_cfg.c
Thread-Index: AQHV6670bC/vcDUgEUq9QKYQv+LRzQ==
Date: Tue, 25 Feb 2020 07:41:13 +0000
Message-ID: <20200225074105.7740-6-ajay.kathat@microchip.com>
References: <20200225074105.7740-1-ajay.kathat@microchip.com>
In-Reply-To: <20200225074105.7740-1-ajay.kathat@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.17.1
x-originating-ip: [121.244.27.38]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ae00ff8c-ed15-4a73-fc52-08d7b9c616ca
x-ms-traffictypediagnostic: BN6PR11MB1875:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BN6PR11MB18751CCC0E62F865970DC97FE3ED0@BN6PR11MB1875.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:343;
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
x-microsoft-antispam-message-info: UlCQ7csEAPfvS8z2OGNJ3ZP6ucqflh/xlZQKS3bV6QHw84w9tBrAnMmZyPnmVS6fiBFWYcWUTTU/FbVGsZLVOvcA/qidXSdTsUNrWbyJH2MBJ+WNb8b3QKG98VBVuN1s9Qq6LMw+fXAqoholy/R8jbBUR42sxsWsvx81OCF+5mgw1yUlGvL0NbFmvgND9pyw1kqfwgPDRuLHXh4/XIrwfbnVey12AUsg4jjxJbLUnZGgmm8QkYW1MeglF5xddpqwFr8YgkOujD2jEd8BGgeBcLNjtTGoPVGFMqpJC96O28E9rHr5TDYbi0su/s1Ufj4nhSu80bFkBSeGxRgahpm92WRNpzUBTCvn3r+NI3nE/6YZfuILTmShJLa/MrsxFk7UN4vUmE1Y3NCbfnLpS3p8nazyoaLAxuaRh+L0su6mvbP0xW3vozb7FnBtQV72b0XT
x-ms-exchange-antispam-messagedata: ZqpZE5anIOMQ0doIhPo6jeLT6hQkOvntKXpwEpZ6VLxxQuHQ7wR1aT9im9rofbHEeD7YOW+o6TXc9BJ7fSQQACnHaxgzC2pxJK0Uwu8yeRwUlBOIRRT2Ryg/g6LTJ4CWrzyAqXQW/5uhk2mBo3J7wA==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: ae00ff8c-ed15-4a73-fc52-08d7b9c616ca
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Feb 2020 07:41:13.1280 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: c7Qs3JCMK2O85KQaJikLuwLESpXM8fSx27ayCszLT1E0lpcQMIlDYG3O+gmNe458QQGJsxiTnMbUG5i/MZZfzmQc0vjFWU0N7QZTHhu2Fhs=
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
