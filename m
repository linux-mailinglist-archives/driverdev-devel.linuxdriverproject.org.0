Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F135DAF06
	for <lists+driverdev-devel@lfdr.de>; Thu, 17 Oct 2019 16:02:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4F33F86D8C;
	Thu, 17 Oct 2019 14:02:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jdjmbKGFad44; Thu, 17 Oct 2019 14:02:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 80BD686D92;
	Thu, 17 Oct 2019 14:02:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E5A2B1BF834
 for <devel@linuxdriverproject.org>; Thu, 17 Oct 2019 14:02:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id DEDC2885F4
 for <devel@linuxdriverproject.org>; Thu, 17 Oct 2019 14:02:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TXeOTnJTx49l for <devel@linuxdriverproject.org>;
 Thu, 17 Oct 2019 14:02:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx0a-00128a01.pphosted.com (mx0a-00128a01.pphosted.com
 [148.163.135.77])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E2DD4885E8
 for <devel@driverdev.osuosl.org>; Thu, 17 Oct 2019 14:02:31 +0000 (UTC)
Received: from pps.filterd (m0167088.ppops.net [127.0.0.1])
 by mx0a-00128a01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x9HDwSGw010429; Thu, 17 Oct 2019 10:02:28 -0400
Received: from pps.reinject (localhost [127.0.0.1])
 by mx0a-00128a01.pphosted.com with ESMTP id 2vk8pb068v-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 17 Oct 2019 10:02:25 -0400
Received: from m0167088.ppops.net (m0167088.ppops.net [127.0.0.1])
 by pps.reinject (8.16.0.36/8.16.0.36) with SMTP id x9HE2O0e007859;
 Thu, 17 Oct 2019 10:02:24 -0400
Received: from nam05-co1-obe.outbound.protection.outlook.com
 (mail-co1nam05lp2059.outbound.protection.outlook.com [104.47.48.59])
 by mx0a-00128a01.pphosted.com with ESMTP id 2vk8pb068s-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 17 Oct 2019 10:02:24 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=C+YvpDK7nKj6PX0KVGIKxCALP2Firuv2+tUqYYc1Bat1DqKZtZzN+PvSI07TGKtaj/D2z8UNkCoB1NW98OYTlpzOuuxoCLp51Xb1b+uy/EwpZj+HDqi+k7iKInwiAAIFzJjVK/06nYzKtRKEQi1UxTZ7iIzX7bakRCDuFlmKroKF0zFtTAhu0+5bxN9ea+9o7tQFfzmxI7K7AcpRPI2RHgBEpF65fQ+l0j6GfTE3MsWFLH+k0ubfNiCjAWrihwJhrHvBODZtYC02asydjKm2TxirDGFYfI6nlvslVM9MvjK83WQeLhZn210+/EBNt1snzCwxMp4lBacujRHEJeeyOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Q/7dtWyDCMdyPrdY2vqBH/9RVkCLq+RVOzGwT0vSqlI=;
 b=Q62rWPtuFtaQbCoP3nKLzQ2IAdZckwkJ6WPDSdLPdzFOFb+j+qmy+/XYXn/rZzeX7h0EISxkbYiYh2UPmMZsFqHEcFqmqgeKd0JRlvN5HC3s+OaLW5kR7T2VnvZ2V+vstycoLxwY+QS1PEpqbwTWCrP64Ktjku5lA7TakEUcXaTvwXHbeB8FEaTv0RiuqmIPWk6zSbFM3plsXmtv4r1DdOIc6Cwvosc5EIG2/N34n0hoLDiaOXh2XB6m8fnYtujy4aEQfd54reoB/AevX2xKc8iqmmo3jK+HjVG9guEcI2mf3ePp55g2tQBQpuygRu+kWtb+1WEgo4UaEdgwnmg03w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 137.71.25.57) smtp.rcpttodomain=huawei.com smtp.mailfrom=analog.com;
 dmarc=bestguesspass action=none header.from=analog.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=analog.onmicrosoft.com; s=selector2-analog-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Q/7dtWyDCMdyPrdY2vqBH/9RVkCLq+RVOzGwT0vSqlI=;
 b=tl136InvvGQ141xqCk2Tq22BcMmMT4TIlYahRpu6v2tM33cKRYa5ZBFGhW5TLDZY02j9LwTwDt7hTi6vNSE5AndVWMJfQSexcEg6HpvNVUphz525nHEX7QD1EKQ6Caaz7ePBUDGoGawlQW2JLmHlsmSDbYwcEs/DwoQgwjxQ9UA=
