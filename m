Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD6A41817CF
	for <lists+driverdev-devel@lfdr.de>; Wed, 11 Mar 2020 13:19:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 60F5587B0F;
	Wed, 11 Mar 2020 12:19:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ko7+eNGjcJI0; Wed, 11 Mar 2020 12:19:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D6FAF87A72;
	Wed, 11 Mar 2020 12:19:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AA6281BF599
 for <devel@linuxdriverproject.org>; Wed, 11 Mar 2020 12:19:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A3E9B84B60
 for <devel@linuxdriverproject.org>; Wed, 11 Mar 2020 12:19:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id abeoPk6iP5Bu for <devel@linuxdriverproject.org>;
 Wed, 11 Mar 2020 12:19:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa5.microchip.iphmx.com (esa5.microchip.iphmx.com
 [216.71.150.166])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 182B684A92
 for <devel@driverdev.osuosl.org>; Wed, 11 Mar 2020 12:19:36 +0000 (UTC)
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
IronPort-SDR: BVM9nGmjl6Z4UpKIFNkF9FJaL+Ep/LyXLSxcxNA5fsreYyi3P+OIqVix0oCHMTfW5M5A0FcKqx
 RBNENoiL3BHS8X6IOGXPilKLtAWzDonFjkWifan0nUlhrW21/k98+CAMUSvddBFHVoGxGsZSrN
 jA6yZivPGn+C/5MaDjsUFPwYQlnraMx+79rNGMfXHN3fs3c+3TiNzcQDn4ouBNrg5KMabItJCH
 3Jz9bqt9vkCiOOGx2QSIHUpgRjG0FzxlNogaeXwtUCKjoISHNrtvEJREsplmVl7W3F50aD9tgD
 jMQ=
X-URL-LookUp-ScanningError: 1
X-IronPort-AV: E=Sophos;i="5.70,540,1574146800"; d="scan'208";a="68440826"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 11 Mar 2020 05:19:29 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 11 Mar 2020 05:19:28 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 11 Mar 2020 05:19:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IL/bgsxzOqNqupXFJNOZAjUGbzx8+CaQ/MmpbfwVaiH0vLuHn3ZAG5omPJBxIK+uGV9ynPC0Ygu8uR++cHPjjzYqcIUMjoorwX8iHAzFz6p/j2CrUcejCErlh9BvHNuN9/yKg2jT6eXaG256bmYmn98dj3xN0v5enFSy4HW5xOEUf8FSa2b4JmW1MSlZuF27D6/elAC2+Dc7/JtZrkU/5Qi19FjIZjJftOZbCUbEnJ1EBBaTFUgKG/RdBsIdvt9Mox9YfHzbf/z9Tidr9CssGMVdhZrJwndkSeyZ6eCB4REAvd8OltxnF6THXzLj/Kv+mnzT/Y17j29bNebtQ1Q5Ww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kTZmW6A2sqBlCHKfIS1zZJofCbXze8wmskVkelWwjYY=;
 b=nCbU4rwea8SxKZldX4FO+gDtPq4tPghx0406BePg+eUIIAf34u5qCCYDcQ5Cg6cRNg0dB2ohqJNjnnQz7kZIrF1y46WpbIOOajNRHmedFwH32yiMJMCyFY+BXX7YvfF8ILHehEkQUjh6D7t6WeHrrm4c12PBCXO6TTlxzhhjGN4MVFN0XMyvlECKsu8rrxl8rEZVhL+L6CCDrvP0LAv5hcnDVo8QKNr51fvC2EUzDaII9ybjLTovuRdrEBCoK0ECecmb9Ta6H5uqQ1PnVPZAL3tqEy3WkW/kKyq9YMizSty8XzxqJaH8qv7yAi1PxYbgCeUyoZi0X8oiStAJv1bReQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kTZmW6A2sqBlCHKfIS1zZJofCbXze8wmskVkelWwjYY=;
 b=r94q7k2QU/vz1P5Zcz/CQKifOGPB/MiePGj1DSvAgeWCl6Muv8ytFNzVqoWqXCMMnyncgs2KHRPrDFFgHbofK+KG4L84xBwqNHtQFpo5FCM22ZnCryz6dK+2gK+0yR6t2pYc3TZ6fP5Fet1fyhxdBxektzWWlFUwClBJE5+FkIA=
