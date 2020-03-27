Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 790A619514C
	for <lists+driverdev-devel@lfdr.de>; Fri, 27 Mar 2020 07:33:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 178BB886A5;
	Fri, 27 Mar 2020 06:33:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sVdsEJbPBKyH; Fri, 27 Mar 2020 06:33:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 47CBF88B01;
	Fri, 27 Mar 2020 06:33:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7B1751BF3EB
 for <devel@linuxdriverproject.org>; Fri, 27 Mar 2020 06:33:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 76A4488AF2
 for <devel@linuxdriverproject.org>; Fri, 27 Mar 2020 06:33:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AdkU6LYz+jNJ for <devel@linuxdriverproject.org>;
 Fri, 27 Mar 2020 06:33:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa3.microchip.iphmx.com (esa3.microchip.iphmx.com
 [68.232.153.233])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 831B68830E
 for <devel@driverdev.osuosl.org>; Fri, 27 Mar 2020 06:33:13 +0000 (UTC)
IronPort-SDR: d+eAu6AA10eBj1HVkebd/EODSmdYlMnS/O8XOqE+Ss1eyXZb98bLHrsCEy+Ti/FUP6bjqHweNB
 uDzcuVjAFfLjwNkj78Gsdef5htZOA/wCYrws95wjYiYZFOOfzV21rCTegT9cax5u7FZllCZbgI
 7bapiRI0gCp0VjezDWQg8+vNuW1YEnoVeGrXiE4TPy1TFqZMKVWq0FnvmH08EtqbII4ynNtuwV
 EDq5HmsL5GCVQdUHbIBwJtEuTnYsX3CXAvMGWLJB+zQaWrXC0eYUHlLj0knIcB69dPOMVV7FdT
 uBY=
X-IronPort-AV: E=Sophos;i="5.72,311,1580799600"; d="scan'208";a="71449386"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 26 Mar 2020 23:33:12 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 26 Mar 2020 23:33:11 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 26 Mar 2020 23:33:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iGbcrwsV85CnH6vDBfL+OLduB6kaJtSz4oZw+/ufto+shH/u+8oizxhvV+646bxDKN0VK1wp6v8FWkDelFDcYD0qx6Oa4pgwgJaGdtuuqhdhgWI5DvTb08nry4bgeHaloLUswTS/gAyG3kmi4/6Z4Lv6dn3d0x9kgGGjf3oNMRlkm0c+j/uXwgrBJImL+gzC1F4fDFo+2dcYn7ttoDEocHk08cqvTtKxTkHDfWSRUChNzw5ZlTxhzEp6Jq6+IpOEVjnLJrupuKvd4atP4nRvqLTb5mbBeN6d8oBvt4nwhlZl82vVADgipvtMXSV14ElGPKVT39yaafsh5rXTMQHShA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=R2hyFijpSxD8B1vp9pfBnZgARrhmzsNY8CIUqsPqbr4=;
 b=k8S7Fiqxgz2efQXYhZYrVq+pdhmS5xIMguxhUF86Kk/VfBgBSlAnustt/bn1+3cedH7OB5UNmse0raJ1xk/Ap/Bazna4A2AghTuAD2qhGVEBozgXxn1ORC/sn5qObYsDFUFRVSisHKwiRgPwA8NUCsSNZQm8LJWY2IX1UQqcBm4Snw0hu+AS3TjQW/LzaiInNySjNvPqmfW+fiBvp5GgZ9I20g0NZpcvidjfnPoAp4xnLDfTw6zkZNMwORh50X6Zd57KgPZ37hrScz4JBZbMgF5PKCAjyqwymN6JaBSqsXPKGX4ufIBE+n/enchLV+QRDHJE5uT/SL210vpr9eJtvA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=R2hyFijpSxD8B1vp9pfBnZgARrhmzsNY8CIUqsPqbr4=;
 b=T07G4KL1mmWUsQdjPnQx08bbuJrBupXo8zlYc8qOAsYh24/5m1RqyRyeFMs/rdM7S3bo95K9Fi3jjZU4/wP5hhxdEYnNGvApysjqRFuS4uEmrSLjMdQn7q9mbcCwdPuXYSMPeDm7ZRYcmGgQem7HdTm9wmegzH4OjGUzrBRgAN8=
Received: from BYAPR11MB3125.namprd11.prod.outlook.com (2603:10b6:a03:8e::32)
 by BYAPR11MB3397.namprd11.prod.outlook.com (2603:10b6:a03:1b::29)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2856.19; Fri, 27 Mar
 2020 06:33:10 +0000
Received: from BYAPR11MB3125.namprd11.prod.outlook.com
 ([fe80::c27:87cf:ca4:d86e]) by BYAPR11MB3125.namprd11.prod.outlook.com
 ([fe80::c27:87cf:ca4:d86e%4]) with mapi id 15.20.2835.021; Fri, 27 Mar 2020
 06:33:10 +0000
