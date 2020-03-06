Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 84B7817C0C5
	for <lists+driverdev-devel@lfdr.de>; Fri,  6 Mar 2020 15:44:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5B0E0227D1;
	Fri,  6 Mar 2020 14:44:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id w-lTngt6DyTw; Fri,  6 Mar 2020 14:44:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 7DAFE227AA;
	Fri,  6 Mar 2020 14:44:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9FEBA1BF379
 for <devel@linuxdriverproject.org>; Fri,  6 Mar 2020 14:44:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 9C0628830D
 for <devel@linuxdriverproject.org>; Fri,  6 Mar 2020 14:44:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vdUC-ZJN2PvT for <devel@linuxdriverproject.org>;
 Fri,  6 Mar 2020 14:44:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa1.microchip.iphmx.com (esa1.microchip.iphmx.com
 [68.232.147.91])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 7F4ED88309
 for <devel@driverdev.osuosl.org>; Fri,  6 Mar 2020 14:44:08 +0000 (UTC)
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
IronPort-SDR: MreVur2EVk/mrDYEcitqK8iz8yGtbZY8EBaa2gNP5X57S6nWNEv5qPGGcBGc9Z4Qf7hgOJbXIh
 fRdemrmdTLxGMJib8nLv1GkNZeeGXMyP+zh+FGC/hTY3hHWNSWko0J5ATVbK+oRc4gorUPnSKC
 7W9ooNSyFUeaZyeiK3N6y09FMynwEYumHH37c3SmRqoikmliS0I/ZuiLbcSchwSLxSIdQyNi+J
 Tl4i02+0KVklD932UoedUtkcE6LCM4PbGG9bYnEsJR37rxMuktlgFxAc7IaTammrLx+zf9ZF9H
 Ijk=
X-IronPort-AV: E=Sophos;i="5.70,522,1574146800"; d="scan'208";a="71088666"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 06 Mar 2020 07:44:06 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 6 Mar 2020 07:44:06 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Fri, 6 Mar 2020 07:44:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jxiL5yLBJQm3PJjnMjGN2a03kUlT/dHmKWwx8tHXB2V/MCZTns5HYN7UmGJ6B5oV38mKiXY7U3E3cYLNakeIHIQwpohXOIuYBF/t8ISqL5+ObOa1C+W8eTRhvKV+KFJ31Q5OeK6er+yhjyYG0WBpmtv5JZu4omyoZvPgvG+WVgmXlCTa2YGKf7ko1LY3rejuRiDGXv86m4ElZaW5RLzzQazlPuIIgwR/NaZw2NVf/dlj48jlOR+H0WT3yR4463xUwf/pzlV5kQl3d5YuIkslis/WWI3/grqR5IfusNdalIaDYx14nnA4ewtKXiKg0tMyr1+JzbC/lyfb1GVRnUbmXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OTG3rN2bu21lhZdEcRb7UBT/mSzrjNA0DaOdB/uvwTM=;
 b=HEH9TuIBF3CLnhp9QOC4Bz3TH/h+SLdEhVVLM+ESrpHoWxOIIHHNiS+GiljIwpqY89h1/uLcdhs8qBhfS2M3tcSIb4nsRASYxC6c0XBKKCuH5vgt7QmbzyZJhKT1SvCd5XfsxeS9skW5/P5aVLyr1yil+Eopgd0FKM9/7eUzzut5A8mhf96rWYHl7YLIQAgOTkt4DwyQS6KkBVo+bary1Xpr18fuD6nrEktRTEITaP0HI5UFnutP7SjmsABwg79tPgSEZHYmOch8RiYaV6wdja6dqFTrBGpOWDHLgSlc26+cf4tt2B9+VbljhvNUpM6TfU3IgcnNObRqRwDsSr9sVg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OTG3rN2bu21lhZdEcRb7UBT/mSzrjNA0DaOdB/uvwTM=;
 b=gNCq0MFruFIq2FVsvJ4oXk0lR6BmkJuwjC8PclSWDkMrt8FJrIMp0eZDOx3JIzJ5SH6tVQeW0nIXPBLD4NBFt9MFdqF0kZ3evScm5Sfqn+YxrBZDa0XspPG1eC+8CNinvtqqp/jirkkMDw6OtAsNGjDMcHJmmLHhvDiP7v9pVck=
