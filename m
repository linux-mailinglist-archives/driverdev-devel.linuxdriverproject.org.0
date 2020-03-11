Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C31DB1817D1
	for <lists+driverdev-devel@lfdr.de>; Wed, 11 Mar 2020 13:19:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 70A5087A62;
	Wed, 11 Mar 2020 12:19:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xDtaM+ZBvf89; Wed, 11 Mar 2020 12:19:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B645987B62;
	Wed, 11 Mar 2020 12:19:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E8FF51BF599
 for <devel@linuxdriverproject.org>; Wed, 11 Mar 2020 12:19:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E0AF886974
 for <devel@linuxdriverproject.org>; Wed, 11 Mar 2020 12:19:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AUVM9kYWEYXX for <devel@linuxdriverproject.org>;
 Wed, 11 Mar 2020 12:19:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa6.microchip.iphmx.com (esa6.microchip.iphmx.com
 [216.71.154.253])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9CA7E867FF
 for <devel@driverdev.osuosl.org>; Wed, 11 Mar 2020 12:19:34 +0000 (UTC)
Received-SPF: Pass (esa6.microchip.iphmx.com: domain of
 Ajay.Kathat@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Ajay.Kathat@microchip.com";
 x-sender="Ajay.Kathat@microchip.com"; x-conformance=spf_only;
 x-record-type="v=spf1"; x-record-text="v=spf1 mx
 a:ushub1.microchip.com a:smtpout.microchip.com
 -exists:%{i}.spf.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa6.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Ajay.Kathat@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa6.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Ajay.Kathat@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: juotVthP1GrygSgZcTWWTe6xR3smDiRWei2NRY1to0Xjt/SH+aghc2vcPgmWEAkrvPYFu9xJFE
 uYP+60rTvNuQakPm8all3KgA9WhQ9kE0DWZme7baFAnA+GoHy0F8QgieXQ0M+ACcDOQsGQOPMt
 DSGxeeI8l7cDiVabXCRxT7DyPylvBldVGInOopXumhavbsiRLcpeMs7Z18edMKXARCm3CjPn+i
 x+j4ND0nSLhvfyLZQptQ+DHwvOqqjr0Sqrn4s60jFM7HsW59v2IMMLTHb6h2HYdi7ekhZAKrWG
 QiM=
X-IronPort-AV: E=Sophos;i="5.70,540,1574146800"; 
   d="scan'208";a="5254966"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 11 Mar 2020 05:19:33 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 11 Mar 2020 05:19:29 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Wed, 11 Mar 2020 05:19:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Tf+SGv595gw3q9LsIN9scsDUvLMcXc5H5UU/MUmIlq0SQ7PdmhfMO5u8QtceZ9IiPqFBM81dZ19kb5HYI0WFQ/3fdJs5FGO9aDfWZvrYwsiKT2HpNlzAd45HivJuh7MUhwzxQsu9hn1y/gwmeEf8TMJR57nMnltz5B/SkPZx1ppzRWMX6ZynBJRxfSkrwUeuM3NnPKTi/KxwX2TeLbr1jEKL5x3EtoqgyGM8n0bws0IUOfK9pANotfkq/SdUfkQCseUgELdR9TlIXht/FTKcjVGtuEqdcyCgSMnTjhDdH4CY2WToJzh+io5Mt1V1BgMo6nq8mlE8aHd+Q7AxzbuMQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SVpx+4/LdVizlZOqNSkBGWRM9tUnSIFoY5jmtsSCed8=;
 b=FKOxN1qmHeDZ4qFtwgajBeIf9KUWuATtb3PhXaKPxzDQTNsl0NdSBjcoGcZmugnLy4Jm1o2i2FnsbOv6tVMuXogTq6hKgcQ4waly3ksxy/BRTI9G1kLJiJ1hlSyuJFlREvyqsdGq/bwzOA4F0QB0sbrO6bSe29tGDfLle3PjoHoe4Lyx2kcv7unVFBKI0slPMAzEY3mMG3Kv7tZb06oXjVD6wEKieaA6Jx4qZwemoLtlhMbhtALzsh5JH9lTbgzURotz/4XOF05WHVHmG9jsVYJVavmM9zMucvxmZt0V8CEugtwviQJjeDpDcDIzmW3DHPvq9lQHQSQn24PqpgnNGQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SVpx+4/LdVizlZOqNSkBGWRM9tUnSIFoY5jmtsSCed8=;
 b=QTwARnQvByjrEKXce+Z63p8exVm08iHCi/idrRWGyImLJdLp4VSlF7jgmYz2nvEX5DBvky1nKxyyROh9mkrLbdfPGcpoIX+n/Ta9X5g55uszdKeGWAUKc34ghjhLJ5a/4g87/xzAaW3IZZvlqcBRuVnZ5fshoZDuS6Ksk2Ba/2o=
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
Subject: [PATCH v5 17/17] wilc1000: add Makefile and Kconfig files for
 wilc1000 compilation
Thread-Topic: [PATCH v5 17/17] wilc1000: add Makefile and Kconfig files for
 wilc1000 compilation
Thread-Index: AQHV9585WUj1RfNZRkq6Vb209RV+bA==
Date: Wed, 11 Mar 2020 12:18:51 +0000
Message-ID: <20200311121809.5610-18-ajay.kathat@microchip.com>
References: <20200311121809.5610-1-ajay.kathat@microchip.com>
In-Reply-To: <20200311121809.5610-1-ajay.kathat@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.17.1
x-originating-ip: [121.244.27.38]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c089e260-7340-410f-e3e4-08d7c5b67111
x-ms-traffictypediagnostic: BYAPR11MB2805:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR11MB2805D401757C3F3DDC876E51E3FC0@BYAPR11MB2805.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:4941;
x-forefront-prvs: 0339F89554
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(376002)(136003)(346002)(396003)(366004)(199004)(478600001)(2906002)(71200400001)(8936002)(81166006)(81156014)(6666004)(316002)(5660300002)(54906003)(6506007)(1076003)(8676002)(6512007)(86362001)(36756003)(107886003)(4326008)(6486002)(76116006)(91956017)(66476007)(64756008)(66446008)(66946007)(66556008)(6916009)(2616005)(186003)(26005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR11MB2805;
 H:BYAPR11MB3125.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: uWizUiijC+Unplqvv/ZayVrp+NgLx9VzkwzCLvnUmg+Srjg2wkDrnLMJYgK7noFnoO3YXvY7Gd/tCrP/IHLi+3g83AMJuGB4Gw/5m+n8O23nYXKCREIU5Kxcwzr5CuyJ4u5VMLUIDbLTwigwInbIUtDYt2WFe0kXK0H2Mac/uWnZCXaDsXREbYgki0iSA1B+K5S2+6u7NrvzuSrkREGycaOqfIdrvJ2dUXqFiVGbAZjBbqPMc1Sl9yMHBffxGSomLLuMjosQMhbsfG4IseJ7xRCs/4RAEaGM7Y9ONuTU5qk2aZMBglQT2g1eC7c1/7v+Onoz6trpkHKIfofmkTA2/Oopb0YdjTEooXbVlfGAJrOE89a8K0QAoePZtXe1fM+TBnKWJhAEzQH3IsgUsbUxGEB2zofLPSp6AaTTN100fcfywK7tu6MjrlzbFAlfC/6y
x-ms-exchange-antispam-messagedata: hScFKwJKAkMW+sqKMQjoX97NH7z8tcGUXAnNNZFPBlJORGllhVaRoapF5shlGaven+3GEv0+xiPXTdQalpVm0oQ1jtacDBg+rcZ0zS6zsPKjtVHvrEkMmd+loBwnE0tupoZP0iDE820hT3TOrZDGSg==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: c089e260-7340-410f-e3e4-08d7c5b67111
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Mar 2020 12:18:51.3783 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CLdIwaIiB72eEF8tbTNgvIm1bXq51dNRha7+aKOhIqAXuTzwLgcWF1SMLMlqsMKf1m9jZTD36KMUAPjD9IS+v1FygZN2Hvreyzn4WoxDktY=
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

Added Makefile and Kconfig files for compiling wilc1000 module from
'drivers/net/wireless/microchip/'.

Signed-off-by: Ajay Singh <ajay.kathat@microchip.com>
---
 drivers/net/wireless/Kconfig                  |  1 +
 drivers/net/wireless/Makefile                 |  1 +
 drivers/net/wireless/microchip/Kconfig        | 15 +++++++
 drivers/net/wireless/microchip/Makefile       |  2 +
 .../net/wireless/microchip/wilc1000/Kconfig   | 42 +++++++++++++++++++
 .../net/wireless/microchip/wilc1000/Makefile  | 14 +++++++
 drivers/staging/Kconfig                       |  2 -
 drivers/staging/Makefile                      |  1 -
 8 files changed, 75 insertions(+), 3 deletions(-)
 create mode 100644 drivers/net/wireless/microchip/Kconfig
 create mode 100644 drivers/net/wireless/microchip/Makefile
 create mode 100644 drivers/net/wireless/microchip/wilc1000/Kconfig
 create mode 100644 drivers/net/wireless/microchip/wilc1000/Makefile

diff --git a/drivers/net/wireless/Kconfig b/drivers/net/wireless/Kconfig
index 1c98d781ae49..86faf8f3d9b0 100644
--- a/drivers/net/wireless/Kconfig
+++ b/drivers/net/wireless/Kconfig
@@ -47,6 +47,7 @@ source "drivers/net/wireless/st/Kconfig"
 source "drivers/net/wireless/ti/Kconfig"
 source "drivers/net/wireless/zydas/Kconfig"
 source "drivers/net/wireless/quantenna/Kconfig"
+source "drivers/net/wireless/microchip/Kconfig"
 
 config PCMCIA_RAYCS
 	tristate "Aviator/Raytheon 2.4GHz wireless support"
diff --git a/drivers/net/wireless/Makefile b/drivers/net/wireless/Makefile
index 6cfe74515c95..f9a51c2889ca 100644
--- a/drivers/net/wireless/Makefile
+++ b/drivers/net/wireless/Makefile
@@ -19,6 +19,7 @@ obj-$(CONFIG_WLAN_VENDOR_ST) += st/
 obj-$(CONFIG_WLAN_VENDOR_TI) += ti/
 obj-$(CONFIG_WLAN_VENDOR_ZYDAS) += zydas/
 obj-$(CONFIG_WLAN_VENDOR_QUANTENNA) += quantenna/
+obj-$(CONFIG_WLAN_VENDOR_MICROCHIP) += microchip/
 
 # 16-bit wireless PCMCIA client drivers
 obj-$(CONFIG_PCMCIA_RAYCS)	+= ray_cs.o
diff --git a/drivers/net/wireless/microchip/Kconfig b/drivers/net/wireless/microchip/Kconfig
new file mode 100644
index 000000000000..a6b46fb6b1ec
--- /dev/null
+++ b/drivers/net/wireless/microchip/Kconfig
@@ -0,0 +1,15 @@
+# SPDX-License-Identifier: GPL-2.0
+config WLAN_VENDOR_MICROCHIP
+	bool "Microchip devices"
+	default y
+	help
+	If you have a wireless card belonging to this class, say Y.
+
+	Note that the answer to this question doesn't directly affect the
+	kernel: saying N will just cause the configurator to skip all the
+	questions about these cards. If you say Y, you will be asked for
+	your specific card in the following questions.
+
+if WLAN_VENDOR_MICROCHIP
+source "drivers/net/wireless/microchip/wilc1000/Kconfig"
+endif # WLAN_VENDOR_MICROCHIP
diff --git a/drivers/net/wireless/microchip/Makefile b/drivers/net/wireless/microchip/Makefile
new file mode 100644
index 000000000000..73b763c7393e
--- /dev/null
+++ b/drivers/net/wireless/microchip/Makefile
@@ -0,0 +1,2 @@
+# SPDX-License-Identifier: GPL-2.0
+obj-$(CONFIG_WILC1000)		+= wilc1000/
diff --git a/drivers/net/wireless/microchip/wilc1000/Kconfig b/drivers/net/wireless/microchip/wilc1000/Kconfig
new file mode 100644
index 000000000000..59e58550d139
--- /dev/null
+++ b/drivers/net/wireless/microchip/wilc1000/Kconfig
@@ -0,0 +1,42 @@
+# SPDX-License-Identifier: GPL-2.0
+config WILC1000
+	tristate
+	help
+	  This module only support IEEE 802.11n WiFi.
+
+config WILC1000_SDIO
+	tristate "Atmel WILC1000 SDIO (WiFi only)"
+	depends on CFG80211 && INET && MMC
+	select WILC1000
+	help
+	  This module adds support for the SDIO interface of adapters using
+	  WILC1000 chipset. The Atmel WILC1000 SDIO is a full speed interface.
+	  It meets SDIO card specification version 2.0. The interface supports
+	  the 1-bit/4-bit SD transfer mode at the clock range of 0-50 MHz.
+	  The host can use this interface to read and write from any register
+	  within the chip as well as configure the WILC1000 for data DMA.
+	  To use this interface, pin9 (SDIO_SPI_CFG) must be grounded. Select
+	  this if your platform is using the SDIO bus.
+
+config WILC1000_SPI
+	tristate "Atmel WILC1000 SPI (WiFi only)"
+	depends on CFG80211 && INET && SPI
+	select WILC1000
+	help
+	  This module adds support for the SPI interface of adapters using
+	  WILC1000 chipset. The Atmel WILC1000 has a Serial Peripheral
+	  Interface (SPI) that operates as a SPI slave. This SPI interface can
+	  be used for control and for serial I/O of 802.11 data. The SPI is a
+	  full-duplex slave synchronous serial interface that is available
+	  immediately following reset when pin 9 (SDIO_SPI_CFG) is tied to
+	  VDDIO. Select this if your platform is using the SPI bus.
+
+config WILC1000_HW_OOB_INTR
+	bool "WILC1000 out of band interrupt"
+	depends on WILC1000_SDIO
+	help
+	  This option enables out-of-band interrupt support for the WILC1000
+	  chipset. This OOB interrupt is intended to provide a faster interrupt
+	  mechanism for SDIO host controllers that don't support SDIO interrupt.
+	  Select this option If the SDIO host controller in your platform
+	  doesn't support SDIO time devision interrupt.
diff --git a/drivers/net/wireless/microchip/wilc1000/Makefile b/drivers/net/wireless/microchip/wilc1000/Makefile
new file mode 100644
index 000000000000..a3305a0a888a
--- /dev/null
+++ b/drivers/net/wireless/microchip/wilc1000/Makefile
@@ -0,0 +1,14 @@
+# SPDX-License-Identifier: GPL-2.0
+obj-$(CONFIG_WILC1000) += wilc1000.o
+
+ccflags-y += -DFIRMWARE_1002=\"atmel/wilc1002_firmware.bin\" \
+		-DFIRMWARE_1003=\"atmel/wilc1003_firmware.bin\"
+
+wilc1000-objs := cfg80211.o netdev.o mon.o \
+			hif.o wlan_cfg.o wlan.o
+
+obj-$(CONFIG_WILC1000_SDIO) += wilc1000-sdio.o
+wilc1000-sdio-objs += sdio.o
+
+obj-$(CONFIG_WILC1000_SPI) += wilc1000-spi.o
+wilc1000-spi-objs += spi.o
diff --git a/drivers/staging/Kconfig b/drivers/staging/Kconfig
index baccd7c883cc..ef5e62e46704 100644
--- a/drivers/staging/Kconfig
+++ b/drivers/staging/Kconfig
@@ -80,8 +80,6 @@ source "drivers/staging/fbtft/Kconfig"
 
 source "drivers/staging/fsl-dpaa2/Kconfig"
 
-source "drivers/staging/wilc1000/Kconfig"
-
 source "drivers/staging/most/Kconfig"
 
 source "drivers/staging/ks7010/Kconfig"
diff --git a/drivers/staging/Makefile b/drivers/staging/Makefile
index fdd03fd6e704..4db5165cb08b 100644
--- a/drivers/staging/Makefile
+++ b/drivers/staging/Makefile
@@ -30,7 +30,6 @@ obj-$(CONFIG_UNISYSSPAR)	+= unisys/
 obj-$(CONFIG_COMMON_CLK_XLNX_CLKWZRD)	+= clocking-wizard/
 obj-$(CONFIG_FB_TFT)		+= fbtft/
 obj-$(CONFIG_FSL_DPAA2)		+= fsl-dpaa2/
-obj-$(CONFIG_WILC1000)		+= wilc1000/
 obj-$(CONFIG_MOST)		+= most/
 obj-$(CONFIG_KS7010)		+= ks7010/
 obj-$(CONFIG_GREYBUS)		+= greybus/
-- 
2.24.0
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