From: <Ajay.Kathat@microchip.com>
To: <linux-wireless@vger.kernel.org>
Subject: [PATCH v6 03/17] wilc1000: add wlan_if.h
Thread-Topic: [PATCH v6 03/17] wilc1000: add wlan_if.h
Thread-Index: AQHWBAGVnP8yt2fVR0GL2uUlWTFnOQ==
Date: Fri, 27 Mar 2020 06:33:10 +0000
Message-ID: <20200327063302.20511-4-ajay.kathat@microchip.com>
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
x-ms-office365-filtering-correlation-id: 191e1c0c-1675-48d5-3799-08d7d218b801
x-ms-traffictypediagnostic: BYAPR11MB3397:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR11MB339789D4A0BD0B5E77186426E3CC0@BYAPR11MB3397.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:5797;
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
x-microsoft-antispam-message-info: PDiufU64ue0ZHkbtDbEOIpgYZUVq4rXvZZXMpxotja7ZYj3u7u1gsVtcjSCEQonVq7Q2SIgmOmFu22Df8fqmbKg80C+7LyO/nkPWz0iBHIaUKRPUmNrZ0MySXe8nTsFO8xt4BwtZqr3F9VjJRyqU/ES/CZo2B4vgSWAUl9VWHpl6igDh524uddO9CsYtTwdZehdA5phln7hgVQxa1ejwwaL+RwLP+BkzV0RQnCNlz8HEAK9ALmdly4jrRyOioDl0P+0zMbn1iOGsngzVcf0J6hu59nHpUP6gzwHrNiioU+ItU92nFdlEwd8UyoanFefn7icOyCYNBl6TWfvwAtdSDFbXuCEt92g8hDonq7lcT3SSlEQ8Z8NZ4+hIsWTjvmCEm7Aa8dxFtNrZqRDh1fFEA0HuKBh2DU+O7syMhA0iSoc5brU28qw6IyNvrkAHvdlJ
x-ms-exchange-antispam-messagedata: KozvShGLKi4H06BMKpsSOBVmMC38RBQFyP93BYYk++KwxP8LLh072p2DlxcqBNUaZ0TOqg25D42Nwpv8B7JTSD6JB0gLNvT3vZt/Nvw7OOyusD6yndyGEqiL1x39YBabybf0cJYnChSAyIgOZ/XGfA==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 191e1c0c-1675-48d5-3799-08d7d218b801
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Mar 2020 06:33:10.2771 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HkOB/pKgo7ORJ5RkCpgA/8HhHz6NQzOFgUDj3x7udourG2jgVMJekGQe/C9plrA70HKxKKBU4IXCDfBm9ikdyCuZIYWfH4CCsI2R8eJDz88=
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

Moved 'drivers/staging/wilc1000/wlan_if.h' to
'drivers/net/wireless/microchip/wilc1000/wlan_if.h'.

Signed-off-by: Ajay Singh <ajay.kathat@microchip.com>
---
 .../net/wireless/microchip/wilc1000/wlan_if.h | 803 ++++++++++++++++++
 1 file changed, 803 insertions(+)
 create mode 100644 drivers/net/wireless/microchip/wilc1000/wlan_if.h

