Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DAE1F204FD9
	for <lists+driverdev-devel@lfdr.de>; Tue, 23 Jun 2020 13:00:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 85D9D89515;
	Tue, 23 Jun 2020 11:00:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qwgkb+KVyzIC; Tue, 23 Jun 2020 11:00:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D9DBC89292;
	Tue, 23 Jun 2020 11:00:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id F35DA1BF284
 for <devel@linuxdriverproject.org>; Tue, 23 Jun 2020 11:00:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id ED9792DEBA
 for <devel@linuxdriverproject.org>; Tue, 23 Jun 2020 11:00:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DUeMYsNGzl-z for <devel@linuxdriverproject.org>;
 Tue, 23 Jun 2020 11:00:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa1.microchip.iphmx.com (esa1.microchip.iphmx.com
 [68.232.147.91])
 by silver.osuosl.org (Postfix) with ESMTPS id 4DF63204DC
 for <devel@driverdev.osuosl.org>; Tue, 23 Jun 2020 11:00:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1592910021; x=1624446021;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=zABJm/8uTVo1Zqo/pU3JQNSicYTtZmjzoKQnKb3yuxw=;
 b=O9jPHhODC5HjqqcJ0lOigLAASsj/5P2s4BS8F4fKmVLs+l++jhCkoDET
 QwmtAxfMzdDpaEx4Wl82Gcw4/zmUwVZVKSpaNGi7/5xho1cCeLfFRRgcI
 HUwE/ZBYFCH35lqu1K5sW+k0idfM784llaVOzm3zFaUg7OAS5A5j9WCrX
 PZ3S1apcVF3GZsytMKby7XRSppp9dhMXT5V9MDfJi+bNpetwPde1PMCfl
 7/erWY7Wg92/JjFzv+GQWT80s2JFl9Aihjh1fh3DbYo7v+WfES0zgNx61
 liMuL/qhNWFWTJ/9EZ2olSpze4j5YJ3oWgUqWEBYbp+rUc/hHDSJ3LLRY Q==;
IronPort-SDR: O+rU9BdF1nApBX+zGc8w7p1/M1Y0Ybk27JNct4pYLEku+nbADmPdstYRJ2KXhT60CDCQujiJxe
 925c4GIJ+DRbgSJXXiBJDNYM0bx1XUCAUkmX9Tosrzbu+Fzkn41DE9TmQAwFAeZdlfKU6MF6kX
 NpV1WtVn0RTXGnSZnIx1F47vICJcc0m/XrAhnM9KnlkR7NVFqSt4PSyEBXTYwjeMX5pckrRhZc
 vrzYi/hsCz1mRYUpzfkhFyuRFUVOtdCcxcpUwfonNHBzp0ZIiRdwAmjTWiMb5BhLcrbPrJVRpT
 Wso=
X-IronPort-AV: E=Sophos;i="5.75,271,1589266800"; d="scan'208";a="84732801"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 23 Jun 2020 04:00:20 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Tue, 23 Jun 2020 04:00:20 -0700
Received: from NAM02-CY1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1979.3 via Frontend
 Transport; Tue, 23 Jun 2020 04:00:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nnRgGHfqWX9y4zdenhKxNlcJclEaPh3RDcbPR6Pgi+outbYk5fF+qzvsN7PpjMTzYPXwW+HPryQ5iRvNWV3pzJIf9wmh1jMo4myOgH4mLDuYO6mYZONjYFVN8eHXfS/t1rUTnghAbw9Qt0UA1eqHXBfLQSgLL0hhIxcjLeKG3Oc2SxuGh77ruLOu5/W85DLArgNPiOcTnoCZnsdZWQ03atoCnBzFo263NjlYxzg1tfVQT1fqld5dBkZdc+IndbsSS2n28axoIqIQnb3VX50u7tN1Bv/OGG1F4B/X15JxxOAykjl/2Oj417C/C4iG/43qe8jWsEOSKTsjM4qHjlAEGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DZljk5c9GnuhD5YQB6Y1b1g5lbMkxRK/ILGmsC9jgrs=;
 b=XMX4QxuQo6dJ2BU1qX3Pzpde5TSKwSkmVE3elp11B11WmN+1Kd8lxN9JIVo+IHETuvVCrYJzS0sym/SFibviXKrRwkQ+YPUygQdfkIjF0w+yodsUVHqjs+VbqMvjpoiM1Mm1GZ9jWuk072WsBxszs2lffdPtWEcmHcoZHv0LE4EHiFPSWiUs8Hn0oJ4MC8jiFYB33YritPxHz5WUWEli/nWZsjY+KzL78CAgL5jHR4usQikkMz+ZsFz5DBE4DQ7SgIUMf7VUbMkoN4Ea0KNoHl6rUXYT49llxIR87EO4GVfj4/S3dk9z8jpcTJ4pew8w4M1EG51Mc7Bm+cLwK6zLew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DZljk5c9GnuhD5YQB6Y1b1g5lbMkxRK/ILGmsC9jgrs=;
 b=q1mb+wAvdqxtEEUsHDYBKuImcOMXujE2vYnajn/6VOem6NYR+pGda6PoU1RQTEkWrKpicVayZCRcUBtwSgFC9NhfhQTmw+wBwD6XdlxQrnrg9RJAU6dgXo4nYxhktbcPpazQFKH99dvTwdfUpd7P7UrjQ98E0xzpLeS1J1LLUsI=
