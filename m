Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CDE3204FD3
	for <lists+driverdev-devel@lfdr.de>; Tue, 23 Jun 2020 13:00:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id B7AF02DD8E;
	Tue, 23 Jun 2020 11:00:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kbFmYxP3Xq5Y; Tue, 23 Jun 2020 11:00:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D78212DB1B;
	Tue, 23 Jun 2020 11:00:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 606711BF284
 for <devel@linuxdriverproject.org>; Tue, 23 Jun 2020 11:00:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 522CD8940D
 for <devel@linuxdriverproject.org>; Tue, 23 Jun 2020 11:00:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fAjw7PKw8dVr for <devel@linuxdriverproject.org>;
 Tue, 23 Jun 2020 11:00:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa5.microchip.iphmx.com (esa5.microchip.iphmx.com
 [216.71.150.166])
 by hemlock.osuosl.org (Postfix) with ESMTPS id CEFDB88CA2
 for <devel@driverdev.osuosl.org>; Tue, 23 Jun 2020 11:00:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1592910011; x=1624446011;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=EJH1m/MDyyRtAUNe9J13EWdbkoEXDMVvI2d5v7dcXno=;
 b=EGcESDUp4cP0yjdX4m3P/MttTdxPAmYvzlnG7h9Wdb2tArLvJubImRiu
 DiXUV6rzWiXc9QDKo9mRQiV0qHo8rf/4Xxu2/hBffBCDdriMUVkZX68RC
 5sLR8Zk0Oy5szlzPoiGGjgSoRENoeBqpAxOlaeKEMo0lvi18EWOomPL8p
 ku1Qnpfl/8lhgB/u0080BV6T9k/O0JZYO6bV+vbr3r0G2crw9zw8r3i98
 fp+BwCxiyI5+XOql84eJiTdcPaon3oElm0SoI2NS3ChDySggmUGMY9Z00
 55CKdL9oaciLMbZcfAFEPNo8nzXjtdCVGPROYzrQNrM/yC00IxBc9dsJS w==;
IronPort-SDR: vGKUebQf1ChCF0xbAT819Z++oG9XpgveqI/JlGUJUcODmyAx4rgu1YxotQ3c3FeghJ7ntqAF4T
 FDJEEDO7xmZlwjCIHVtLjGwXN7I1FEYCSR/x9iIuLXfxVS6wP44vz44jCDYoEut/vab9loSd7S
 iES816NMmPqBNzt/6XYrBlWnpst4j+gJ7y2Of5qb0UQqZj68onHX8SCqUmN85oQkdBcK9FMVNh
 z9ZYxnKEU+5uWkt8DeKX/XoxkrQ2Zr6Q0IZxp6IUKkmEHN6cr3xTlAYvT27mmXsFD4tONL4wrq
 xMI=
X-IronPort-AV: E=Sophos;i="5.75,271,1589266800"; d="scan'208";a="80543434"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 23 Jun 2020 04:00:10 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Tue, 23 Jun 2020 03:59:59 -0700
Received: from NAM02-CY1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1979.3
 via Frontend Transport; Tue, 23 Jun 2020 04:00:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HLrKd6fp7Ze0c22+/IAiIycm4BE2WvhmijlUMu4BH/qHl64/Me2UpXbQQBYb9JuwNnOY9sLBswXShbSMaad9QDJHB7nT/5vNbTlHoTyyPw7lXZi0qBZTdXk5KO/bEeYGXhKunJkSFWs+mNj0jQ8irycfmAf6xaLBVm5eg20JZC1PRmIHHj8UJfnvEz6g6gOS3GSY4H568VEaGubkK6GSeUk797i+gfFbn0e2FX1GRDmg/N7N5aN50iEJPqjMsBIwSUcLtQY4n3GB9Z/z+g33ChezCQM5dUoLqFLPfT1nQiE4pPVXu9MnwfzRCPClBPijKlnebqET+79zAEcxJI/L5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yM7DSo3pfXzV/3Pstpzs1QmL/t5wphbjKbPwoFgRNKY=;
 b=At3rWVQG+p9XavLFGDPCTw872bo3tqF6WUFjD0dP/q7W6kzaTETeahroeh2YDSYMNGvlv+jdaK+1G//4fsjZ2ycyUL6poQLPqvHm8r9RmHqArw9aEYZbEJaVzU0cnOsZYnc7Iwtb4xZN8FR81KEjo8AyLj4EFTERW5xcT8FK+fwUB1AEVhffZR0OeJ9U5Q6t+N5MgKgAcx8Umz/nZq5i1QhiPQr56LerUp+6iKzSgIrS16FsL8oEKShW2CLJri2QIPacYR78SrznsOMndRNflKIPmTc86r6s2q5AM/kSbxe3WDC/1R9WubpNOc1a0eYLrxDVF4W6XZD1OhzdsVt0qg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yM7DSo3pfXzV/3Pstpzs1QmL/t5wphbjKbPwoFgRNKY=;
 b=gHuR3SObzG1HaPg19OixUiOdtww3Dv6t6TfOumokNKRuMIt7ujXKjdZ8icx8LthGzQ8nmUY6xe570FFVEY9kr093NciiEIK+Dv8u/3S+5Tp4t8CfMusHmlGs+sN8+z2RHV+cfwGIhaop2wSo6W2MFCLS42XG3EG4VTv88NEqeU0=