Received: from BN6PR11MB3985.namprd11.prod.outlook.com (2603:10b6:405:7b::14)
 by BN6PR11MB1362.namprd11.prod.outlook.com (2603:10b6:404:3c::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2793.15; Fri, 6 Mar
 2020 14:44:05 +0000
Received: from BN6PR11MB3985.namprd11.prod.outlook.com
 ([fe80::a0be:9e7c:714e:e2bd]) by BN6PR11MB3985.namprd11.prod.outlook.com
 ([fe80::a0be:9e7c:714e:e2bd%6]) with mapi id 15.20.2793.013; Fri, 6 Mar 2020
 14:44:05 +0000
From: <Ajay.Kathat@microchip.com>
To: <linux-wireless@vger.kernel.org>
Subject: [PATCH 2/2] staging: wilc1000: use single DT binding documentation
 for SDIO and SPI
Thread-Topic: [PATCH 2/2] staging: wilc1000: use single DT binding
 documentation for SDIO and SPI
Thread-Index: AQHV88WvMA9JjD2KQES0P1weexqnLg==
Date: Fri, 6 Mar 2020 14:44:05 +0000
Message-ID: <20200306144400.4269-3-ajay.kathat@microchip.com>
References: <20200306144400.4269-1-ajay.kathat@microchip.com>
In-Reply-To: <20200306144400.4269-1-ajay.kathat@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.17.1
x-originating-ip: [49.205.218.40]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2bf71223-66cc-4a16-eb4d-08d7c1dcd1d0
x-ms-traffictypediagnostic: BN6PR11MB1362:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BN6PR11MB1362AA0A39DCAC8CAC3F657CE3E30@BN6PR11MB1362.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 0334223192
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(39860400002)(366004)(346002)(376002)(396003)(189003)(199004)(2906002)(81166006)(6506007)(5660300002)(6512007)(81156014)(64756008)(6486002)(4326008)(8936002)(8676002)(36756003)(91956017)(66556008)(76116006)(71200400001)(54906003)(66946007)(66476007)(66446008)(2616005)(316002)(86362001)(1076003)(6916009)(966005)(107886003)(478600001)(186003)(26005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN6PR11MB1362;
 H:BN6PR11MB3985.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 7H7AjED53B55lYIoOmoBLFFwXL5GcoY4O0jDQ83IfoSgXUscbQLgMcnuYOnc6b1HXdaePwCqhYXSzawc2IWTvlEjvR/g9TVWgERtemgZXSYJBsZgYO2mwzpbyWfl6UBJYN7/7MZsHC+a1rlWWfBjnasoRPp0Y27pkiKKUN+9bjO1GwNyQPQwAOCUXeo+qfOgZ1cTBkOP2Trt8an507x8am2vEpv9aPcMw/n55yGHgTRQW7RMelGpDbpRftn8zoBRpz2NAge7K/rY4JJMaLt+1YL4opcPmMOKhF74s02pgt2rSiYw95CupumPbpT87NsEoUDSEnW0CrLGonplTXxWacqoTeDChfQ/oVBTqyt9eT3XAj7tPJv279GvC2quJXtTWhPILsG5ManDVs7+DaH1+jJEMwE5SEFAj+NrrdvxaBj2tTnv4NZFGLRMZYoBAEvqs86JPPeMcDt6xMudE19ZZeki//sOz35kHuf5yqSbpbLdOgR3ew2miDncWw5lPYrO
x-ms-exchange-antispam-messagedata: FhMbaP7tU23I313IFh3B5QszJCAStIi4AeoZCTkNbDoZDOUSJh8XVVFmLKDQ2qpjxkGu/RAdf5Aedw3VllTjVfXg3KBZm2rTp5xfxZYgjGnxhxsBgWou22yOVvRTwLk9ipj/u1HrzsakN3NT1TCrCg==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 2bf71223-66cc-4a16-eb4d-08d7c1dcd1d0
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Mar 2020 14:44:05.1791 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MlB4sZ1gaovcRCvgrfmwXAu1YAUZVCLo0uXuURONE6ZzOrKwxbL2/EVomr0++9luvzxRL9cCMzLbnipitEWMF9eaLe1EWugXmXGx/x0dgvE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1362
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
 Ajay.Kathat@microchip.com, robh@kernel.org, gregkh@linuxfoundation.org,
 Adham.Abozaeid@microchip.com, johannes@sipsolutions.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Ajay Singh <ajay.kathat@microchip.com>

Merged the DT binding documentation of SDIO and SPI into a single file.
Removed documentation for some of the properties which are not required
and handled review comments received in [1] & [2].

[1]. https://lore.kernel.org/linux-wireless/20200303020230.GA15543@bogus
[2]. https://lore.kernel.org/linux-wireless/20200303015558.GA6876@bogus

Signed-off-by: Ajay Singh <ajay.kathat@microchip.com>
---
 .../wilc1000/microchip,wilc1000,sdio.yaml     | 68 -------------------
 ...c1000,spi.yaml => microchip,wilc1000.yaml} | 44 ++++++++----
 drivers/staging/wilc1000/sdio.c               |  4 +-
 drivers/staging/wilc1000/spi.c                |  2 +-
 4 files changed, 34 insertions(+), 84 deletions(-)
 delete mode 100644 drivers/staging/wilc1000/microchip,wilc1000,sdio.yaml
 rename drivers/staging/wilc1000/{microchip,wilc1000,spi.yaml => microchip,wilc1000.yaml} (53%)

diff --git a/drivers/staging/wilc1000/microchip,wilc1000,sdio.yaml b/drivers/staging/wilc1000/microchip,wilc1000,sdio.yaml
deleted file mode 100644
index 9df7327bc668..000000000000
--- a/drivers/staging/wilc1000/microchip,wilc1000,sdio.yaml
+++ /dev/null
@@ -1,68 +0,0 @@
-# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
-%YAML 1.2
----
-$id: http://devicetree.org/schemas/net/wireless/microchip,wilc1000,sdio.yaml#
-$schema: http://devicetree.org/meta-schemas/core.yaml#
-
-title: Microchip WILC wireless SDIO devicetree bindings
-
-maintainers:
-  - Adham Abozaeid <adham.abozaeid@microchip.com>
-  - Ajay Singh <ajay.kathat@microchip.com>
-
-description:
-  The wilc1000 chips can be connected via SDIO. The node is used to
-  specify child node to the SDIO controller that connects the device
-  to the system.
-
-properties:
-  compatible:
-    const: microchip,wilc1000-sdio
-
-  interrupts:
-    maxItems: 1
-
-  reg:
-    description: Slot ID used in the controller.
-    maxItems: 1
-
-  clocks:
-    description: phandle to the clock connected on rtc clock line.
-    maxItems: 1
-
-  bus-width:
-    description: The number of data lines wired up the slot.
-    allOf:
-      - $ref: /schemas/types.yaml#/definitions/uint32
-      - enum: [1, 4, 8]
-      - default: 1
-
-required:
-  - compatible
-  - interrupts
-  - reg
-
-examples:
-  - |
-    mmc1: mmc@fc000000 {
-      #address-cells = <1>;
-      #size-cells = <0>;
-      pinctrl-names = "default";
-      pinctrl-0 = <&pinctrl_mmc1_clk_cmd_dat0 &pinctrl_mmc1_dat1_3>;
-      non-removable;
-      vmmc-supply = <&vcc_mmc1_reg>;
-      vqmmc-supply = <&vcc_3v3_reg>;
-      status = "okay";
-      wilc_sdio@0 {
-        compatible = "microchip,wilc1000-sdio";
-        interrupt-parent = <&pioC>;
-        interrupts = <27 0>;
-          reg = <0>;
-          clocks = <&pck1>;
-          clock-names = "rtc_clk";
-          assigned-clocks = <&pck1>;
-          assigned-clock-rates = <32768>;
-          status = "okay";
-          bus-width = <4>;
-        };
-    };
diff --git a/drivers/staging/wilc1000/microchip,wilc1000,spi.yaml b/drivers/staging/wilc1000/microchip,wilc1000.yaml
similarity index 53%
rename from drivers/staging/wilc1000/microchip,wilc1000,spi.yaml
rename to drivers/staging/wilc1000/microchip,wilc1000.yaml
index dd5e8da1f562..a1914449ad07 100644
--- a/drivers/staging/wilc1000/microchip,wilc1000,spi.yaml
+++ b/drivers/staging/wilc1000/microchip,wilc1000.yaml
@@ -1,22 +1,22 @@
 # SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
 %YAML 1.2
 ---
-$id: http://devicetree.org/schemas/net/wireless/microchip,wilc1000,spi.yaml#
+$id: http://devicetree.org/schemas/net/wireless/microchip,wilc1000.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Microchip WILC wireless SPI devicetree bindings
+title: Microchip WILC wireless devicetree bindings
 
 maintainers:
   - Adham Abozaeid <adham.abozaeid@microchip.com>
   - Ajay Singh <ajay.kathat@microchip.com>
 
 description:
-  The wilc1000 chips can be connected via SPI. This document describes
-  the binding for the SPI connected module.
+  The wilc1000 chips can be connected via SPI or SDIO. This document
+  describes the binding to connect wilc devices.
 
 properties:
   compatible:
-    const: microchip,wilc1000-spi
+    const: microchip,wilc1000
 
   spi-max-frequency:
     description: Maximum SPI clocking speed of device in Hz.
@@ -33,9 +33,11 @@ properties:
     description: phandle to the clock connected on rtc clock line.
     maxItems: 1
 
+  clock-names:
+    const: rtc
+
 required:
   - compatible
-  - spi-max-frequency
   - reg
   - interrupts
 
@@ -45,17 +47,33 @@ examples:
       #address-cells = <1>;
       #size-cells = <0>;
       cs-gpios = <&pioB 21 0>;
-      status = "okay";
-      wilc_spi@0 {
-        compatible = "microchip,wilc1000-spi";
+      wifi@0 {
+        compatible = "microchip,wilc1000";
         spi-max-frequency = <48000000>;
         reg = <0>;
         interrupt-parent = <&pioC>;
         interrupts = <27 0>;
         clocks = <&pck1>;
-        clock-names = "rtc_clk";
-        assigned-clocks = <&pck1>;
-        assigned-clock-rates = <32768>;
-        status = "okay";
+        clock-names = "rtc";
+      };
+    };
+
+  - |
+    mmc1: mmc@fc000000 {
+      #address-cells = <1>;
+      #size-cells = <0>;
+      pinctrl-names = "default";
+      pinctrl-0 = <&pinctrl_mmc1_clk_cmd_dat0 &pinctrl_mmc1_dat1_3>;
+      non-removable;
+      vmmc-supply = <&vcc_mmc1_reg>;
+      vqmmc-supply = <&vcc_3v3_reg>;
+      bus-width = <4>;
+      wifi@0 {
+        compatible = "microchip,wilc1000";
+        reg = <0>;
+        interrupt-parent = <&pioC>;
+        interrupts = <27 0>;
+        clocks = <&pck1>;
+        clock-names = "rtc";
       };
     };
diff --git a/drivers/staging/wilc1000/sdio.c b/drivers/staging/wilc1000/sdio.c
index 44b426874c1b..36eb589263bf 100644
--- a/drivers/staging/wilc1000/sdio.c
+++ b/drivers/staging/wilc1000/sdio.c
@@ -150,7 +150,7 @@ static int wilc_sdio_probe(struct sdio_func *func,
 	wilc->bus_data = sdio_priv;
 	wilc->dev = &func->dev;
 
-	wilc->rtc_clk = devm_clk_get(&func->card->dev, "rtc_clk");
+	wilc->rtc_clk = devm_clk_get(&func->card->dev, "rtc");
 	if (PTR_ERR_OR_ZERO(wilc->rtc_clk) == -EPROBE_DEFER)
 		return -EPROBE_DEFER;
 	else if (!IS_ERR(wilc->rtc_clk))
@@ -997,7 +997,7 @@ static int wilc_sdio_resume(struct device *dev)
 }
 
 static const struct of_device_id wilc_of_match[] = {
-	{ .compatible = "microchip,wilc1000-sdio", },
+	{ .compatible = "microchip,wilc1000", },
 	{ /* sentinel */ }
 };
 MODULE_DEVICE_TABLE(of, wilc_of_match);
diff --git a/drivers/staging/wilc1000/spi.c b/drivers/staging/wilc1000/spi.c
index 852f318a86f0..d77582c55326 100644
--- a/drivers/staging/wilc1000/spi.c
+++ b/drivers/staging/wilc1000/spi.c
@@ -189,7 +189,7 @@ static int wilc_bus_remove(struct spi_device *spi)
 }
 
 static const struct of_device_id wilc_of_match[] = {
-	{ .compatible = "microchip,wilc1000-spi", },
+	{ .compatible = "microchip,wilc1000", },
 	{ /* sentinel */ }
 };
 MODULE_DEVICE_TABLE(of, wilc_of_match);
-- 
2.24.0
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