diff --git a/drivers/net/wireless/microchip/wilc1000/wlan_if.h b/drivers/net/wireless/microchip/wilc1000/wlan_if.h
new file mode 100644
index 000000000000..f85fd575136d
--- /dev/null
+++ b/drivers/net/wireless/microchip/wilc1000/wlan_if.h
@@ -0,0 +1,803 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2012 - 2018 Microchip Technology Inc., and its subsidiaries.
+ * All rights reserved.
+ */
+
+#ifndef WILC_WLAN_IF_H
+#define WILC_WLAN_IF_H
+
+#include <linux/netdevice.h>
+#include "fw.h"
+
+/********************************************
+ *
+ *      Wlan Configuration ID
+ *
+ ********************************************/
+
+enum bss_types {
+	WILC_FW_BSS_TYPE_INFRA = 0,
+	WILC_FW_BSS_TYPE_INDEPENDENT,
+	WILC_FW_BSS_TYPE_AP,
+};
+
+enum {
+	WILC_FW_OPER_MODE_B_ONLY = 0,	 /* 1, 2 M, otherwise 5, 11 M */
+	WILC_FW_OPER_MODE_G_ONLY,	 /* 6,12,24 otherwise 9,18,36,48,54 */
+	WILC_FW_OPER_MODE_G_MIXED_11B_1, /* 1,2,5.5,11 otherwise all on */
+	WILC_FW_OPER_MODE_G_MIXED_11B_2, /* 1,2,5,11,6,12,24 otherwise all on */
+};
+
+enum {
+	WILC_FW_PREAMBLE_SHORT = 0,	/* Short Preamble */
+	WILC_FW_PREAMBLE_LONG = 1,	/* Long Preamble */
+	WILC_FW_PREAMBLE_AUTO = 2,	/* Auto Preamble Selection */
+};
+
+enum {
+	WILC_FW_PASSIVE_SCAN = 0,
+	WILC_FW_ACTIVE_SCAN = 1,
+};
+
+enum {
+	WILC_FW_NO_POWERSAVE = 0,
+	WILC_FW_MIN_FAST_PS = 1,
+	WILC_FW_MAX_FAST_PS = 2,
+	WILC_FW_MIN_PSPOLL_PS = 3,
+	WILC_FW_MAX_PSPOLL_PS = 4
+};
+
+enum chip_ps_states {
+	WILC_CHIP_WAKEDUP = 0,
+	WILC_CHIP_SLEEPING_AUTO = 1,
+	WILC_CHIP_SLEEPING_MANUAL = 2
+};
+
+enum bus_acquire {
+	WILC_BUS_ACQUIRE_ONLY = 0,
+	WILC_BUS_ACQUIRE_AND_WAKEUP = 1,
+};
+
+enum bus_release {
+	WILC_BUS_RELEASE_ONLY = 0,
+	WILC_BUS_RELEASE_ALLOW_SLEEP = 1,
+};
+
+enum {
+	WILC_FW_NO_ENCRYPT = 0,
+	WILC_FW_ENCRYPT_ENABLED = BIT(0),
+	WILC_FW_WEP = BIT(1),
+	WILC_FW_WEP_EXTENDED = BIT(2),
+	WILC_FW_WPA = BIT(3),
+	WILC_FW_WPA2 = BIT(4),
+	WILC_FW_AES = BIT(5),
+	WILC_FW_TKIP = BIT(6)
+};
+
+enum {
+	WILC_FW_SEC_NO = WILC_FW_NO_ENCRYPT,
+	WILC_FW_SEC_WEP = WILC_FW_WEP | WILC_FW_ENCRYPT_ENABLED,
+	WILC_FW_SEC_WEP_EXTENDED = WILC_FW_WEP_EXTENDED | WILC_FW_SEC_WEP,
+	WILC_FW_SEC_WPA = WILC_FW_WPA | WILC_FW_ENCRYPT_ENABLED,
+	WILC_FW_SEC_WPA_AES = WILC_FW_AES | WILC_FW_SEC_WPA,
+	WILC_FW_SEC_WPA_TKIP = WILC_FW_TKIP | WILC_FW_SEC_WPA,
+	WILC_FW_SEC_WPA2 = WILC_FW_WPA2 | WILC_FW_ENCRYPT_ENABLED,
+	WILC_FW_SEC_WPA2_AES = WILC_FW_AES | WILC_FW_SEC_WPA2,
+	WILC_FW_SEC_WPA2_TKIP = WILC_FW_TKIP | WILC_FW_SEC_WPA2
+};
+
+enum authtype {
+	WILC_FW_AUTH_OPEN_SYSTEM = 1,
+	WILC_FW_AUTH_SHARED_KEY = 2,
+	WILC_FW_AUTH_ANY = 3,
+	WILC_FW_AUTH_IEEE8021 = 5
+};
+
+enum site_survey {
+	WILC_FW_SITE_SURVEY_1CH = 0,
+	WILC_FW_SITE_SURVEY_ALL_CH = 1,
+	WILC_FW_SITE_SURVEY_OFF = 2
+};
+
+enum {
+	WILC_FW_ACK_POLICY_NORMAL = 0,
+	WILC_FW_ACK_NO_POLICY,
+};
+
+enum {
+	WILC_FW_REKEY_POLICY_DISABLE = 1,
+	WILC_FW_REKEY_POLICY_TIME_BASE,
+	WILC_FW_REKEY_POLICY_PKT_BASE,
+	WILC_FW_REKEY_POLICY_TIME_PKT_BASE
+};
+
+enum {
+	WILC_FW_FILTER_NO = 0x00,
+	WILC_FW_FILTER_AP_ONLY = 0x01,
+	WILC_FW_FILTER_STA_ONLY = 0x02
+};
+
+enum {
+	WILC_FW_11N_PROT_AUTO = 0,	/* Auto */
+	WILC_FW_11N_NO_PROT,		/* Do not use any protection */
+	WILC_FW_11N_PROT_ERP,		/* Protect all ERP frame exchanges */
+	WILC_FW_11N_PROT_HT,		/* Protect all HT frame exchanges  */
+	WILC_FW_11N_PROT_GF		/* Protect all GF frame exchanges  */
+};
+
+enum {
+	WILC_FW_ERP_PROT_SELF_CTS,
+	WILC_FW_ERP_PROT_RTS_CTS,
+};
+
+enum {
+	WILC_FW_11N_OP_MODE_HT_MIXED = 1,
+	WILC_FW_11N_OP_MODE_HT_ONLY_20MHZ,
+	WILC_FW_11N_OP_MODE_HT_ONLY_20_40MHZ,
+};
+
+enum {
+	WILC_FW_OBBS_NONHT_NO_DETECT = 0,
+	WILC_FW_OBBS_NONHT_DETECT_ONLY = 1,
+	WILC_FW_OBBS_NONHT_DETECT_PROTECT = 2,
+	WILC_FW_OBBS_NONHT_DETECT_PROTECT_REPORT = 3,
+};
+
+enum {
+	WILC_FW_HT_PROT_RTS_CTS_NONHT = 0,  /* RTS-CTS at non-HT rate */
+	WILC_FW_HT_PROT_FIRST_FRAME_NONHT,  /* First frame at non-HT rate */
+	WILC_FW_HT_PROT_LSIG_TXOP,	    /* LSIG TXOP Protection */
+	WILC_FW_HT_PROT_FIRST_FRAME_MIXED,  /* First frame at Mixed format */
+};
+
+enum {
+	WILC_FW_SMPS_MODE_STATIC = 1,
+	WILC_FW_SMPS_MODE_DYNAMIC = 2,
+	WILC_FW_SMPS_MODE_MIMO = 3,	/* power save disable */
+};
+
+enum {
+	WILC_FW_TX_RATE_AUTO = 0,
+	WILC_FW_TX_RATE_MBPS_1 = 1,
+	WILC_FW_TX_RATE_MBPS_2 = 2,
+	WILC_FW_TX_RATE_MBPS_5_5 = 5,
+	WILC_FW_TX_RATE_MBPS_11 = 11,
+	WILC_FW_TX_RATE_MBPS_6 = 6,
+	WILC_FW_TX_RATE_MBPS_9 = 9,
+	WILC_FW_TX_RATE_MBPS_12 = 12,
+	WILC_FW_TX_RATE_MBPS_18 = 18,
+	WILC_FW_TX_RATE_MBPS_24 = 24,
+	WILC_FW_TX_RATE_MBPS_36 = 36,
+	WILC_FW_TX_RATE_MBPS_48 = 48,
+	WILC_FW_TX_RATE_MBPS_54 = 54
+};
+
+enum {
+	WILC_FW_DEFAULT_SCAN = 0,
+	WILC_FW_USER_SCAN = BIT(0),
+	WILC_FW_OBSS_PERIODIC_SCAN = BIT(1),
+	WILC_FW_OBSS_ONETIME_SCAN = BIT(2)
+};
+
+enum {
+	WILC_FW_ACTION_FRM_IDX = 0,
+	WILC_FW_PROBE_REQ_IDX = 1
+};
+
+enum wid_type {
+	WID_CHAR		= 0,
+	WID_SHORT		= 1,
+	WID_INT			= 2,
+	WID_STR			= 3,
+	WID_BIN_DATA		= 4,
+	WID_BIN			= 5,
+};
+
+struct wid {
+	u16 id;
+	enum wid_type type;
+	s32 size;
+	s8 *val;
+};
+
+enum {
+	WID_NIL				= 0xffff,
+
+	/*
+	 *  BSS Type
+	 *  -----------------------------------------------------------
+	 *  Configuration : Infrastructure   Independent   Access Point
+	 *  Values to set :         0               1            2
+	 *  -----------------------------------------------------------
+	 */
+	WID_BSS_TYPE			= 0x0000,
+
+	/*
+	 *  Transmit Rate
+	 *  -----------------------------------------------------------
+	 *  Configuration : 1  2  5.5  11  6  9  12  18  24  36  48  54
+	 *  Values to set : 1  2    5  11  6  9  12  18  24  36  48  54
+	 *  -----------------------------------------------------------
+	 */
+	WID_CURRENT_TX_RATE		= 0x0001,
+
+	/*
+	 *  Channel
+	 *  -----------------------------------------------------------
+	 *  Configuration(g) : 1  2  3  4  5  6  7  8  9 10 11 12 13 14
+	 *  Values to set    : 1  2  3  4  5  6  7  8  9 10 11 12 13 14
+	 *  -----------------------------------------------------------
+	 */
+	WID_CURRENT_CHANNEL		= 0x0002,
+
+	/*
+	 *  Preamble
+	 *  -----------------------------------------------------------
+	 *  Configuration :    short    long      Auto
+	 *  Values to set :       0       1         2
+	 *  -----------------------------------------------------------
+	 */
+	WID_PREAMBLE			= 0x0003,
+
+	/*
+	 * 11g operating mode (ignored if 11g not present)
+	 *  -----------------------------------------------------------
+	 *  Configuration :   HighPerf  Compat(RSet #1) Compat(RSet #2)
+	 *  Values to set :          1               2               3
+	 *  -----------------------------------------------------------
+	 */
+	WID_11G_OPERATING_MODE		= 0x0004,
+
+	/*
+	 *  Mac status (response only)
+	 *  -----------------------------------------------------------
+	 *  Configuration :   disconnect  connect
+	 *  Values to get :          0       1
+	 *  -----------------------------------------------------------
+	 */
+	WID_STATUS			= 0x0005,
+
+	/*
+	 *  Scan type
+	 *  -----------------------------------------------------------
+	 *  Configuration :   Passive Scanning   Active Scanning
+	 *  Values to set :                  0                 1
+	 *  -----------------------------------------------------------
+	 */
+	WID_SCAN_TYPE			= 0x0007,
+
+	/*
+	 *  Key Id (WEP default key Id)
+	 *  -----------------------------------------------------------
+	 *  Configuration :   Any value between 0 to 3
+	 *  Values to set :   Same value. Default is 0
+	 *  -----------------------------------------------------------
+	 */
+	WID_KEY_ID			= 0x0009,
+
+	/*
+	 *  QoS Enable
+	 *  -----------------------------------------------------------
+	 *  Configuration :   QoS Disable   WMM Enable
+	 *  Values to set :   0             1
+	 *  -----------------------------------------------------------
+	 */
+	WID_QOS_ENABLE			= 0x000A,
+
+	/*
+	 *  Power Management
+	 *  -----------------------------------------------------------
+	 *  Configuration : NO_POWERSAVE MIN_POWERSAVE MAX_POWERSAVE
+	 *  Values to set : 0            1             2
+	 *  -----------------------------------------------------------
+	 */
+	WID_POWER_MANAGEMENT		= 0x000B,
+
+	/*
+	 *  WEP/802 11I Configuration
+	 *  -----------------------------------------------------------
+	 *  Configuration:Disable WP40 WP104 WPA-AES WPA-TKIP RSN-AES RSN-TKIP
+	 *  Values (0x)  :   00     03   07     29       49       31      51
+	 *  Configuration:WPA-AES+TKIP RSN-AES+TKIP
+	 *  Values (0x)  :      69        71
+	 *  -----------------------------------------------------------
+	 */
+	WID_11I_MODE			= 0x000C,
+
+	/*
+	 *  WEP Configuration: Used in BSS STA mode only when WEP is enabled
+	 *  -----------------------------------------------------------
+	 *  Configuration : Open System Shared Key Any Type | 802.1x Auth
+	 *  Values (0x)   :    01             02         03 |    BIT2
+	 *  -----------------------------------------------------------
+	 */
+	WID_AUTH_TYPE			= 0x000D,
+
+	/*
+	 *  Site Survey Type
+	 *  -----------------------------------------------------------
+	 *  Configuration       :  Values to set
+	 *  Survey 1 Channel    :  0
+	 *  survey all Channels :  1
+	 *  Disable Site Survey :  2
+	 *  -----------------------------------------------------------
+	 */
+	WID_SITE_SURVEY			= 0x000E,
+
+	/*
+	 *  Listen Interval
+	 *  -----------------------------------------------------------
+	 *  Configuration :   Any value between 1 to 255
+	 *  Values to set :   Same value. Default is 3
+	 *  -----------------------------------------------------------
+	 */
+	WID_LISTEN_INTERVAL		= 0x000F,
+
+	/*
+	 *  DTIM Period
+	 *  -----------------------------------------------------------
+	 *  Configuration :   Any value between 1 to 255
+	 *  Values to set :   Same value. Default is 3
+	 *  -----------------------------------------------------------
+	 */
+	WID_DTIM_PERIOD			= 0x0010,
+
+	/*
+	 *  ACK Policy
+	 *  -----------------------------------------------------------
+	 *  Configuration :   Normal Ack            No Ack
+	 *  Values to set :       0                   1
+	 *  -----------------------------------------------------------
+	 */
+	WID_ACK_POLICY			= 0x0011,
+
+	/*
+	 *  Reset MAC (Set only)
+	 *  -----------------------------------------------------------
+	 *  Configuration :   Don't Reset	Reset	No Request
+	 *  Values to set :       0               1	    2
+	 *  -----------------------------------------------------------
+	 */
+	WID_RESET			= 0x0012,
+
+	/*
+	 *  Broadcast SSID Option: Setting this will adhere to "" SSID element
+	 *  -----------------------------------------------------------
+	 *  Configuration :   Enable             Disable
+	 *  Values to set :   1                  0
+	 *  -----------------------------------------------------------
+	 */
+	WID_BCAST_SSID			= 0x0015,
+
+	/*
+	 *  Disconnect (Station)
+	 *  -----------------------------------------------------------
+	 *  Configuration :   Association ID
+	 *  Values to set :   Association ID
+	 *  -----------------------------------------------------------
+	 */
+	WID_DISCONNECT			= 0x0016,
+
+	/*
+	 *  11a Tx Power Level
+	 *  -----------------------------------------------------------
+	 *  Configuration : Sets TX Power (Higher the value greater the power)
+	 *  Values to set : Any value between 0 and 63 (inclusive Default 48)
+	 *  -----------------------------------------------------------
+	 */
+	WID_TX_POWER_LEVEL_11A		= 0x0018,
+
+	/*
+	 *  Group Key Update Policy Selection
+	 *  -----------------------------------------------------------
+	 *  Configuration : Disabled timeBased packetBased timePacketBased
+	 *  Values to set :   1            2          3              4
+	 *  -----------------------------------------------------------
+	 */
+	WID_REKEY_POLICY		= 0x0019,
+
+	/*
+	 *  Allow Short Slot
+	 *  -----------------------------------------------------------
+	 *  Configuration : Disallow Short Slot      Allow Short Slot
+	 *          (Enable Only Long Slot) (Enable Short Slot if applicable)
+	 *  Values to set :    0         1
+	 *  -----------------------------------------------------------
+	 */
+	WID_SHORT_SLOT_ALLOWED		= 0x001A,
+
+	WID_PHY_ACTIVE_REG		= 0x001B,
+
+	/*
+	 *  11b Tx Power Level
+	 *  -----------------------------------------------------------
+	 *  Configuration : Sets TX Power (Higher the value greater the power)
+	 *  Values to set : Any value between 0 and 63 (inclusive Default 48)
+	 *  -----------------------------------------------------------
+	 */
+	WID_TX_POWER_LEVEL_11B		= 0x001D,
+
+	/*
+	 *  Scan Request
+	 *  -----------------------------------------------------------
+	 *  Configuration : Request default scan
+	 *  Values to set : 0
+	 *  -----------------------------------------------------------
+	 */
+	WID_START_SCAN_REQ		= 0x001E,
+
+	/*
+	 *  Rssi (get only)
+	 *  -----------------------------------------------------------
+	 *  Configuration :
+	 *  Values to get : Rssi value
+	 *  -----------------------------------------------------------
+	 */
+	WID_RSSI			= 0x001F,
+
+	/*
+	 * Join Request
+	 *  -----------------------------------------------------------
+	 *  Configuration : Request to join
+	 *  Values to set : index of scan result
+	 *  -----------------------------------------------------------
+	 */
+	WID_JOIN_REQ			= 0x0020,
+
+	WID_LINKSPEED			= 0x0026,
+
+	/*
+	 *  Enable User Control of TX Power
+	 *  -----------------------------------------------------------
+	 *  Configuration : Disable                  Enable
+	 *  Values to set :    0                       1
+	 *  -----------------------------------------------------------
+	 */
+	WID_USER_CONTROL_ON_TX_POWER	= 0x0027,
+
+	WID_MEMORY_ACCESS_8BIT		= 0x0029,
+
+	/*
+	 *  Enable Auto RX Sensitivity feature
+	 *  -----------------------------------------------------------
+	 *  Configuration : Disable                  Enable
+	 *  Values to set :    0                       1
+	 *  -----------------------------------------------------------
+	 */
+	WID_AUTO_RX_SENSITIVITY		= 0x0032,
+
+	/*
+	 *  Receive Buffer Based Ack
+	 *  -----------------------------------------------------------
+	 *  Configuration : Disable                  Enable
+	 *  Values to set :    0                       1
+	 *  -----------------------------------------------------------
+	 */
+	WID_DATAFLOW_CONTROL		= 0x0033,
+
+	/*
+	 *  Scan Filter
+	 *  -----------------------------------------------------------
+	 *  Configuration : Class       No filter   AP only   Station Only
+	 *  Values to set :                0           1           2
+	 *  Configuration : Priority    High Rssi   Low Rssi     Detect
+	 *  Values to set :                0          0x4         0x0
+	 *  Configuration : Channel     filter off  filter on
+	 *  Values to set :                0          0x10
+	 *  -----------------------------------------------------------
+	 */
+	WID_SCAN_FILTER			= 0x0036,
+
+	/*
+	 *  Link Loss Threshold (measure in the beacon period)
+	 *  -----------------------------------------------------------
+	 *  Configuration : Any value between 10 and 254(Set to 255 disable)
+	 *  Values to set : Same value. Default is 10
+	 *  -----------------------------------------------------------
+	 */
+	WID_LINK_LOSS_THRESHOLD		= 0x0037,
+
+	WID_ABORT_RUNNING_SCAN		= 0x003E,
+
+	/* NMAC Character WID list */
+	WID_WPS_START			= 0x0043,
+
+	/*
+	 *  Protection mode for MAC
+	 *  -----------------------------------------------------------
+	 *  Configuration :  Auto  No protection  ERP    HT    GF
+	 *  Values to set :  0     1              2      3     4
+	 *  -----------------------------------------------------------
+	 */
+	WID_11N_PROT_MECH		= 0x0080,
+
+	/*
+	 *  ERP Protection type for MAC
+	 *  -----------------------------------------------------------
+	 *  Configuration :  Self-CTS   RTS-CTS
+	 *  Values to set :  0          1
+	 *  -----------------------------------------------------------
+	 */
+	WID_11N_ERP_PROT_TYPE		= 0x0081,
+
+	/*
+	 *  HT Option Enable
+	 *  -----------------------------------------------------------
+	 *  Configuration :   HT Enable          HT Disable
+	 *  Values to set :   1                  0
+	 *  -----------------------------------------------------------
+	 */
+	WID_11N_ENABLE			= 0x0082,
+
+	/*
+	 *  11n Operating mode (Note that 11g operating mode will also be
+	 *  used in addition to this, if this is set to HT Mixed mode)
+	 *  -----------------------------------------------------------
+	 *   Configuration :  HT Mixed  HT Only-20MHz   HT Only-20/40MHz
+	 *  Values to set :     1         2               3
+	 *  -----------------------------------------------------------
+	 */
+	WID_11N_OPERATING_MODE		= 0x0083,
+
+	/*
+	 *  11n OBSS non-HT STA Detection flag
+	 *  -----------------------------------------------------------
+	 *  Configuration :  Do not detect
+	 *  Values to set :  0
+	 *  Configuration :  Detect, do not protect or report
+	 *  Values to set :  1
+	 *  Configuration :  Detect, protect and do not report
+	 *  Values to set :  2
+	 *  Configuration :  Detect, protect and report to other BSS
+	 *  Values to set :  3
+	 *  -----------------------------------------------------------
+	 */
+	WID_11N_OBSS_NONHT_DETECTION	= 0x0084,
+
+	/*
+	 *  11n HT Protection Type
+	 *  -----------------------------------------------------------
+	 *  Configuration :  RTS-CTS   First Frame Exchange at non-HT-rate
+	 *  Values to set :  0         1
+	 *  Configuration :  LSIG TXOP First Frame Exchange in Mixed Fmt
+	 *  Values to set :  2         3
+	 *  -----------------------------------------------------------
+	 */
+	WID_11N_HT_PROT_TYPE		= 0x0085,
+
+	/*
+	 *  11n RIFS Protection Enable Flag
+	 *  -----------------------------------------------------------
+	 *  Configuration :  Disable    Enable
+	 *  Values to set :  0          1
+	 *  -----------------------------------------------------------
+	 */
+	WID_11N_RIFS_PROT_ENABLE	= 0x0086,
+
+	/*
+	 *  SMPS Mode
+	 *  -----------------------------------------------------------
+	 *  Configuration :  Static   Dynamic   MIMO (Power Save Disabled)
+	 *  Values to set :  1        2         3
+	 *  -----------------------------------------------------------
+	 */
+	WID_11N_SMPS_MODE		= 0x0087,
+
+	/*
+	 *  Current transmit MCS
+	 *  -----------------------------------------------------------
+	 *  Configuration :  MCS Index for data rate
+	 *  Values to set :  0 to 7
+	 *  -----------------------------------------------------------
+	 */
+	WID_11N_CURRENT_TX_MCS		= 0x0088,
+
+	WID_11N_PRINT_STATS		= 0x0089,
+
+	/*
+	 *  11n Short GI Enable Flag
+	 *  -----------------------------------------------------------
+	 *  Configuration :  Disable    Enable
+	 *  Values to set :  0          1
+	 *  -----------------------------------------------------------
+	 */
+	WID_11N_SHORT_GI_ENABLE		= 0x008D,
+
+	/*
+	 *  11n RIFS Enable Flag
+	 *  -----------------------------------------------------------
+	 *  Configuration :  Disable    Enable
+	 *  Values to set :  0          1
+	 *  -----------------------------------------------------------
+	 */
+	WID_RIFS_MODE			= 0x0094,
+
+	/*
+	 *  TX Abort Feature
+	 *  -----------------------------------------------------------
+	 *  Configuration :  Disable Self CTS    Enable Self CTS
+	 *  Values to set :             0                      1
+	 *  Configuration :  Disable TX Abort    Enable TX Abort
+	 *  Values to set :             2                      3
+	 *  Configuration :  Enable HW TX Abort Enable SW TX Abort
+	 *  Values to set :             4                      5
+	 *  -----------------------------------------------------------
+	 */
+	WID_TX_ABORT_CONFIG		= 0x00A1,
+
+	WID_REG_TSSI_11B_VALUE		= 0x00A6,
+	WID_REG_TSSI_11G_VALUE		= 0x00A7,
+	WID_REG_TSSI_11N_VALUE		= 0x00A8,
+	WID_TX_CALIBRATION		= 0x00A9,
+	WID_DSCR_TSSI_11B_VALUE		= 0x00AA,
+	WID_DSCR_TSSI_11G_VALUE		= 0x00AB,
+	WID_DSCR_TSSI_11N_VALUE		= 0x00AC,
+
+	/*
+	 *  Immediate Block-Ack Support
+	 *  -----------------------------------------------------------
+	 *  Configuration : Disable                  Enable
+	 *  Values to set :    0                       1
+	 *  -----------------------------------------------------------
+	 */
+	WID_11N_IMMEDIATE_BA_ENABLED	= 0x00AF,
+
+	/*
+	 *  TXOP Disable Flag
+	 *  -----------------------------------------------------------
+	 *  Configuration : Disable                  Enable
+	 *  Values to set :    1                        0
+	 *  -----------------------------------------------------------
+	 */
+	WID_11N_TXOP_PROT_DISABLE	= 0x00B0,
+
+	WID_TX_POWER_LEVEL_11N		= 0x00B1,
+
+	/* Custom Character WID list */
+	/* SCAN Complete notification WID*/
+	WID_SCAN_COMPLETE		= 0x00C9,
+
+	WID_DEL_BEACON			= 0x00CA,
+
+	WID_LOG_TERMINAL_SWITCH		= 0x00CD,
+	WID_TX_POWER			= 0x00CE,
+	/*  EMAC Short WID list */
+	/*  RTS Threshold */
+	/*
+	 *  -----------------------------------------------------------
+	 *  Configuration :   Any value between 256 to 2347
+	 *  Values to set :   Same value. Default is 2347
+	 *  -----------------------------------------------------------
+	 */
+	WID_RTS_THRESHOLD		= 0x1000,
+
+	/*
+	 *  Fragmentation Threshold
+	 *  -----------------------------------------------------------
+	 *  Configuration :   Any value between 256 to 2346
+	 *  Values to set :   Same value. Default is 2346
+	 *  -----------------------------------------------------------
+	 */
+	WID_FRAG_THRESHOLD		= 0x1001,
+
+	WID_SHORT_RETRY_LIMIT		= 0x1002,
+	WID_LONG_RETRY_LIMIT		= 0x1003,
+	WID_BEACON_INTERVAL		= 0x1006,
+	WID_MEMORY_ACCESS_16BIT		= 0x1008,
+	WID_PASSIVE_SCAN_TIME           = 0x100D,
+	WID_JOIN_START_TIMEOUT		= 0x100F,
+	WID_ASOC_TIMEOUT		= 0x1011,
+	WID_11I_PROTOCOL_TIMEOUT	= 0x1012,
+	WID_EAPOL_RESPONSE_TIMEOUT	= 0x1013,
+
+	/* NMAC Short WID list */
+	WID_11N_SIG_QUAL_VAL		= 0x1085,
+	WID_CCA_THRESHOLD		= 0x1087,
+
+	/* Custom Short WID list */
+
+	/* EMAC Integer WID list */
+	WID_FAILED_COUNT		= 0x2000,
+	WID_RETRY_COUNT			= 0x2001,
+	WID_MULTIPLE_RETRY_COUNT	= 0x2002,
+	WID_FRAME_DUPLICATE_COUNT	= 0x2003,
+	WID_ACK_FAILURE_COUNT		= 0x2004,
+	WID_RECEIVED_FRAGMENT_COUNT	= 0x2005,
+	WID_MCAST_RECEIVED_FRAME_COUNT	= 0x2006,
+	WID_FCS_ERROR_COUNT		= 0x2007,
+	WID_SUCCESS_FRAME_COUNT		= 0x2008,
+	WID_HUT_TX_COUNT		= 0x200A,
+	WID_TX_FRAGMENT_COUNT		= 0x200B,
+	WID_TX_MULTICAST_FRAME_COUNT	= 0x200C,
+	WID_RTS_SUCCESS_COUNT		= 0x200D,
+	WID_RTS_FAILURE_COUNT		= 0x200E,
+	WID_WEP_UNDECRYPTABLE_COUNT	= 0x200F,
+	WID_REKEY_PERIOD		= 0x2010,
+	WID_REKEY_PACKET_COUNT		= 0x2011,
+	WID_1X_SERV_ADDR		= 0x2012,
+	WID_STACK_IP_ADDR		= 0x2013,
+	WID_STACK_NETMASK_ADDR		= 0x2014,
+	WID_HW_RX_COUNT			= 0x2015,
+	WID_MEMORY_ADDRESS		= 0x201E,
+	WID_MEMORY_ACCESS_32BIT		= 0x201F,
+
+	/* NMAC Integer WID list */
+	/* Custom Integer WID list */
+	WID_GET_INACTIVE_TIME		= 0x2084,
+	/* EMAC String WID list */
+	WID_SSID			= 0x3000,
+	WID_FIRMWARE_VERSION		= 0x3001,
+	WID_OPERATIONAL_RATE_SET	= 0x3002,
+	WID_BSSID			= 0x3003,
+	WID_WEP_KEY_VALUE		= 0x3004,
+	WID_11I_PSK			= 0x3008,
+	WID_11E_P_ACTION_REQ		= 0x3009,
+	WID_1X_KEY			= 0x300A,
+	WID_HARDWARE_VERSION		= 0x300B,
+	WID_MAC_ADDR			= 0x300C,
+	WID_HUT_DEST_ADDR		= 0x300D,
+	WID_PHY_VERSION			= 0x300F,
+	WID_SUPP_USERNAME		= 0x3010,
+	WID_SUPP_PASSWORD		= 0x3011,
+	WID_SITE_SURVEY_RESULTS		= 0x3012,
+	WID_RX_POWER_LEVEL		= 0x3013,
+	WID_SET_STA_MAC_INACTIVE_TIME	= 0x3017,
+	WID_ADD_WEP_KEY			= 0x3019,
+	WID_REMOVE_WEP_KEY		= 0x301A,
+	WID_ADD_PTK			= 0x301B,
+	WID_ADD_RX_GTK			= 0x301C,
+	WID_ADD_TX_GTK			= 0x301D,
+	WID_REMOVE_KEY			= 0x301E,
+	WID_ASSOC_REQ_INFO		= 0x301F,
+	WID_ASSOC_RES_INFO		= 0x3020,
+	WID_MANUFACTURER		= 0x3026, /* Added for CAPI tool */
+	WID_MODEL_NAME			= 0x3027, /* Added for CAPI tool */
+	WID_MODEL_NUM			= 0x3028, /* Added for CAPI tool */
+	WID_DEVICE_NAME			= 0x3029, /* Added for CAPI tool */
+
+	/* NMAC String WID list */
+	WID_SET_OPERATION_MODE		= 0x3079,
+	WID_11N_P_ACTION_REQ		= 0x3080,
+	WID_HUT_TEST_ID			= 0x3081,
+	WID_PMKID_INFO			= 0x3082,
+	WID_FIRMWARE_INFO		= 0x3083,
+	WID_REGISTER_FRAME		= 0x3084,
+	WID_DEL_ALL_STA			= 0x3085,
+	WID_REMAIN_ON_CHAN		= 0x3996,
+	WID_SSID_PROBE_REQ		= 0x3997,
+	WID_JOIN_REQ_EXTENDED		= 0x3998,
+
+	WID_IP_ADDRESS			= 0x3999,
+
+	/* Custom String WID list */
+
+	/* EMAC Binary WID list */
+	WID_UAPSD_CONFIG		= 0x4001,
+	WID_UAPSD_STATUS		= 0x4002,
+	WID_WMM_AP_AC_PARAMS		= 0x4003,
+	WID_WMM_STA_AC_PARAMS		= 0x4004,
+	WID_NETWORK_INFO		= 0x4005,
+	WID_STA_JOIN_INFO		= 0x4006,
+	WID_CONNECTED_STA_LIST		= 0x4007,
+
+	/* NMAC Binary WID list */
+	WID_11N_AUTORATE_TABLE		= 0x4080,
+
+	WID_SCAN_CHANNEL_LIST		= 0x4084,
+
+	WID_INFO_ELEMENT_PROBE		= 0x4085,
+	WID_INFO_ELEMENT_ASSOCIATE	= 0x4086,
+	WID_ADD_STA			= 0X4087,
+	WID_REMOVE_STA			= 0X4088,
+	WID_EDIT_STA			= 0X4089,
+	WID_ADD_BEACON			= 0x408a,
+
+	WID_SETUP_MULTICAST_FILTER	= 0x408b,
+
+	/* Miscellaneous WIDs */
+	WID_ALL				= 0x7FFE,
+	WID_MAX				= 0xFFFF
+};
+
+#endif
-- 
2.24.0
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