Received: from MN2PR11MB4030.namprd11.prod.outlook.com (2603:10b6:208:156::32)
 by MN2PR11MB3551.namprd11.prod.outlook.com (2603:10b6:208:ea::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3109.22; Tue, 23 Jun
 2020 11:00:14 +0000
Received: from MN2PR11MB4030.namprd11.prod.outlook.com
 ([fe80::3874:6ace:6aec:deed]) by MN2PR11MB4030.namprd11.prod.outlook.com
 ([fe80::3874:6ace:6aec:deed%7]) with mapi id 15.20.3109.027; Tue, 23 Jun 2020
 11:00:14 +0000
From: <Ajay.Kathat@microchip.com>
To: <linux-wireless@vger.kernel.org>
Subject: [PATCH v7 16/17] dt: bindings: net: add microchip,wilc1000.yaml
Thread-Topic: [PATCH v7 16/17] dt: bindings: net: add microchip,wilc1000.yaml
Thread-Index: AQHWSU148OwZ8rIvPku+2m3lb4p0wQ==
Date: Tue, 23 Jun 2020 11:00:14 +0000
Message-ID: <20200623110000.31559-17-ajay.kathat@microchip.com>
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
x-ms-office365-filtering-correlation-id: 5f005f9d-6b05-4cee-49e4-08d817649b6a
x-ms-traffictypediagnostic: MN2PR11MB3551:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB355133B035282E0A36854626E3940@MN2PR11MB3551.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:4303;
x-forefront-prvs: 04433051BF
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 7P3xZoKLxRw+rUT3TsynM/sQBdOQN5Mn2JhBWRalM+Xnd9aH28LjnfsJpVImlBGa99oO3MvLJPRE47YbjGmPyMt4aL7x+RiXpg7K1cUSRdUQtRD572c8bpgrr3x7AMb6S21yRkJHDlPyGAZj7dqnzUJW3WdJwyFd5VH8Ws2eCboy5dSyME0EfEq1IMwPkNEfjfQtcsPLOSwSp9t05MQ+BNR95bBr6OXZA7mtCzYyRTo10mSbl/K/FeYBu1hAGEzpPRgsv32FJ5DhXIoYyPCy0SyLL9qs6/9U2JNg8F3XozZANHDugUJJoOhqs+G1tncDbMm+A4x7EerKL6A8W8PDM/4HJqmD0c1c3TKsgmOiH+wL7a6KedYoNRpi5B2udp+Wclrl70R/unR6UhtfjSqqof12Smrwpxcwov9yBueFlFC7NvQ3SCvAsRFCczulzeS4
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB4030.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(366004)(136003)(346002)(396003)(376002)(39860400002)(8676002)(83380400001)(966005)(36756003)(2906002)(186003)(6506007)(86362001)(2616005)(4326008)(107886003)(26005)(6486002)(6916009)(5660300002)(55236004)(1076003)(478600001)(66446008)(66476007)(66556008)(64756008)(91956017)(76116006)(66946007)(6512007)(54906003)(316002)(71200400001)(8936002)(142933001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: BRX5M2UKrgHYtj/bWfUoU5vsh2ogoypYi8KHyjJTH2L3KBMxRcdSkAOaS3lecjZtHiD7kOHhqCz1HlbAy8DTAt8ooDEX/gHAW/3Bqd53xYwQH4g+GoLnfTU+32UtGhnsD6rLz4t3uK7VBj/UnX7Waa1l/EZJO73AMrX5jnfJf5asaDxE2thULXtLmNMDaW+m+c1UT+14PxeU3JXZPKjFM1RRzFXPp+8gAarQs7B9oR6yjNuV2eW1bRcH5tHVqS/esJftLyJwi7Fw5/IozXBoR417s2nVz/IIFcroTNz7IXM7p76zT9lExhS4/W3KvS6nbUkSEdG5UQySW7Fw5D9fFYMxbSWJpYZ7JIjAHZdWaLezdV9YdFOXmaua5GaYdbKRbxMvD6Ai0muX9bIsQEP5drFLZBk3ODkIe6JaG6Lah2I28NduiLiGv7KCTjcQUjGSi1+UIFITSuQzQydVJ9iRAbvfAWxVZ13Omt6M2IrzgBnIJXVlqrhga4PRFLZUbkpx
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 5f005f9d-6b05-4cee-49e4-08d817649b6a
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jun 2020 11:00:14.3208 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WdB/cL02bj4g2xbiWRxu99K/08zc7aBTf5sIV99qPD23G4krDQv/dcF0wdFNWD8w2pg4p9CAae1lDTIQ7aOmJ/315nqkzuj9aCU1ibjEq6M=
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

This file describes the binding details to connect wilc1000 device. It's
moved from staging to 'Documentation/devicetree/bindings/net/wireless'
path.

Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Ajay Singh <ajay.kathat@microchip.com>
---
 This patch was reviewed earlier with previous version[v6] of series [1].

 [1]. https://lore.kernel.org/linux-wireless/20200405013235.GA24105@bogus

 .../net/wireless/microchip,wilc1000.yaml      | 71 +++++++++++++++++++
 1 file changed, 71 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/net/wireless/microchip,wilc1000.yaml

diff --git a/Documentation/devicetree/bindings/net/wireless/microchip,wilc1000.yaml b/Documentation/devicetree/bindings/net/wireless/microchip,wilc1000.yaml
new file mode 100644
index 000000000000..2c320eb2a8c4
--- /dev/null
+++ b/Documentation/devicetree/bindings/net/wireless/microchip,wilc1000.yaml
@@ -0,0 +1,71 @@
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
+    spi {
+      #address-cells = <1>;
+      #size-cells = <0>;
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
+    mmc {
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
