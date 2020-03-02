Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B3FFB175FE6
	for <lists+driverdev-devel@lfdr.de>; Mon,  2 Mar 2020 17:35:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 07440854A0;
	Mon,  2 Mar 2020 16:35:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hFjs-iUZz6zX; Mon,  2 Mar 2020 16:35:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 14CB286019;
	Mon,  2 Mar 2020 16:34:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8C2371BF321
 for <devel@linuxdriverproject.org>; Mon,  2 Mar 2020 16:34:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 81393204A0
 for <devel@linuxdriverproject.org>; Mon,  2 Mar 2020 16:34:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lcIFH2j+FZtZ for <devel@linuxdriverproject.org>;
 Mon,  2 Mar 2020 16:34:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa5.microchip.iphmx.com (esa5.microchip.iphmx.com
 [216.71.150.166])
 by silver.osuosl.org (Postfix) with ESMTPS id 80E6C203F5
 for <devel@driverdev.osuosl.org>; Mon,  2 Mar 2020 16:34:51 +0000 (UTC)
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
IronPort-SDR: lwkw0DbmIYG2kCBz1yMvAYgyaBpFusuRM23OsmJijGvqI2MCh3qGY4jmx3Jq+MRx7utBJkrrv4
 iGufECVvo0j3fhIEdUoH4JUdgyVJdYTCgSawBAVyKA1aTq1H8UcK0by27bE0jgAAdm/bqaazFo
 PxHL8PSoVVwNmnnwPh4B6SfL92xvHpY3b14I/z2vpTqCbMwkL85W4e7ZMNhHexiyvX9q3xwVeL
 sp+pEol+QGTASNAmtKG2dOrR1T6zpiaIq3I1n4EZzUJ99R1HzuF0asJSjaLrpWgnUUhrw0Hkqa
 lK4=
X-IronPort-AV: E=Sophos;i="5.70,507,1574146800"; d="scan'208";a="67327179"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 02 Mar 2020 09:34:35 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 2 Mar 2020 09:34:34 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 2 Mar 2020 09:34:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hQ0RUx4BcNcgMqktEvIfxnb7wiRAWBHvrkN95usbo+HZP3Q/b2T6ljcPr40KUqQ+3Q2NfM7KccXI5k6M/DKLd4d3jJWbrbzJJ/lB80hIlXotQSfg90EKeYWhvV0zF4JpI6slyT4TYZBso3/Ag6BmUoME1/PL5Ci0fOoasF5hShgQTajfis3SUs3Ev5+Jf80owpYjxLK/xoFUFkTKnVnytTp/CPsquXriyaUZ+569Wgr7k+7W5wxa6BS+ZeGc9nFrDNizKVMb9R3spydwZb857J/2Ljsyx7jK3w14LQP/U79Zcu7/cX9QLxSnHDGBatXu4H/BcACQTcMIM/g9p0d6HA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=62bXSTxRijsaoa/s/BnBdXUvXfjVH6AfnCf0owu6UlE=;
 b=cmHPW00Hz9/J1lqVETZQbbqTEYeZM+6yadYbTrdc01uhwIF69/AW9xMHM/JZ2bsN/+ayxE03aPl6XXUDC7ibXQqDtMqCet6lzCMAxU+eQLrPlW/DYGfockhrxHXCnHwOMl6AdEjH0QamoGkU1eCRTUbB9GkcLeBXznnXya8tn/BJ/QvHiWaV7I3084CIPmgHO8swH3GFzxDpj0Hk6A0L0CyvxpLLN/TVmmbqyEYWutLbBZe3wntUMsJ2YVjgpCNutRN/eShk4fJD/Pcu1fu39UfAW0ALgi0VFKizrD1oSV7ynxau2GQycsnHKJa0CUngpO1OwMfSoqKMT1hY4sDRYw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=62bXSTxRijsaoa/s/BnBdXUvXfjVH6AfnCf0owu6UlE=;
 b=Gba/U2MZCQOm3QoaYqi660N6M5JsazZ7Amm2WB0B4J7fju6pKoPjWj2bTZhkfgcaXO9hk3KFGLCYf6ymkE2dLuuJC+JyEh+Na4V9Qmj++1W+I7HxrS+jeqIEh8Nmo3yYzggb2hya5SnWhcMp3Pdnv2ZGMi8FYTlXzWu14vC3NiI=
Received: from BN6PR11MB3985.namprd11.prod.outlook.com (2603:10b6:405:7b::14)
 by BN6PR11MB4098.namprd11.prod.outlook.com (2603:10b6:405:7f::36)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2772.18; Mon, 2 Mar
 2020 16:34:32 +0000
Received: from BN6PR11MB3985.namprd11.prod.outlook.com
 ([fe80::ec62:e7fd:f17c:dfd4]) by BN6PR11MB3985.namprd11.prod.outlook.com
 ([fe80::ec62:e7fd:f17c:dfd4%3]) with mapi id 15.20.2772.019; Mon, 2 Mar 2020
 16:34:32 +0000