Received: from BYAPR11MB3125.namprd11.prod.outlook.com (2603:10b6:a03:8e::32)
 by BYAPR11MB2805.namprd11.prod.outlook.com (2603:10b6:a02:c1::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2814.14; Wed, 11 Mar
 2020 12:19:26 +0000
Received: from BYAPR11MB3125.namprd11.prod.outlook.com
 ([fe80::c27:87cf:ca4:d86e]) by BYAPR11MB3125.namprd11.prod.outlook.com
 ([fe80::c27:87cf:ca4:d86e%4]) with mapi id 15.20.2793.013; Wed, 11 Mar 2020
 12:19:26 +0000
From: <Ajay.Kathat@microchip.com>
To: <linux-wireless@vger.kernel.org>
Subject: [PATCH v5 16/17] dt: bindings: net: add microchip,wilc1000.yaml
Thread-Topic: [PATCH v5 16/17] dt: bindings: net: add microchip,wilc1000.yaml
Thread-Index: AQHV9585ZPX9+wP3gkivIpFS8gVFTw==
Date: Wed, 11 Mar 2020 12:18:50 +0000
Message-ID: <20200311121809.5610-17-ajay.kathat@microchip.com>
References: <20200311121809.5610-1-ajay.kathat@microchip.com>
In-Reply-To: <20200311121809.5610-1-ajay.kathat@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.17.1
x-originating-ip: [121.244.27.38]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 09399071-891b-42f1-5d59-08d7c5b670d3
x-ms-traffictypediagnostic: BYAPR11MB2805:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR11MB280545F481A727669503FE11E3FC0@BYAPR11MB2805.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:3513;
x-forefront-prvs: 0339F89554
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(376002)(136003)(346002)(396003)(366004)(199004)(478600001)(966005)(2906002)(71200400001)(8936002)(81166006)(81156014)(6666004)(316002)(5660300002)(54906003)(6506007)(1076003)(8676002)(6512007)(86362001)(36756003)(107886003)(4326008)(6486002)(76116006)(91956017)(66476007)(64756008)(66446008)(66946007)(66556008)(6916009)(2616005)(186003)(26005)(142933001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR11MB2805;
 H:BYAPR11MB3125.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: w1CZFHNn3QHFBrffj/Y6um8F+mRcEfb8Elgt81z9GPuZdPeEwDjWnxbSUnih38H4j4/p+d78CRwnGl7BA1oXnynO4pcG3bGs3XPm6pVqKr3NaRr6Y/TWbjdw0tIDeRNeEe2Pi4Th5pnTrthg5C02LHdjERzSnGbFkKJ2/geCTqLZLdCNXyNX5E3P0rfZZh3XjWSoFRlQPxPPa5kY8oj6kwXmoBAMIZBpLvJq3Zx/h0uibktA6eRPjomTDgfYxXVxHXuvb+Mf+VjDbZH2+etTfSpQwscuKyd8V/OI5gMpuPsTOMbEjkEtFlr2o5czehMNUfMAkTqn+DlIkfMq8owFGMN7qB5Z75zJumgzKMbZ17lYNH5MHwXBtWmnovGXd7AxaCZ8+iCdCaGA5t9CYlhRkKYdLVaUsHIA+G8xt6B8ih2jtPO/U7VeZFTlm/BM+aZEVzLDv2drKljeNCchMiPm1mQPZSUSykNIPUlULk4fIJ18HBTfRWk6L+X7auH9dHJTKbaxJzAUobO7e4MQ7aDdVqbsYvSSvs8+KQP9bsS3yzN1vkqFhne3kpdMzfNkwHs9
x-ms-exchange-antispam-messagedata: 1+Yq3RCtFfhQ2Q8asITCiyQqHlk8coRmO6lwyDQAR9Ba9hRpMs3L/Rwo2HJ5OGf3H4vBgsr3c4sxfwpNqQl7JAuxC3JdpEEBfLhhnIwoGjA70BQitWvyFkn0S/AW4P7Dwq7yeDAC1m6FsZ9/DMTX1A==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 09399071-891b-42f1-5d59-08d7c5b670d3
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Mar 2020 12:18:50.6907 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 30TbVBpr7fCxpavpfObHcHlyn8njjsBaoCGwDSqfh/vkYA53jaUNl8GQoA5zP/TAv/JR+ohS8F7Z688iwE8vuENCEtjHE4pITmg6tJ4Liiw=
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

This file describes the binding details to connect wilc1000 device. It's
moved from staging to 'Documentation/devicetree/bindings/net/wireless'
path.

Signed-off-by: Ajay Singh <ajay.kathat@microchip.com>
---
 .../net/wireless/microchip,wilc1000.yaml      | 72 +++++++++++++++++++
 1 file changed, 72 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/net/wireless/microchip,wilc1000.yaml

diff --git a/Documentation/devicetree/bindings/net/wireless/microchip,wilc1000.yaml b/Documentation/devicetree/bindings/net/wireless/microchip,wilc1000.yaml
new file mode 100644
index 000000000000..bc6cc5d3f347
--- /dev/null
+++ b/Documentation/devicetree/bindings/net/wireless/microchip,wilc1000.yaml
@@ -0,0 +1,72 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/net/wireless/microchip,wilc1000.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Microchip WILC wireless devicetree bindings
+
+maintainers:
+  - Adham Abozaeid <adham.abozaeid@microchip.com>
+  - Ajay Singh <ajay.kathat@microchip.com>
+
+description:
+  The wilc1000 chips can be connected via SPI or SDIO. This document
+  describes the binding to connect wilc devices.
+
+properties:
+  compatible:
+    const: microchip,wilc1000
+
+  spi-max-frequency: true
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    description: phandle to the clock connected on rtc clock line.
+    maxItems: 1
+
+  clock-names:
+    const: rtc
+
+required:
+  - compatible
+  - interrupts
+
+examples:
+  - |
+    spi1: spi@fc018000 {
+      #address-cells = <1>;
+      #size-cells = <0>;
+      cs-gpios = <&pioB 21 0>;
+      wifi@0 {
+        compatible = "microchip,wilc1000";
+        spi-max-frequency = <48000000>;
+        reg = <0>;
+        interrupt-parent = <&pioC>;
+        interrupts = <27 0>;
+        clocks = <&pck1>;
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
+      };
+    };
-- 
2.24.0
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