Received: from DM3PR03CA0012.namprd03.prod.outlook.com (2603:10b6:0:50::22) by
 BY5PR03MB5252.namprd03.prod.outlook.com (2603:10b6:a03:224::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2347.17; Thu, 17 Oct
 2019 14:02:22 +0000
Received: from BL2NAM02FT024.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e46::206) by DM3PR03CA0012.outlook.office365.com
 (2603:10b6:0:50::22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2347.16 via Frontend
 Transport; Thu, 17 Oct 2019 14:02:22 +0000
Received-SPF: Pass (protection.outlook.com: domain of analog.com designates
 137.71.25.57 as permitted sender) receiver=protection.outlook.com;
 client-ip=137.71.25.57; helo=nwd2mta2.analog.com;
Received: from nwd2mta2.analog.com (137.71.25.57) by
 BL2NAM02FT024.mail.protection.outlook.com (10.152.77.62) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2367.14
 via Frontend Transport; Thu, 17 Oct 2019 14:02:21 +0000
Received: from NWD2HUBCAS7.ad.analog.com (nwd2hubcas7.ad.analog.com
 [10.64.69.107])
 by nwd2mta2.analog.com (8.13.8/8.13.8) with ESMTP id x9HE2K2a014669
 (version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=OK);
 Thu, 17 Oct 2019 07:02:20 -0700
Received: from ben-Latitude-E6540.ad.analog.com (10.48.65.163) by
 NWD2HUBCAS7.ad.analog.com (10.64.69.107) with Microsoft SMTP Server id
 14.3.408.0; Thu, 17 Oct 2019 10:02:20 -0400
From: Beniamin Bia <beniamin.bia@analog.com>
To: <gregkh@linuxfoundation.org>
Subject: [PATCH] drivers/staging/fbtft/fb_seps525: New driver for SEPS525
 (Syncoam) LCD Controllers
Date: Thu, 17 Oct 2019 20:02:03 +0300
Message-ID: <20191017170203.11999-1-beniamin.bia@analog.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-ADIRoutedOnPrem: True
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:137.71.25.57; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(136003)(376002)(346002)(396003)(39860400002)(199004)(189003)(36756003)(478600001)(16586007)(50466002)(5660300002)(126002)(486006)(8676002)(44832011)(86362001)(246002)(476003)(6666004)(356004)(1076003)(336012)(50226002)(47776003)(2616005)(966005)(8936002)(48376002)(426003)(6916009)(316002)(2906002)(54906003)(305945005)(7416002)(7636002)(14444005)(7696005)(70586007)(2351001)(51416003)(70206006)(4326008)(106002)(26005)(107886003)(6306002)(186003)(2004002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BY5PR03MB5252; H:nwd2mta2.analog.com; FPR:;
 SPF:Pass; LANG:en; PTR:nwd2mail11.analog.com; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 38c08431-2e7c-42f6-1044-08d7530aa176
X-MS-TrafficTypeDiagnostic: BY5PR03MB5252:
X-MS-Exchange-PUrlCount: 1
X-Microsoft-Antispam-PRVS: <BY5PR03MB5252B6396DF3587CE6A11C8AF06D0@BY5PR03MB5252.namprd03.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-Forefront-PRVS: 01930B2BA8
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 8FvH4mHEjVF4pnoqQ0Yvlj2M+nuNY31+W5aAEgQcSC6SqEsLhNxb5KDa/e9ETAj6TJePz3Z4aVCuA0JuwFkWZnOTewfqitJiAcb2nGta5RJwuuONEFgzjbVmiLJN4PjAda6hRCQBbM7ZPmpVAWrLbyb+psUy2irYnuDRiJLKO3vxsR/YqQi/tYuT7uaqZA0IlbYyXJW7+V5WecDHOKNqv3YuFiW3jMqkggTAJbmhhyzhqRaFhPxyL5PdEEeIMdUSvVWs9P/J+XDGjkzzzexxsiHIh7uByDTZl83HMX6EkcsW/DLfx6AnXt/4pareW1HCkGNFi+41UFaFhY4eD0/RViyw1HQ9FqxWe0qlqDD/LEmkFLyibr14Fs7fYtfQH47eGmlftnjblwuBYHvWOXAtT0rgAOeGSFl3HNijkw93pZcGxPuUllEQSrhMNgq6oeJwnPdleY6bLxJO/Kov0gHZ5g==
X-OriginatorOrg: analog.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Oct 2019 14:02:21.8711 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 38c08431-2e7c-42f6-1044-08d7530aa176
X-MS-Exchange-CrossTenant-Id: eaa689b4-8f87-40e0-9c6f-7228de4d754a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=eaa689b4-8f87-40e0-9c6f-7228de4d754a; Ip=[137.71.25.57];
 Helo=[nwd2mta2.analog.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR03MB5252
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-10-17_05:2019-10-17,2019-10-17 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0
 mlxlogscore=999 clxscore=1011 mlxscore=0 spamscore=0 malwarescore=0
 priorityscore=1501 adultscore=0 lowpriorityscore=0 phishscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-1908290000 definitions=main-1910170125
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
Cc: devel@driverdev.osuosl.org, linux-fbdev@vger.kernel.org,
 Michael Hennerich <michael.hennerich@analog.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, michal.simek@xilinx.com,
 Beniamin Bia <beniamin.bia@analog.com>, Jonathan.Cameron@huawei.com,
 mchehab+samsung@kernel.org, paulmck@linux.ibm.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Michael Hennerich <michael.hennerich@analog.com>

The SEPS525 is a 160 RGB x 128 Dots, 262K Colors PM-OLED Display Driver and
Controller.

The controller can be found on the NHD-1.69-160128UGC3
(Newhaven Display International, Inc.).

Datasheets:
Link: https://www.newhavendisplay.com/appnotes/datasheets/OLEDs/SEPS525.pdf

Signed-off-by: Michael Hennerich <michael.hennerich@analog.com>
Co-developed-by: Beniamin Bia <beniamin.bia@analog.com>
Signed-off-by: Beniamin Bia <beniamin.bia@analog.com>
---
 MAINTAINERS                        |   8 ++
 drivers/staging/fbtft/Kconfig      |   7 +
 drivers/staging/fbtft/Makefile     |   1 +
 drivers/staging/fbtft/fb_seps525.c | 213 +++++++++++++++++++++++++++++
 4 files changed, 229 insertions(+)
 create mode 100644 drivers/staging/fbtft/fb_seps525.c

diff --git a/MAINTAINERS b/MAINTAINERS
index ef00d6210cff..d077d04f9bc5 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -15389,6 +15389,14 @@ L:	linux-wireless@vger.kernel.org
 S:	Supported
 F:	drivers/staging/wilc1000/
 
+STAGING - SEPS525 LCD CONTROLLER DRIVERS
+M:	Michael Hennerich <michael.hennerich@analog.com>
+M:	Beniamin Bia <beniamin.bia@analog.com>
+L:	linux-fbdev@vger.kernel.org
+S:	Supported
+F:	drivers/staging/fbtft/fb_seps525.c
+F:	Documentation/devicetree/bindings/iio/adc/adi,ad7606.yaml
+
 STAGING SUBSYSTEM
 M:	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
 T:	git git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git
diff --git a/drivers/staging/fbtft/Kconfig b/drivers/staging/fbtft/Kconfig
index 8ec524a95ec8..55af11ee2f5b 100644
--- a/drivers/staging/fbtft/Kconfig
+++ b/drivers/staging/fbtft/Kconfig
@@ -112,6 +112,13 @@ config FB_TFT_S6D1121
 	help
 	  Generic Framebuffer support for S6D1121
 
+config FB_TFT_SEPS525
+	tristate "FB driver for the SEPS525 LCD Controller"
+	depends on FB_TFT
+	help
+	  Generic Framebuffer support for SEPS525
+	  Say Y if you have such a display that utilizes this controller.
+
 config FB_TFT_SH1106
 	tristate "FB driver for the SH1106 OLED Controller"
 	depends on FB_TFT
diff --git a/drivers/staging/fbtft/Makefile b/drivers/staging/fbtft/Makefile
index 6bc03311c9c7..e7a0cd9166e9 100644
--- a/drivers/staging/fbtft/Makefile
+++ b/drivers/staging/fbtft/Makefile
@@ -21,6 +21,7 @@ obj-$(CONFIG_FB_TFT_PCD8544)     += fb_pcd8544.o
 obj-$(CONFIG_FB_TFT_RA8875)      += fb_ra8875.o
 obj-$(CONFIG_FB_TFT_S6D02A1)     += fb_s6d02a1.o
 obj-$(CONFIG_FB_TFT_S6D1121)     += fb_s6d1121.o
+obj-$(CONFIG_FB_TFT_SEPS525)     += fb_seps525.o
 obj-$(CONFIG_FB_TFT_SH1106)      += fb_sh1106.o
 obj-$(CONFIG_FB_TFT_SSD1289)     += fb_ssd1289.o
 obj-$(CONFIG_FB_TFT_SSD1305)     += fb_ssd1305.o
diff --git a/drivers/staging/fbtft/fb_seps525.c b/drivers/staging/fbtft/fb_seps525.c
new file mode 100644
index 000000000000..05882e2cde7f
--- /dev/null
+++ b/drivers/staging/fbtft/fb_seps525.c
@@ -0,0 +1,213 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * FB driver for the NHD-1.69-160128UGC3 (Newhaven Display International, Inc.)
+ * using the SEPS525 (Syncoam) LCD Controller
+ *
+ * Copyright (C) 2016 Analog Devices Inc.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ */
+
+#include <linux/module.h>
+#include <linux/kernel.h>
+#include <linux/init.h>
+#include <linux/gpio.h>
+#include <linux/delay.h>
+
+#include "fbtft.h"
+
+#define DRVNAME		"fb_seps525"
+#define WIDTH		160
+#define HEIGHT		128
+
+#define SEPS525_INDEX 0x00
+#define SEPS525_STATUS_RD 0x01
+#define SEPS525_OSC_CTL 0x02
+#define SEPS525_IREF 0x80
+#define SEPS525_CLOCK_DIV 0x03
+#define SEPS525_REDUCE_CURRENT 0x04
+#define SEPS525_SOFT_RST 0x05
+#define SEPS525_DISP_ONOFF 0x06
+#define SEPS525_PRECHARGE_TIME_R 0x08
+#define SEPS525_PRECHARGE_TIME_G 0x09
+#define SEPS525_PRECHARGE_TIME_B 0x0A
+#define SEPS525_PRECHARGE_CURRENT_R 0x0B
+#define SEPS525_PRECHARGE_CURRENT_G 0x0C
+#define SEPS525_PRECHARGE_CURRENT_B 0x0D
+#define SEPS525_DRIVING_CURRENT_R 0x10
+#define SEPS525_DRIVING_CURRENT_G 0x11
+#define SEPS525_DRIVING_CURRENT_B 0x12
+#define SEPS525_DISPLAYMODE_SET 0x13
+#define SEPS525_RGBIF 0x14
+#define SEPS525_RGB_POL 0x15
+#define SEPS525_MEMORY_WRITEMODE 0x16
+#define SEPS525_MX1_ADDR 0x17
+#define SEPS525_MX2_ADDR 0x18
+#define SEPS525_MY1_ADDR 0x19
+#define SEPS525_MY2_ADDR 0x1A
+#define SEPS525_MEMORY_ACCESS_POINTER_X 0x20
+#define SEPS525_MEMORY_ACCESS_POINTER_Y 0x21
+#define SEPS525_DDRAM_DATA_ACCESS_PORT 0x22
+#define SEPS525_GRAY_SCALE_TABLE_INDEX 0x50
+#define SEPS525_GRAY_SCALE_TABLE_DATA 0x51
+#define SEPS525_DUTY 0x28
+#define SEPS525_DSL 0x29
+#define SEPS525_D1_DDRAM_FAC 0x2E
+#define SEPS525_D1_DDRAM_FAR 0x2F
+#define SEPS525_D2_DDRAM_SAC 0x31
+#define SEPS525_D2_DDRAM_SAR 0x32
+#define SEPS525_SCR1_FX1 0x33
+#define SEPS525_SCR1_FX2 0x34
+#define SEPS525_SCR1_FY1 0x35
+#define SEPS525_SCR1_FY2 0x36
+#define SEPS525_SCR2_SX1 0x37
+#define SEPS525_SCR2_SX2 0x38
+#define SEPS525_SCR2_SY1 0x39
+#define SEPS525_SCR2_SY2 0x3A
+#define SEPS525_SCREEN_SAVER_CONTEROL 0x3B
+#define SEPS525_SS_SLEEP_TIMER 0x3C
+#define SEPS525_SCREEN_SAVER_MODE 0x3D
+#define SEPS525_SS_SCR1_FU 0x3E
+#define SEPS525_SS_SCR1_MXY 0x3F
+#define SEPS525_SS_SCR2_FU 0x40
+#define SEPS525_SS_SCR2_MXY 0x41
+#define SEPS525_MOVING_DIRECTION 0x42
+#define SEPS525_SS_SCR2_SX1 0x47
+#define SEPS525_SS_SCR2_SX2 0x48
+#define SEPS525_SS_SCR2_SY1 0x49
+#define SEPS525_SS_SCR2_SY2 0x4A
+
+/* SEPS525_DISPLAYMODE_SET */
+#define MODE_SWAP_BGR	BIT(7)
+#define MODE_SM		BIT(6)
+#define MODE_RD		BIT(5)
+#define MODE_CD		BIT(4)
+
+#define seps525_use_window	0 /* FBTFT doesn't really use it today */
+
+/* Init sequence taken from: Arduino Library for the Adafruit 2.2" display */
+static int init_display(struct fbtft_par *par)
+{
+	par->fbtftops.reset(par);
+
+	usleep_range(1000, 5000);
+
+	/* Disable Oscillator Power Down */
+	write_reg(par, SEPS525_REDUCE_CURRENT, 0x03);
+	usleep_range(1000, 5000);
+	/* Set Normal Driving Current */
+	write_reg(par, SEPS525_REDUCE_CURRENT, 0x00);
+	usleep_range(1000, 5000);
+
+	write_reg(par, SEPS525_SCREEN_SAVER_CONTEROL, 0x00);
+	/* Set EXPORT1 Pin at Internal Clock */
+	write_reg(par, SEPS525_OSC_CTL, 0x01);
+	/* Set Clock as 120 Frames/Sec */
+	write_reg(par, SEPS525_CLOCK_DIV, 0x90);
+	/* Set Reference Voltage Controlled by External Resister */
+	write_reg(par, SEPS525_IREF, 0x01);
+
+	/* precharge time R G B */
+	write_reg(par, SEPS525_PRECHARGE_TIME_R, 0x04);
+	write_reg(par, SEPS525_PRECHARGE_TIME_G, 0x05);
+	write_reg(par, SEPS525_PRECHARGE_TIME_B, 0x05);
+
+	/* precharge current R G B (uA) */
+	write_reg(par, SEPS525_PRECHARGE_CURRENT_R, 0x9D);
+	write_reg(par, SEPS525_PRECHARGE_CURRENT_G, 0x8C);
+	write_reg(par, SEPS525_PRECHARGE_CURRENT_B, 0x57);
+
+	/* driving current R G B (uA) */
+	write_reg(par, SEPS525_DRIVING_CURRENT_R, 0x56);
+	write_reg(par, SEPS525_DRIVING_CURRENT_G, 0x4D);
+	write_reg(par, SEPS525_DRIVING_CURRENT_B, 0x46);
+	/* Set Color Sequence */
+	write_reg(par, SEPS525_DISPLAYMODE_SET, 0xA0);
+	write_reg(par, SEPS525_RGBIF, 0x01); /* Set MCU Interface Mode */
+	/* Set Memory Write Mode */
+	write_reg(par, SEPS525_MEMORY_WRITEMODE, 0x66);
+	write_reg(par, SEPS525_DUTY, 0x7F); /* 1/128 Duty (0x0F~0x7F) */
+	/* Set Mapping RAM Display Start Line (0x00~0x7F) */
+	write_reg(par, SEPS525_DSL, 0x00);
+	write_reg(par, SEPS525_DISP_ONOFF, 0x01); /* Display On (0x00/0x01) */
+	/* Set All Internal Register Value as Normal Mode */
+	write_reg(par, SEPS525_SOFT_RST, 0x00);
+	/* Set RGB Interface Polarity as Active Low */
+	write_reg(par, SEPS525_RGB_POL, 0x00);
+
+	write_reg(par, SEPS525_DDRAM_DATA_ACCESS_PORT);
+
+	return 0;
+}
+
+static void set_addr_win(struct fbtft_par *par, int xs, int ys, int xe, int ye)
+{
+	if (seps525_use_window) {
+		/* Set Window Xs,Ys Xe,Ye*/
+		write_reg(par, SEPS525_MX1_ADDR, xs);
+		write_reg(par, SEPS525_MX2_ADDR, xe);
+		write_reg(par, SEPS525_MY1_ADDR, ys);
+		write_reg(par, SEPS525_MY2_ADDR, ye);
+	}
+	/* start position X,Y */
+	write_reg(par, SEPS525_MEMORY_ACCESS_POINTER_X, xs);
+	write_reg(par, SEPS525_MEMORY_ACCESS_POINTER_Y, ys);
+
+	write_reg(par, SEPS525_DDRAM_DATA_ACCESS_PORT);
+}
+
+static int set_var(struct fbtft_par *par)
+{
+	u8 val;
+
+	switch (par->info->var.rotate) {
+	case 0:
+		val = 0;
+		break;
+	case 180:
+		val = MODE_RD | MODE_CD;
+		break;
+	case 90:
+	case 270:
+
+	default:
+		return -EINVAL;
+	}
+	/* Memory Access Control  */
+	write_reg(par, SEPS525_DISPLAYMODE_SET, val |
+		       (par->bgr ? MODE_SWAP_BGR : 0));
+
+	write_reg(par, SEPS525_DDRAM_DATA_ACCESS_PORT);
+
+	return 0;
+}
+
+static struct fbtft_display display = {
+	.regwidth = 8,
+	.width = WIDTH,
+	.height = HEIGHT,
+	.fbtftops = {
+		.init_display = init_display,
+		.set_addr_win = set_addr_win,
+		.set_var = set_var,
+	},
+};
+
+FBTFT_REGISTER_DRIVER(DRVNAME, "syncoam,seps525", &display);
+
+MODULE_ALIAS("spi:" DRVNAME);
+MODULE_ALIAS("platform:" DRVNAME);
+MODULE_ALIAS("spi:seps525");
+MODULE_ALIAS("platform:seps525");
+
+MODULE_DESCRIPTION("FB driver for the SEPS525 LCD Controller");
+MODULE_AUTHOR("Michael Hennerich <michael.hennerich@analog.com>");
+MODULE_LICENSE("GPL");
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