From: <Ajay.Kathat@microchip.com>
To: <linux-wireless@vger.kernel.org>
Subject: [PATCH v4 04/18] wilc1000: add wlan_cfg.h
Thread-Topic: [PATCH v4 04/18] wilc1000: add wlan_cfg.h
Thread-Index: AQHV8LBzghsr0VM1cUSN2rvrhmrkyg==
Date: Mon, 2 Mar 2020 16:34:32 +0000
Message-ID: <20200302163414.4342-5-ajay.kathat@microchip.com>
References: <20200302163414.4342-1-ajay.kathat@microchip.com>
In-Reply-To: <20200302163414.4342-1-ajay.kathat@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.17.1
x-originating-ip: [121.244.27.38]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 90f4364e-2476-4feb-3d4f-08d7bec7965c
x-ms-traffictypediagnostic: BN6PR11MB4098:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BN6PR11MB40984775C6E5ED7561950AEFE3E70@BN6PR11MB4098.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:361;
x-forefront-prvs: 033054F29A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(396003)(39860400002)(136003)(366004)(346002)(199004)(189003)(316002)(6916009)(86362001)(6512007)(2616005)(478600001)(71200400001)(54906003)(4326008)(64756008)(186003)(107886003)(66446008)(5660300002)(91956017)(76116006)(8676002)(66476007)(66946007)(6486002)(6506007)(66556008)(26005)(81156014)(81166006)(2906002)(1076003)(36756003)(8936002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN6PR11MB4098;
 H:BN6PR11MB3985.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: KHgLPiUFzOU0b6+I5UfooZN7BoOHReEb5DRgTuTgv+xgA4XnElc/RGAopHEsP5WDv2kooldoB1VByuceBKvYb7HN3zPRrZ/wqGdfKP9/6Wfq+7CitvaiT/ygNAYxVAly8wYae9iwBQFxkDpcy2pH+2PVYqbjFSs1GuhRTeeko0Muego7QRrS871BuIhM3inGBShZHAJcIXIFGS5bEK8S8T6iVLqJpEnm4vk2eaZC4QHGjqBCBaGOfDg/7NXoUJt+fXCjhoSmGRDpuihxlhVy6ZES3hKNrFW/wAe5G5uVus+M0T5ioXQSwHCtn/rerST+QddXs48TblMaLhZ3psmkzUCh0tqCMaeaH8JnTIL5DsTICyXUACfMhYknP443wTnS+ZbqZ2+R57lBkJ77ugbw5Jbx0pSJSrI5YUHMclqmAhWsY2QLHTr3kwtC7gyXDilf
x-ms-exchange-antispam-messagedata: K3EIog7TvCVhLRy3iXJH2GAar4l1ssbaCbcvT6N+qvdcg9QR6GSv7gk4PoccECK214hILgmWubXhEM9k8oMv1t2TfXHuhygo3+AjVTAQmzR6yAQ27PX91JW5YAJDqqFYkKpKhT5TE2llrUNS0wZ/Jw==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 90f4364e-2476-4feb-3d4f-08d7bec7965c
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Mar 2020 16:34:32.4982 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FGBM0CNp6kyPtoub20MaKc4lA1UVVPdsH9VcYx0J/R3d6JMpliSmEw8rN2ht5eWPzXdQ/7GhoLFzcmswbQY5N1xOEHD1a9mh5KhN1NsGP/k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB4098
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

Moved 'drivers/staging/wilc1000/wlan_cfg.h' to
'drivers/net/wireless/microchip/wilc1000/wlan_cfg.h'.

Signed-off-by: Ajay Singh <ajay.kathat@microchip.com>
---
 .../wireless/microchip/wilc1000/wlan_cfg.h    | 54 +++++++++++++++++++
 1 file changed, 54 insertions(+)
 create mode 100644 drivers/net/wireless/microchip/wilc1000/wlan_cfg.h

diff --git a/drivers/net/wireless/microchip/wilc1000/wlan_cfg.h b/drivers/net/wireless/microchip/wilc1000/wlan_cfg.h
new file mode 100644
index 000000000000..614c5673f232
--- /dev/null
+++ b/drivers/net/wireless/microchip/wilc1000/wlan_cfg.h
@@ -0,0 +1,54 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2012 - 2018 Microchip Technology Inc., and its subsidiaries.
+ * All rights reserved.
+ */
+
+#ifndef WILC_WLAN_CFG_H
+#define WILC_WLAN_CFG_H
+
+struct wilc_cfg_byte {
+	u16 id;
+	u8 val;
+};
+
+struct wilc_cfg_hword {
+	u16 id;
+	u16 val;
+};
+
+struct wilc_cfg_word {
+	u16 id;
+	u32 val;
+};
+
+struct wilc_cfg_str {
+	u16 id;
+	u8 *str;
+};
+
+struct wilc_cfg_str_vals {
+	u8 mac_address[7];
+	u8 firmware_version[129];
+	u8 assoc_rsp[256];
+};
+
+struct wilc_cfg {
+	struct wilc_cfg_byte *b;
+	struct wilc_cfg_hword *hw;
+	struct wilc_cfg_word *w;
+	struct wilc_cfg_str *s;
+	struct wilc_cfg_str_vals *str_vals;
+};
+
+struct wilc;
+int wilc_wlan_cfg_set_wid(u8 *frame, u32 offset, u16 id, u8 *buf, int size);
+int wilc_wlan_cfg_get_wid(u8 *frame, u32 offset, u16 id);
+int wilc_wlan_cfg_get_val(struct wilc *wl, u16 wid, u8 *buffer,
+			  u32 buffer_size);
+void wilc_wlan_cfg_indicate_rx(struct wilc *wilc, u8 *frame, int size,
+			       struct wilc_cfg_rsp *rsp);
+int wilc_wlan_cfg_init(struct wilc *wl);
+void wilc_wlan_cfg_deinit(struct wilc *wl);
+
+#endif
-- 
2.24.0
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
