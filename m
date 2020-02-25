Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A28CC16BAF2
	for <lists+driverdev-devel@lfdr.de>; Tue, 25 Feb 2020 08:41:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3661D863FD;
	Tue, 25 Feb 2020 07:41:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id V8W7eedvcmef; Tue, 25 Feb 2020 07:41:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8F065863E8;
	Tue, 25 Feb 2020 07:41:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0F9A51BF316
 for <devel@linuxdriverproject.org>; Tue, 25 Feb 2020 07:41:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 0BFDD860D1
 for <devel@linuxdriverproject.org>; Tue, 25 Feb 2020 07:41:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SM8DkCayns1t for <devel@linuxdriverproject.org>;
 Tue, 25 Feb 2020 07:41:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa2.microchip.iphmx.com (esa2.microchip.iphmx.com
 [68.232.149.84])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9D7E68608B
 for <devel@driverdev.osuosl.org>; Tue, 25 Feb 2020 07:41:14 +0000 (UTC)
Received-SPF: Pass (esa2.microchip.iphmx.com: domain of
 Ajay.Kathat@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Ajay.Kathat@microchip.com";
 x-sender="Ajay.Kathat@microchip.com"; x-conformance=spf_only;
 x-record-type="v=spf1"; x-record-text="v=spf1 mx
 a:ushub1.microchip.com a:smtpout.microchip.com
 -exists:%{i}.spf.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa2.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Ajay.Kathat@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa2.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Ajay.Kathat@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: Oel1oXJLi8aBE8UYtNYBnrz2EpGQL9IRLfGy7SuFOKzg1hskS0VnLSouni43BwR2nBz84wLA0O
 hxU6xslCIgda6vfnNmD1OX4Hg/rFI9yGT66FVog7ghA9d6RnKB+qGfnYlSVgGM+cRTyQAxdyua
 zNSrhrTHeqDo4uzvhcY/c7WsBNwcoNQh+J9bNnNi+rGlj5YeUwVDPACvKgMupvdz8PU1NPuPGS
 axgLVYvK+aBEt9odXbad4/szBTFw9xSRYl0gTuUVQkjCgoaCO5WrQHYdEc49/TkYLbfUvgoTD6
 opA=
X-IronPort-AV: E=Sophos;i="5.70,483,1574146800"; d="scan'208";a="66951666"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 25 Feb 2020 00:41:13 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 25 Feb 2020 00:41:13 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 25 Feb 2020 00:41:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=E9vtbPIShsyBOpZfK7IhvYb7IO65ZfIZJWnpQGKyyQesev0pjlR4VhCoChY4TUtdGn9P1siAvtclVrDpQQjpsefSbSRLMNS9cy9H7CHghC9KCRzTsMPp8yfrPifRc3OwOz4HVFo3/0KUTzp+gX28gfWLQFgV6izFkDod6dIqQkjDGjVeNE5uX6tHLj5RHckl/5dB4v5QrqsPl4f1ma5iqTU8ZI9MmLgR08hG9xCpLbTJJa2dcgm8t6x6JAJ3Tq0Oyhublw/z0Y29mSC7fwxd78WrXvJ+UrLV890m7uwFYtjNvfmIl222qxKDpB8vbm91tsCjv7PRLGw5BpFQDJqyFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=62bXSTxRijsaoa/s/BnBdXUvXfjVH6AfnCf0owu6UlE=;
 b=m7E07eEyqTu1+hgA9BCxZPHTnR6L+cYNICkTawrMXKjtPP05vWIU7wT85UFfO2oBEmdbTyET+vNtnOS2zcSjdh+KVBN/gKXoIDEfheW0iVnbMuXpu3GlZ/csYdPJP3nRQ+TyqT8nxQulYXhp5w637PoyT+Z33D3nZxOe0XSOKPmiqgt9WyX4ndbYiSH+q7jljQ0e10HgiuPZivxJQmElGdukUJCRpsPZXQLTczXnaU+lH4RHhynxnD/VStJkR91cLPnia9feQqfofvj50bDJQIolgdFxFn3dHwyQPT/UmoTa+54rIANg/mJfOlY+Xzdx8oav/KjNk/bYQcH5BoGwxQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=62bXSTxRijsaoa/s/BnBdXUvXfjVH6AfnCf0owu6UlE=;
 b=Tbc7by8Xcgc6UIf7Z3IRhpa0De31QFHZoK7E9vwswO3Soj1BceRCOOHQoADKsc8nqoXxhfHZxswCA9Krls0mXRpZPdb8B6KsC/m5mfqP/SJLG9PaVD5nnN/dz6042thFU3EMZdDLN3nqdxqU2UavTSyPZm2rmrqkeqVIU/igCJI=
Received: from BN6PR11MB3985.namprd11.prod.outlook.com (2603:10b6:405:7b::14)
 by BN6PR11MB1875.namprd11.prod.outlook.com (2603:10b6:404:104::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2750.17; Tue, 25 Feb
 2020 07:41:12 +0000
Received: from BN6PR11MB3985.namprd11.prod.outlook.com
 ([fe80::ec62:e7fd:f17c:dfd4]) by BN6PR11MB3985.namprd11.prod.outlook.com
 ([fe80::ec62:e7fd:f17c:dfd4%3]) with mapi id 15.20.2750.021; Tue, 25 Feb 2020
 07:41:12 +0000
From: <Ajay.Kathat@microchip.com>
To: <linux-wireless@vger.kernel.org>
Subject: [PATCH v3 04/18] wilc1000: add wlan_cfg.h
Thread-Topic: [PATCH v3 04/18] wilc1000: add wlan_cfg.h
Thread-Index: AQHV667z1kazYJGKf0C1os7JRrNA/A==
Date: Tue, 25 Feb 2020 07:41:12 +0000
Message-ID: <20200225074105.7740-5-ajay.kathat@microchip.com>
References: <20200225074105.7740-1-ajay.kathat@microchip.com>
In-Reply-To: <20200225074105.7740-1-ajay.kathat@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.17.1
x-originating-ip: [121.244.27.38]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 924567e0-2b65-4f35-6b1a-08d7b9c6166e
x-ms-traffictypediagnostic: BN6PR11MB1875:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BN6PR11MB18752DB349AF2EA728F17A59E3ED0@BN6PR11MB1875.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:361;
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
x-microsoft-antispam-message-info: 4GDELWn20HyJtg8V7txVmar9YskH0sUN5PDtKeAHQBx5XhmB7lKah0G5i1UKxxCtySUwLyXhzmOzC7UsiX5r4nQ6dqCp9bqFwrKONSbFhtzlllckX51wR19MwL20QdgXhab55dzmXCiDAeEtWBMjLDKUagjG+/YwEn23h+PId453CW4plN3lzLTwIYwOEyGobQME7PUi4oghiC2NcmrU93onss5uunEbxpiEsYDsuybVKvsbc7uUsI9pOCYM+PiN9IKh9QT45HbTZCFRjCHrcV7Z/KchkBhsDlyjk/5o1lEeOc78kvoUguchY0z1HZvDsU2FHubPxxCjUAXaSXeSoeYyiJGB6I08UfaP4AnzE2lHtTALDSqAWPQUMhMK1a3lj1adazO8OYbTtgfXnurvTmptV1Xgmk6vcKADsEIIFcU14VKZbAjm3fRdtbT8n3nh
x-ms-exchange-antispam-messagedata: StgNXC5NtkU7Tlg70vHNCzQxrM9VFmNTiMVJU5k1CTLzn3aAoLAky0aqSTAcTyQTNjFeXys1PsR1MzDK+k+YyULIKdC4fmcW5996M5XDZJ/NBnmXYPZ5FqMAO8s5ScPsptS/wt3sI+Rawd6JIJSbzg==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 924567e0-2b65-4f35-6b1a-08d7b9c6166e
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Feb 2020 07:41:12.5423 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GxIVnKdoCzGakuh1MB7ZX1795UwsCcOWmWJLY0tLBf2dJ5gA7EMb8cDal6UIWbFkuxlcPOI0hK/Ikt+CuqTyYFTBNUqljZ3UPFmLm3h48+w=
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
