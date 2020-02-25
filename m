Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A73516BB14
	for <lists+driverdev-devel@lfdr.de>; Tue, 25 Feb 2020 08:41:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D3FEE20520;
	Tue, 25 Feb 2020 07:41:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0iI-60G+hxIr; Tue, 25 Feb 2020 07:41:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 2A8DB20773;
	Tue, 25 Feb 2020 07:41:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 744B91BF316
 for <devel@linuxdriverproject.org>; Tue, 25 Feb 2020 07:41:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7180E863F1
 for <devel@linuxdriverproject.org>; Tue, 25 Feb 2020 07:41:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dfnZcl+3YIQp for <devel@linuxdriverproject.org>;
 Tue, 25 Feb 2020 07:41:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa1.microchip.iphmx.com (esa1.microchip.iphmx.com
 [68.232.147.91])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D879A86554
 for <devel@driverdev.osuosl.org>; Tue, 25 Feb 2020 07:41:29 +0000 (UTC)
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
IronPort-SDR: cJfQvJ4hXM0+iyHiFBZxIFDO4qk1mQFVg4RCkYBQ6oJW74JgsKZv/uM7Be+XblJOLDi8qb7qvp
 2ympQrz1iqQC38g/S1br0wcCixfok47LhnOAVYepZRNZfQQyAiazoHbPDiicMUU71h38tAC/jo
 D4y+Ig0VjvGznwv4ifgmnQkTY1uJsCAXfprhaiM/M/THrMj5oTrKhG7rm2Fq5qz5pMjVfrp155
 5g8HKm5gobb+lVUZsNWVU4agvUYlHZeV9WxZ1UiNZIAIo7x4USrQ64E+fEN1Vv95IyHEbOT1mH
 iTU=
X-IronPort-AV: E=Sophos;i="5.70,483,1574146800"; d="scan'208";a="69675649"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 25 Feb 2020 00:41:25 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 25 Feb 2020 00:41:33 -0700
Received: from NAM02-BL2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Tue, 25 Feb 2020 00:41:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bV4XOXbyIEIatN3nMbPFcVfmynNn8Cjmh762KX1tU0VmeSMkO6abXW6aGz2Wbi268OCVI/1D67jvkl6tOFv32ByePQGczZ6CZfoyiCXL7lQHXTS9OI4L3LsyUO/mAZ3rkyoO5c1ZAFNtGwmB9oyt5gbmS12hrMMvZEeomMA5N1psz2MEXSKcpzZJMk+NxRtptx8c3hAgOht5OzHLKu5k+XzQp+w+MRHx82hwwuMPPzo2Ij0kpU2mDBN6p2Z7PKRoMvs9x1XAHblavAMYM4E5/4SpHEPYNo1HxSFKtwlK8e3v+pwG6GhnXam9cnrETkZNjuTyuw0Wfa6Y/gJNRKwCPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MbDujH185wChq8QX/moSUQB5eB5hG5vaJemsoHQdD5k=;
 b=CCuAQ1cUC555xyc9YzfXXFK7yWyospWlrylb88bBByHSg6ZkJXPKatfbxbhGUVfFmoN4EJ1xfC6gOEttTC6qxMTuTgiH3H9PeYH2YxfyK46rdRZ7NF+a0Sl8XebTaTzmuq/+OYR5JermMMrPJ6vLWuZFsJGywBzUpEuQoFagd5c2vQkBlOMKVtlyPio02TEkBEtVTHM6YBUBMJy4y1e2sxkmPMCYZBjuO8flGiREG3tt9a+3qbY4cPFY75Ll3P37UyZWjLhqPv04DFTxjhp94T8ZWDuKo25xY01MgmFYsaslCh/IcVHcLOHYnBam8TfvRkzsmxnwBIgGB+LymkRQBw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MbDujH185wChq8QX/moSUQB5eB5hG5vaJemsoHQdD5k=;
 b=fN/uoEj2vf/0DmnpfbxL6tvyZAyrYxIqwPQ5lg3GvZ/Dv7Cb8s7tqhXMbU7HknKIveUiKibX5pBKa0e95sL/5njjFdRve//eJhQZiegPdyI5W23a6L2Vfltw4UDcEFpYOCuA5shMERewd/NGoIyLJoxyIJwv/Ol9G9syYJ6yRgA=