Received: from MN2PR11MB4030.namprd11.prod.outlook.com (2603:10b6:208:156::32)
 by MN2PR11MB3551.namprd11.prod.outlook.com (2603:10b6:208:ea::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3109.22; Tue, 23 Jun
 2020 11:00:08 +0000
Received: from MN2PR11MB4030.namprd11.prod.outlook.com
 ([fe80::3874:6ace:6aec:deed]) by MN2PR11MB4030.namprd11.prod.outlook.com
 ([fe80::3874:6ace:6aec:deed%7]) with mapi id 15.20.3109.027; Tue, 23 Jun 2020
 11:00:08 +0000
From: <Ajay.Kathat@microchip.com>
To: <linux-wireless@vger.kernel.org>
Subject: [PATCH v7 05/17] wilc1000: add wlan_cfg.c
Thread-Topic: [PATCH v7 05/17] wilc1000: add wlan_cfg.c
Thread-Index: AQHWSU10s0pOCPEkn0yjaht5LNvbEQ==
Date: Tue, 23 Jun 2020 11:00:07 +0000
Message-ID: <20200623110000.31559-6-ajay.kathat@microchip.com>
References: <20200623110000.31559-1-ajay.kathat@microchip.com>
In-Reply-To: <20200623110000.31559-1-ajay.kathat@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.17.1
authentication-results: vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=none action=none
 header.from=microchip.com;
x-originating-ip: [49.207.200.183]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: eb7ff1eb-4a7a-4a88-d319-08d8176497f8
x-ms-traffictypediagnostic: MN2PR11MB3551:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB3551BA0872CBB6D98649F3CAE3940@MN2PR11MB3551.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:343;
x-forefront-prvs: 04433051BF
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 6B2NGCltlumPMjXoKXLe/VVR4i+1Ebi5eqSKnjvUWHhTpfoDmS0u0zb8I0xOu1tzvzxm/dL97Q4AcGF0k8mSgRBq62bWJIXEgDJ5OWt58MYpmWbMPADx4vHA4aMVG1IG/cDrL2nIdZlW4Idrd0qm2ZilAxG3W3+T56Z8m7pmPOiOMhVhJXkyWCvaCIVpCvA4TCnL13zz2z72gyfFJN/3kx+29XVL1LnCRxlUEDHHQy6k1cgvO2om50olgE8UZqx4gJrq2edEJU66lVtpC+TTPG2RbWZL7kLsfrXAf4S0MIKIFqKgnnST5LGD9LI3st+piWAFgP4yQoMQdcGPu8iCEA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB4030.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(366004)(136003)(346002)(396003)(376002)(39860400002)(8676002)(36756003)(2906002)(186003)(6506007)(86362001)(2616005)(4326008)(107886003)(26005)(6486002)(6916009)(5660300002)(55236004)(1076003)(478600001)(66446008)(66476007)(66556008)(64756008)(91956017)(76116006)(66946007)(6512007)(54906003)(316002)(71200400001)(8936002);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: o/umFFA6gO/blXyfDnTCr/XNFuXvitzr+nnuEHY5O3vFQCI1C4MXJOKos6d1hDesotEJ3P+OOmXhBAS/0SacMwIIN9NTF8ef0AGuJySguS0xC4/n6ziAlg16lY5MIexB/kQs8XE7rgCA5qLtiM+o2ckm2IRaft12/vSnh/Jp+JF4Aa0rt+Xsjdusa1OtKjozMQ7jhRHz+knIzO/WwBwvsgkkRG1/FJHUJM27+wddFxPMrvdrbHcGUDJ+mzgtoWM8rRyhQPsaewBFEKX0dhmzKKuI3JMvzbnPF7HMo+s9n0TkZ1kQ2dlonJC5dJmaBcSopOwlVxP7o9ETTqt0Sgp+RLlJ7nxkavukoYhwbrYF42PCn6LE/ZZ6NMBPxlJZ0jTOIv6XbhDCj8JmhiwKlhYBvvwZIybMK/EzEENJIUkzUzUJi22k5a1TM1Tis3s2snfyz5uLutcd92+JwgcbListrDT+KDmMDM47w1wvoRreoTBZBZivwgMzcVa+au3m4lL/
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: eb7ff1eb-4a7a-4a88-d319-08d8176497f8
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jun 2020 11:00:07.7575 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0iK7gzu+hbpGVVDVdMin9+BrbSMlFaNE5//OKWjNRlNaqo0azkeMaRJRtMs9oKyIH2KDU9U5e2uQkZG0+5Lqdhzk/FDozin7rLQND39Q5BU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3551
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
Cc: devel@driverdev.osuosl.org, Ajay.Kathat@microchip.com,
 Venkateswara.Kaja@microchip.com, gregkh@linuxfoundation.org,
 Nicolas.Ferre@microchip.com, johannes@sipsolutions.net,
 Sripad.Balwadgi@microchip.com
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