Received: from BN6PR11MB3985.namprd11.prod.outlook.com (2603:10b6:405:7b::14)
 by BN6PR11MB4162.namprd11.prod.outlook.com (2603:10b6:405:84::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2750.21; Tue, 25 Feb
 2020 07:41:21 +0000
Received: from BN6PR11MB3985.namprd11.prod.outlook.com
 ([fe80::ec62:e7fd:f17c:dfd4]) by BN6PR11MB3985.namprd11.prod.outlook.com
 ([fe80::ec62:e7fd:f17c:dfd4%3]) with mapi id 15.20.2750.021; Tue, 25 Feb 2020
 07:41:21 +0000
From: <Ajay.Kathat@microchip.com>
To: <linux-wireless@vger.kernel.org>
Subject: [PATCH v3 17/18] dt: bindings: net: add microchip,wilc1000,spi.yaml
Thread-Topic: [PATCH v3 17/18] dt: bindings: net: add
 microchip,wilc1000,spi.yaml
Thread-Index: AQHV6674+23AU/64g0SDUHlH3hVCyg==
Date: Tue, 25 Feb 2020 07:41:20 +0000
Message-ID: <20200225074105.7740-18-ajay.kathat@microchip.com>
References: <20200225074105.7740-1-ajay.kathat@microchip.com>
In-Reply-To: <20200225074105.7740-1-ajay.kathat@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.17.1
x-originating-ip: [121.244.27.38]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 59dc1c45-048b-4b98-fb75-08d7b9c61b8e
x-ms-traffictypediagnostic: BN6PR11MB4162:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BN6PR11MB4162D0F48674CAE09B191F38E3ED0@BN6PR11MB4162.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 0324C2C0E2
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(366004)(136003)(376002)(39860400002)(346002)(199004)(189003)(81156014)(2616005)(8676002)(186003)(6512007)(6486002)(5660300002)(26005)(81166006)(8936002)(6506007)(54906003)(66476007)(66446008)(66556008)(316002)(966005)(86362001)(4326008)(71200400001)(66946007)(6916009)(2906002)(76116006)(64756008)(478600001)(91956017)(1076003)(36756003)(107886003)(142933001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN6PR11MB4162;
 H:BN6PR11MB3985.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: +0mX4ABW4xILGo6xfH8EN3UhRll6j1mT4rvDarvCRAs8cGYDN+FQu3Fd+dwcu2xj+gOGWNqeqROh6pGjr2RUFUYCYcwfTDsGZxrSsR4Ns2+UHx+UYT5joebDlHJAaVfn4qJZwfb5meojrXbg7h7SocS8wv9ZjWC0VvEETHI3lr08tsEYtxaOKUvnXtihnaPfx9jv+wS3xkDWtCQJLiadZxb0gWzimGyGeUhJLGDc5DY9GLNap+xNphZ+R1iwAZTCY+QlHn0+XPmBdwFO+0NC4TEJmpm2JuT8HP/czQjnau7p1hH2mmHUZVFPvaqs2RMXIbePlPpT+P+8qnZ4v1Qn4SRRsTE4bYkIX6bGGa5CuDi0lqZcJ7UC8VvlmvFxlK53p3xxVZtCeTtcjXrNjQKrrm4O2ZPneZJ7SU4cs7m2YPenHcnEFFMVUSHyVjggxQYXc43eIWU6BBXz+bCj6cSVkewLvLb8oVrhjbN8G2YsIgAVqUazK5uPm5w8h8tfCF6vNdYjFA2r4hGUM9557/JG8lIqmto5MMx1hvyDhpKndlmXqIUlEWxxO9Ju+AEf1vfG
x-ms-exchange-antispam-messagedata: lESX6Nxs+EyyWUjIu5ss4fWVLtAS2KHVaAz+AucjhPidwPukTQt/W9Uk8fy+FyIT4BCnmf0QT3XyEhCDKJWe4kUquSK5nT2+51LBkGOJJA1H4QQ4OC5MCQda/9kMb+n8ChvSFipuMBe8NRD5LrPTuQ==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 59dc1c45-048b-4b98-fb75-08d7b9c61b8e
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Feb 2020 07:41:20.4098 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bt8qmIseJucrvPk94vIcmsdfOlaJtKwmx6OXKKV97hFebWFRa0kaTnG/xH0CYFYz6B0sJNuOAdYNu8b7x+45/2VwUETvzFnEYB+A7N/5UAo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB4162
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

Moved '/drivers/staging/wilc1000//microchip,wilc1000,spi.yaml' to
'Documentation/devicetree/bindings/net/wireless/microchip,wilc1000,spi.yaml'.

Signed-off-by: Ajay Singh <ajay.kathat@microchip.com>
---
 .../net/wireless/microchip,wilc1000,spi.yaml  | 61 +++++++++++++++++++
 1 file changed, 61 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/net/wireless/microchip,wilc1000,spi.yaml

diff --git a/Documentation/devicetree/bindings/net/wireless/microchip,wilc1000,spi.yaml b/Documentation/devicetree/bindings/net/wireless/microchip,wilc1000,spi.yaml
new file mode 100644
index 000000000000..cc8ed64ce627
--- /dev/null
+++ b/Documentation/devicetree/bindings/net/wireless/microchip,wilc1000,spi.yaml
@@ -0,0 +1,61 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/net/wireless/microchip,wilc1000,spi.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Microchip WILC wireless SPI devicetree bindings
+
+maintainers:
+  - Adham Abozaeid <adham.abozaeid@microchip.com>
+  - Ajay Singh <ajay.kathat@microchip.com>
+
+description:
+  The wilc1000 chips can be connected via SPI. This document describes
+  the binding for the SPI connected module.
+
+properties:
+  compatible:
+    const: microchip,wilc1000-spi
+
+  spi-max-frequency:
+    description: Maximum SPI clocking speed of device in Hz.
+    maxItems: 1
+
+  reg:
+    description: Chip select address of device.
+    maxItems: 1
+
+  irq-gpios:
+    description: The GPIO phandle connect to a host IRQ.
+    maxItems: 1
+
+  clocks:
+    description: phandle to the clock connected on rtc clock line.
+    maxItems: 1
+
+required:
+  - compatible
+  - spi-max-frequency
+  - reg
+  - irq-gpios
+
+examples:
+  - |
+    spi1: spi@fc018000 {
+      #address-cells = <1>;
+      #size-cells = <0>;
+      cs-gpios = <&pioB 21 0>;
+      status = "okay";
+      wilc_spi@0 {
+        compatible = "microchip,wilc1000-spi";
+        spi-max-frequency = <48000000>;
+        reg = <0>;
+        irq-gpios = <&pioC 27 0>;
+        clocks = <&pck1>;
+        clock-names = "rtc_clk";
+        assigned-clocks = <&pck1>;
+        assigned-clock-rates = <32768>;
+        status = "okay";
+      };
+    };
-- 
2.24.0
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
