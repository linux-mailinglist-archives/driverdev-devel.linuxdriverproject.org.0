Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C21A195154
	for <lists+driverdev-devel@lfdr.de>; Fri, 27 Mar 2020 07:34:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id BA2362635F;
	Fri, 27 Mar 2020 06:34:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MgJSWYR1IECf; Fri, 27 Mar 2020 06:34:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 47CA6263F2;
	Fri, 27 Mar 2020 06:33:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E9CD61BF3EB
 for <devel@linuxdriverproject.org>; Fri, 27 Mar 2020 06:33:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id D6FCC8877D
 for <devel@linuxdriverproject.org>; Fri, 27 Mar 2020 06:33:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ERJ63SSEIXfP for <devel@linuxdriverproject.org>;
 Fri, 27 Mar 2020 06:33:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa5.microchip.iphmx.com (esa5.microchip.iphmx.com
 [216.71.150.166])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E8E1D88AFC
 for <devel@driverdev.osuosl.org>; Fri, 27 Mar 2020 06:33:20 +0000 (UTC)
IronPort-SDR: 1CP3LkytKAmnVdbX7QfveRL1U2gjWP4RsMfoFfHNnd3gbz/f4bs62dIv7cKKeyXPjqWQk8CD4e
 I2kDosFqs3v9hqaLQ6VbIkpHrxQr/jze0Oyt9OgaU4sVK+A3L3yJ7PVtYhs7gJDqg4GhEfeoox
 utAMznDFy2QophfBu1TPEFkXpgZrI13hRCqpZBWnV670M3epNhgp2b6VWLIlLbSwzyRWqTzbaD
 Mk+YVSAL/whkM6JttgfWEwjx8lfeMIivzZjXykCRWqQ4BnbVEfyImxEk0PTgUtmvWI4uxUcuBo
 uLc=
X-IronPort-AV: E=Sophos;i="5.72,311,1580799600"; d="scan'208";a="70452400"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 26 Mar 2020 23:33:21 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 26 Mar 2020 23:33:18 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 26 Mar 2020 23:33:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dvpXFAhIfc6O7Ffj5KAXeje3/83IcfgWID4mJGAtc+0vaGAuNA+K55FUh5iHhwxMjSzqCGW1oJi9K5ijB61eVdOuSIgGvZM4vA0Dc32u32DxACGh5aUcMVLgJphFGfttGaVQ8Rqb0I9/bhcfqiTH1/KIDa/fC2gMAauHOdsFmPenCJDRP3xsIb8jMtjo/MrAFCm6IXsV9G9DQppbUrBjfgI7FfOykV8nEWZw/tkV1X21LmWMDbH2XQZFcKxAoYmwj+ETX9wzLXnBxirFnyl8gymxeYiw6/pl2wm1SHzKXUDUtadRk3yqdNy8kMRZ/DWrMzl6xsEWc9CBIE8FtVhNNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Jf3t/5MFB/CSijnJK4XtO9fCTjGZSy+D+RGg+/Bom0Y=;
 b=BDY7EPzqOiHf7ipCNt8z+bLk33yJBokE04Lk0+PHwKgLSVW+sLzUr5bwIt8zbvoZ91/rhnR4NmuoCGCWtbdafDzk1nnKQvHcpLT3D7eprOH5YkKnctPOcUQYJQx7QB4dZVlbD4Spa6s0CwEL73ujP+2RsQ1/mAGKv7a0w5Y5d0Rt3YKbs19bSxQkIu8o11rxAEBP8Va+xYsVkpmx4EwC4cWBlxEOck1XYsJGymjrWhXUA7PkpUNk/Z5QqZAdBJr/ln8jXIWf/DoFHGTJWWrvsOY2hJgJ927BPo9/HY7VNbq0bXzSUSfXOn0x0qFKXXcSzx1VXGzqnrgEblNyzTIgww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Jf3t/5MFB/CSijnJK4XtO9fCTjGZSy+D+RGg+/Bom0Y=;
 b=MPnDY+0IwxlncO5HO/DHguHFdMwm/jRHonIDSQQdf+Ky2inhXN1SKcewe5JfmY2A3vhJo8NSXGVzFcXbCvDzftRjYTdrgBfqMxDs8KI9kQoVhOale5PKzp49pawkT9gVByfAsbGod6V/Hlq3S1z+eZVUBfdBpado8k3OFiVuVJI=
Received: from BYAPR11MB3125.namprd11.prod.outlook.com (2603:10b6:a03:8e::32)
 by BYAPR11MB3397.namprd11.prod.outlook.com (2603:10b6:a03:1b::29)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2856.19; Fri, 27 Mar
 2020 06:33:16 +0000
Received: from BYAPR11MB3125.namprd11.prod.outlook.com
 ([fe80::c27:87cf:ca4:d86e]) by BYAPR11MB3125.namprd11.prod.outlook.com
 ([fe80::c27:87cf:ca4:d86e%4]) with mapi id 15.20.2835.021; Fri, 27 Mar 2020
 06:33:16 +0000
From: <Ajay.Kathat@microchip.com>
To: <linux-wireless@vger.kernel.org>
Subject: [PATCH v6 11/17] wilc1000: add spi.c
Thread-Topic: [PATCH v6 11/17] wilc1000: add spi.c
Thread-Index: AQHWBAGZWTlZUM4UiUSwYbBGBh9zVQ==
Date: Fri, 27 Mar 2020 06:33:16 +0000
Message-ID: <20200327063302.20511-12-ajay.kathat@microchip.com>
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
x-ms-office365-filtering-correlation-id: 59ee0c0a-6afc-4de3-6943-08d7d218bbdd
x-ms-traffictypediagnostic: BYAPR11MB3397:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR11MB3397A381284992C92A17B8EDE3CC0@BYAPR11MB3397.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:185;
x-forefront-prvs: 0355F3A3AE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39850400004)(136003)(376002)(346002)(366004)(396003)(81156014)(26005)(8676002)(81166006)(76116006)(66446008)(66556008)(66476007)(36756003)(6512007)(66946007)(6486002)(64756008)(91956017)(2906002)(6506007)(4326008)(71200400001)(2616005)(107886003)(186003)(30864003)(86362001)(5660300002)(478600001)(1076003)(6916009)(316002)(8936002)(54906003)(579004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR11MB3397;
 H:BYAPR11MB3125.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: OpReM26/ok5rSanWh1f1oNomtr9kNurkpax2AdSYtMKuSCQnKleLjHV02vKMGX9ZUtLumomijxVA8ntYLvHvM1Moz3ndK5vNgSY4L9uDYVYxeKrRTpjsApUMhzwTyf9hp03aQqRSxJNlM0pgerdeZ1HLSjxEwQ9rRf1es0MHa8lLP+M/c2YiP7OQ75spo7hRmdxydltiA5n725/dUCY88NynW3y1iimg2iTKVGhtVBO9sGcWio5X6ldqsvdj4SxqmQT95DK7ZMhe7tmXmfjgUwSLsGzxnJpb9c6KcsmvRZuZTnnf8VsTZw3ou9Ffrhp3Zsxoih+5w1kijuV+aE3hoPK9vxU7+mgIIio29NTNUrAwn/AumZnGy2ZA/rpe2YYyZERAePgQrGDMzubUioGMfoq5IGEWCYNmjA4WCufcB8mzR+FJDiNT1dGJjmkCpl7/
x-ms-exchange-antispam-messagedata: 8n1bBjFDWoHG6AfUOPLjjzWJQPK9IYglrRix9EzoMJyvFwqcWWQ374BrANrptKkAqSDtxeG4mr+T9dNEkMjANjwDqHiyxu5mNG6iFber0Hv7UHSDBT8QfuRmo9So5UAjIe8QvoIpah5qKceO4GVJfA==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 59ee0c0a-6afc-4de3-6943-08d7d218bbdd
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Mar 2020 06:33:16.7113 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: F/YHcHrS5mjT/R/bbdbeRq6ssCM0PLdenTuVB1SyK5CSdxOKgDLqZ5LyZf2E6mBFNPhJeAiaWlGxGMX3GDJEXpnmnydczRWplAy9vzW9Sko=
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

Moved 'drivers/staging/wilc1000/spi.c' to
'drivers/net/wireless/microchip/wilc1000/spi.c'.

Signed-off-by: Ajay Singh <ajay.kathat@microchip.com>
---
 drivers/net/wireless/microchip/wilc1000/spi.c | 945 ++++++++++++++++++
 1 file changed, 945 insertions(+)
 create mode 100644 drivers/net/wireless/microchip/wilc1000/spi.c

diff --git a/drivers/net/wireless/microchip/wilc1000/spi.c b/drivers/net/wireless/microchip/wilc1000/spi.c
new file mode 100644
index 000000000000..3f19e3f38a39
--- /dev/null
+++ b/drivers/net/wireless/microchip/wilc1000/spi.c
@@ -0,0 +1,945 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (c) 2012 - 2018 Microchip Technology Inc., and its subsidiaries.
+ * All rights reserved.
+ */
+
+#include <linux/clk.h>
+#include <linux/spi/spi.h>
+#include <linux/crc7.h>
+
+#include "netdev.h"
+#include "cfg80211.h"
+
+struct wilc_spi {
+	int crc_off;
+};
+
+static const struct wilc_hif_func wilc_hif_spi;
+
+/********************************************
+ *
+ *      Spi protocol Function
+ *
+ ********************************************/
+
+#define CMD_DMA_WRITE				0xc1
+#define CMD_DMA_READ				0xc2
+#define CMD_INTERNAL_WRITE			0xc3
+#define CMD_INTERNAL_READ			0xc4
+#define CMD_TERMINATE				0xc5
+#define CMD_REPEAT				0xc6
+#define CMD_DMA_EXT_WRITE			0xc7
+#define CMD_DMA_EXT_READ			0xc8
+#define CMD_SINGLE_WRITE			0xc9
+#define CMD_SINGLE_READ				0xca
+#define CMD_RESET				0xcf
+
+#define DATA_PKT_SZ_256				256
+#define DATA_PKT_SZ_512				512
+#define DATA_PKT_SZ_1K				1024
+#define DATA_PKT_SZ_4K				(4 * 1024)
+#define DATA_PKT_SZ_8K				(8 * 1024)
+#define DATA_PKT_SZ				DATA_PKT_SZ_8K
+
+#define USE_SPI_DMA				0
+
+#define WILC_SPI_COMMAND_STAT_SUCCESS		0
+#define WILC_GET_RESP_HDR_START(h)		(((h) >> 4) & 0xf)
+
+struct wilc_spi_cmd {
+	u8 cmd_type;
+	union {
+		struct {
+			u8 addr[3];
+			u8 crc[];
+		} __packed simple_cmd;
+		struct {
+			u8 addr[3];
+			u8 size[2];
+			u8 crc[];
+		} __packed dma_cmd;
+		struct {
+			u8 addr[3];
+			u8 size[3];
+			u8 crc[];
+		} __packed dma_cmd_ext;
+		struct {
+			u8 addr[2];
+			__be32 data;
+			u8 crc[];
+		} __packed internal_w_cmd;
+		struct {
+			u8 addr[3];
+			__be32 data;
+			u8 crc[];
+		} __packed w_cmd;
+	} u;
+} __packed;
+
+struct wilc_spi_read_rsp_data {
+	u8 rsp_cmd_type;
+	u8 status;
+	u8 resp_header;
+	u8 resp_data[4];
+	u8 crc[];
+} __packed;
+
+struct wilc_spi_rsp_data {
+	u8 rsp_cmd_type;
+	u8 status;
+} __packed;
+
+static int wilc_bus_probe(struct spi_device *spi)
+{
+	int ret;
+	struct wilc *wilc;
+	struct wilc_spi *spi_priv;
+
+	spi_priv = kzalloc(sizeof(*spi_priv), GFP_KERNEL);
+	if (!spi_priv)
+		return -ENOMEM;
+
+	ret = wilc_cfg80211_init(&wilc, &spi->dev, WILC_HIF_SPI, &wilc_hif_spi);
+	if (ret) {
+		kfree(spi_priv);
+		return ret;
+	}
+
+	spi_set_drvdata(spi, wilc);
+	wilc->dev = &spi->dev;
+	wilc->bus_data = spi_priv;
+	wilc->dev_irq_num = spi->irq;
+
+	wilc->rtc_clk = devm_clk_get(&spi->dev, "rtc_clk");
+	if (PTR_ERR_OR_ZERO(wilc->rtc_clk) == -EPROBE_DEFER)
+		return -EPROBE_DEFER;
+	else if (!IS_ERR(wilc->rtc_clk))
+		clk_prepare_enable(wilc->rtc_clk);
+
+	return 0;
+}
+
+static int wilc_bus_remove(struct spi_device *spi)
+{
+	struct wilc *wilc = spi_get_drvdata(spi);
+
+	if (!IS_ERR(wilc->rtc_clk))
+		clk_disable_unprepare(wilc->rtc_clk);
+
+	wilc_netdev_cleanup(wilc);
+	return 0;
+}
+
+static const struct of_device_id wilc_of_match[] = {
+	{ .compatible = "microchip,wilc1000", },
+	{ /* sentinel */ }
+};
+MODULE_DEVICE_TABLE(of, wilc_of_match);
+
+static struct spi_driver wilc_spi_driver = {
+	.driver = {
+		.name = MODALIAS,
+		.of_match_table = wilc_of_match,
+	},
+	.probe =  wilc_bus_probe,
+	.remove = wilc_bus_remove,
+};
+module_spi_driver(wilc_spi_driver);
+MODULE_LICENSE("GPL");
+
+static int wilc_spi_tx(struct wilc *wilc, u8 *b, u32 len)
+{
+	struct spi_device *spi = to_spi_device(wilc->dev);
+	int ret;
+	struct spi_message msg;
+
+	if (len > 0 && b) {
+		struct spi_transfer tr = {
+			.tx_buf = b,
+			.len = len,
+			.delay = {
+				.value = 0,
+				.unit = SPI_DELAY_UNIT_USECS
+			},
+		};
+		char *r_buffer = kzalloc(len, GFP_KERNEL);
+
+		if (!r_buffer)
+			return -ENOMEM;
+
+		tr.rx_buf = r_buffer;
+		dev_dbg(&spi->dev, "Request writing %d bytes\n", len);
+
+		memset(&msg, 0, sizeof(msg));
+		spi_message_init(&msg);
+		msg.spi = spi;
+		msg.is_dma_mapped = USE_SPI_DMA;
+		spi_message_add_tail(&tr, &msg);
+
+		ret = spi_sync(spi, &msg);
+		if (ret < 0)
+			dev_err(&spi->dev, "SPI transaction failed\n");
+
+		kfree(r_buffer);
+	} else {
+		dev_err(&spi->dev,
+			"can't write data with the following length: %d\n",
+			len);
+		ret = -EINVAL;
+	}
+
+	return ret;
+}
+
+static int wilc_spi_rx(struct wilc *wilc, u8 *rb, u32 rlen)
+{
+	struct spi_device *spi = to_spi_device(wilc->dev);
+	int ret;
+
+	if (rlen > 0) {
+		struct spi_message msg;
+		struct spi_transfer tr = {
+			.rx_buf = rb,
+			.len = rlen,
+			.delay = {
+				.value = 0,
+				.unit = SPI_DELAY_UNIT_USECS
+			},
+
+		};
+		char *t_buffer = kzalloc(rlen, GFP_KERNEL);
+
+		if (!t_buffer)
+			return -ENOMEM;
+
+		tr.tx_buf = t_buffer;
+
+		memset(&msg, 0, sizeof(msg));
+		spi_message_init(&msg);
+		msg.spi = spi;
+		msg.is_dma_mapped = USE_SPI_DMA;
+		spi_message_add_tail(&tr, &msg);
+
+		ret = spi_sync(spi, &msg);
+		if (ret < 0)
+			dev_err(&spi->dev, "SPI transaction failed\n");
+		kfree(t_buffer);
+	} else {
+		dev_err(&spi->dev,
+			"can't read data with the following length: %u\n",
+			rlen);
+		ret = -EINVAL;
+	}
+
+	return ret;
+}
+
+static int wilc_spi_tx_rx(struct wilc *wilc, u8 *wb, u8 *rb, u32 rlen)
+{
+	struct spi_device *spi = to_spi_device(wilc->dev);
+	int ret;
+
+	if (rlen > 0) {
+		struct spi_message msg;
+		struct spi_transfer tr = {
+			.rx_buf = rb,
+			.tx_buf = wb,
+			.len = rlen,
+			.bits_per_word = 8,
+			.delay = {
+				.value = 0,
+				.unit = SPI_DELAY_UNIT_USECS
+			},
+
+		};
+
+		memset(&msg, 0, sizeof(msg));
+		spi_message_init(&msg);
+		msg.spi = spi;
+		msg.is_dma_mapped = USE_SPI_DMA;
+
+		spi_message_add_tail(&tr, &msg);
+		ret = spi_sync(spi, &msg);
+		if (ret < 0)
+			dev_err(&spi->dev, "SPI transaction failed\n");
+	} else {
+		dev_err(&spi->dev,
+			"can't read data with the following length: %u\n",
+			rlen);
+		ret = -EINVAL;
+	}
+
+	return ret;
+}
+
+static int spi_data_write(struct wilc *wilc, u8 *b, u32 sz)
+{
+	struct spi_device *spi = to_spi_device(wilc->dev);
+	struct wilc_spi *spi_priv = wilc->bus_data;
+	int ix, nbytes;
+	int result = 0;
+	u8 cmd, order, crc[2] = {0};
+
+	/*
+	 * Data
+	 */
+	ix = 0;
+	do {
+		if (sz <= DATA_PKT_SZ) {
+			nbytes = sz;
+			order = 0x3;
+		} else {
+			nbytes = DATA_PKT_SZ;
+			if (ix == 0)
+				order = 0x1;
+			else
+				order = 0x02;
+		}
+
+		/*
+		 * Write command
+		 */
+		cmd = 0xf0;
+		cmd |= order;
+
+		if (wilc_spi_tx(wilc, &cmd, 1)) {
+			dev_err(&spi->dev,
+				"Failed data block cmd write, bus error...\n");
+			result = -EINVAL;
+			break;
+		}
+
+		/*
+		 * Write data
+		 */
+		if (wilc_spi_tx(wilc, &b[ix], nbytes)) {
+			dev_err(&spi->dev,
+				"Failed data block write, bus error...\n");
+			result = -EINVAL;
+			break;
+		}
+
+		/*
+		 * Write Crc
+		 */
+		if (!spi_priv->crc_off) {
+			if (wilc_spi_tx(wilc, crc, 2)) {
+				dev_err(&spi->dev, "Failed data block crc write, bus error...\n");
+				result = -EINVAL;
+				break;
+			}
+		}
+
+		/*
+		 * No need to wait for response
+		 */
+		ix += nbytes;
+		sz -= nbytes;
+	} while (sz);
+
+	return result;
+}
+
+/********************************************
+ *
+ *      Spi Internal Read/Write Function
+ *
+ ********************************************/
+static u8 wilc_get_crc7(u8 *buffer, u32 len)
+{
+	return crc7_be(0xfe, buffer, len);
+}
+
+static int wilc_spi_single_read(struct wilc *wilc, u8 cmd, u32 adr, void *b,
+				u8 clockless)
+{
+	struct spi_device *spi = to_spi_device(wilc->dev);
+	struct wilc_spi *spi_priv = wilc->bus_data;
+	u8 wb[32], rb[32];
+	int cmd_len, resp_len;
+	u8 crc[2];
+	struct wilc_spi_cmd *c;
+	struct wilc_spi_read_rsp_data *r;
+
+	memset(wb, 0x0, sizeof(wb));
+	memset(rb, 0x0, sizeof(rb));
+	c = (struct wilc_spi_cmd *)wb;
+	c->cmd_type = cmd;
+	if (cmd == CMD_SINGLE_READ) {
+		c->u.simple_cmd.addr[0] = adr >> 16;
+		c->u.simple_cmd.addr[1] = adr >> 8;
+		c->u.simple_cmd.addr[2] = adr;
+	} else if (cmd == CMD_INTERNAL_READ) {
+		c->u.simple_cmd.addr[0] = adr >> 8;
+		if (clockless == 1)
+			c->u.simple_cmd.addr[0] |= BIT(7);
+		c->u.simple_cmd.addr[1] = adr;
+		c->u.simple_cmd.addr[2] = 0x0;
+	} else {
+		dev_err(&spi->dev, "cmd [%x] not supported\n", cmd);
+		return -EINVAL;
+	}
+
+	cmd_len = offsetof(struct wilc_spi_cmd, u.simple_cmd.crc);
+	resp_len = sizeof(*r);
+	if (!spi_priv->crc_off) {
+		c->u.simple_cmd.crc[0] = wilc_get_crc7(wb, cmd_len);
+		cmd_len += 1;
+		resp_len += 2;
+	}
+
+	if (cmd_len + resp_len > ARRAY_SIZE(wb)) {
+		dev_err(&spi->dev,
+			"spi buffer size too small (%d) (%d) (%zu)\n",
+			cmd_len, resp_len, ARRAY_SIZE(wb));
+		return -EINVAL;
+	}
+
+	if (wilc_spi_tx_rx(wilc, wb, rb, cmd_len + resp_len)) {
+		dev_err(&spi->dev, "Failed cmd write, bus error...\n");
+		return -EINVAL;
+	}
+
+	r = (struct wilc_spi_read_rsp_data *)&rb[cmd_len];
+	if (r->rsp_cmd_type != cmd) {
+		dev_err(&spi->dev,
+			"Failed cmd response, cmd (%02x), resp (%02x)\n",
+			cmd, r->rsp_cmd_type);
+		return -EINVAL;
+	}
+
+	if (r->status != WILC_SPI_COMMAND_STAT_SUCCESS) {
+		dev_err(&spi->dev, "Failed cmd state response state (%02x)\n",
+			r->status);
+		return -EINVAL;
+	}
+
+	if (WILC_GET_RESP_HDR_START(r->resp_header) != 0xf) {
+		dev_err(&spi->dev, "Error, data read response (%02x)\n",
+			r->resp_header);
+		return -EINVAL;
+	}
+
+	if (b)
+		memcpy(b, r->resp_data, 4);
+
+	if (!spi_priv->crc_off)
+		memcpy(crc, r->crc, 2);
+
+	return 0;
+}
+
+static int wilc_spi_write_cmd(struct wilc *wilc, u8 cmd, u32 adr, u32 data,
+			      u8 clockless)
+{
+	struct spi_device *spi = to_spi_device(wilc->dev);
+	struct wilc_spi *spi_priv = wilc->bus_data;
+	u8 wb[32], rb[32];
+	int cmd_len, resp_len;
+	struct wilc_spi_cmd *c;
+	struct wilc_spi_rsp_data *r;
+
+	memset(wb, 0x0, sizeof(wb));
+	memset(rb, 0x0, sizeof(rb));
+	c = (struct wilc_spi_cmd *)wb;
+	c->cmd_type = cmd;
+	if (cmd == CMD_INTERNAL_WRITE) {
+		c->u.internal_w_cmd.addr[0] = adr >> 8;
+		if (clockless == 1)
+			c->u.internal_w_cmd.addr[0] |= BIT(7);
+
+		c->u.internal_w_cmd.addr[1] = adr;
+		c->u.internal_w_cmd.data = cpu_to_be32(data);
+		cmd_len = offsetof(struct wilc_spi_cmd, u.internal_w_cmd.crc);
+		if (!spi_priv->crc_off)
+			c->u.internal_w_cmd.crc[0] = wilc_get_crc7(wb, cmd_len);
+	} else if (cmd == CMD_SINGLE_WRITE) {
+		c->u.w_cmd.addr[0] = adr >> 16;
+		c->u.w_cmd.addr[1] = adr >> 8;
+		c->u.w_cmd.addr[2] = adr;
+		c->u.w_cmd.data = cpu_to_be32(data);
+		cmd_len = offsetof(struct wilc_spi_cmd, u.w_cmd.crc);
+		if (!spi_priv->crc_off)
+			c->u.w_cmd.crc[0] = wilc_get_crc7(wb, cmd_len);
+	} else {
+		dev_err(&spi->dev, "write cmd [%x] not supported\n", cmd);
+		return -EINVAL;
+	}
+
+	if (!spi_priv->crc_off)
+		cmd_len += 1;
+
+	resp_len = sizeof(*r);
+
+	if (cmd_len + resp_len > ARRAY_SIZE(wb)) {
+		dev_err(&spi->dev,
+			"spi buffer size too small (%d) (%d) (%zu)\n",
+			cmd_len, resp_len, ARRAY_SIZE(wb));
+		return -EINVAL;
+	}
+
+	if (wilc_spi_tx_rx(wilc, wb, rb, cmd_len + resp_len)) {
+		dev_err(&spi->dev, "Failed cmd write, bus error...\n");
+		return -EINVAL;
+	}
+
+	r = (struct wilc_spi_rsp_data *)&rb[cmd_len];
+	if (r->rsp_cmd_type != cmd) {
+		dev_err(&spi->dev,
+			"Failed cmd response, cmd (%02x), resp (%02x)\n",
+			cmd, r->rsp_cmd_type);
+		return -EINVAL;
+	}
+
+	if (r->status != WILC_SPI_COMMAND_STAT_SUCCESS) {
+		dev_err(&spi->dev, "Failed cmd state response state (%02x)\n",
+			r->status);
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
+static int wilc_spi_dma_rw(struct wilc *wilc, u8 cmd, u32 adr, u8 *b, u32 sz)
+{
+	struct spi_device *spi = to_spi_device(wilc->dev);
+	struct wilc_spi *spi_priv = wilc->bus_data;
+	u8 wb[32], rb[32];
+	int cmd_len, resp_len;
+	int retry, ix = 0;
+	u8 crc[2];
+	struct wilc_spi_cmd *c;
+	struct wilc_spi_rsp_data *r;
+
+	memset(wb, 0x0, sizeof(wb));
+	memset(rb, 0x0, sizeof(rb));
+	c = (struct wilc_spi_cmd *)wb;
+	c->cmd_type = cmd;
+	if (cmd == CMD_DMA_WRITE || cmd == CMD_DMA_READ) {
+		c->u.dma_cmd.addr[0] = adr >> 16;
+		c->u.dma_cmd.addr[1] = adr >> 8;
+		c->u.dma_cmd.addr[2] = adr;
+		c->u.dma_cmd.size[0] = sz >> 8;
+		c->u.dma_cmd.size[1] = sz;
+		cmd_len = offsetof(struct wilc_spi_cmd, u.dma_cmd.crc);
+		if (!spi_priv->crc_off)
+			c->u.dma_cmd.crc[0] = wilc_get_crc7(wb, cmd_len);
+	} else if (cmd == CMD_DMA_EXT_WRITE || cmd == CMD_DMA_EXT_READ) {
+		c->u.dma_cmd_ext.addr[0] = adr >> 16;
+		c->u.dma_cmd_ext.addr[1] = adr >> 8;
+		c->u.dma_cmd_ext.addr[2] = adr;
+		c->u.dma_cmd_ext.size[0] = sz >> 16;
+		c->u.dma_cmd_ext.size[1] = sz >> 8;
+		c->u.dma_cmd_ext.size[2] = sz;
+		cmd_len = offsetof(struct wilc_spi_cmd, u.dma_cmd_ext.crc);
+		if (!spi_priv->crc_off)
+			c->u.dma_cmd_ext.crc[0] = wilc_get_crc7(wb, cmd_len);
+	} else {
+		dev_err(&spi->dev, "dma read write cmd [%x] not supported\n",
+			cmd);
+		return -EINVAL;
+	}
+	if (!spi_priv->crc_off)
+		cmd_len += 1;
+
+	resp_len = sizeof(*r);
+
+	if (cmd_len + resp_len > ARRAY_SIZE(wb)) {
+		dev_err(&spi->dev, "spi buffer size too small (%d)(%d) (%zu)\n",
+			cmd_len, resp_len, ARRAY_SIZE(wb));
+		return -EINVAL;
+	}
+
+	if (wilc_spi_tx_rx(wilc, wb, rb, cmd_len + resp_len)) {
+		dev_err(&spi->dev, "Failed cmd write, bus error...\n");
+		return -EINVAL;
+	}
+
+	r = (struct wilc_spi_rsp_data *)&rb[cmd_len];
+	if (r->rsp_cmd_type != cmd) {
+		dev_err(&spi->dev,
+			"Failed cmd response, cmd (%02x), resp (%02x)\n",
+			cmd, r->rsp_cmd_type);
+		return -EINVAL;
+	}
+
+	if (r->status != WILC_SPI_COMMAND_STAT_SUCCESS) {
+		dev_err(&spi->dev, "Failed cmd state response state (%02x)\n",
+			r->status);
+		return -EINVAL;
+	}
+
+	if (cmd == CMD_DMA_WRITE || cmd == CMD_DMA_EXT_WRITE)
+		return 0;
+
+	while (sz > 0) {
+		int nbytes;
+		u8 rsp;
+
+		if (sz <= DATA_PKT_SZ)
+			nbytes = sz;
+		else
+			nbytes = DATA_PKT_SZ;
+
+		/*
+		 * Data Response header
+		 */
+		retry = 100;
+		do {
+			if (wilc_spi_rx(wilc, &rsp, 1)) {
+				dev_err(&spi->dev,
+					"Failed resp read, bus err\n");
+				return -EINVAL;
+			}
+			if (WILC_GET_RESP_HDR_START(rsp) == 0xf)
+				break;
+		} while (retry--);
+
+		/*
+		 * Read bytes
+		 */
+		if (wilc_spi_rx(wilc, &b[ix], nbytes)) {
+			dev_err(&spi->dev,
+				"Failed block read, bus err\n");
+			return -EINVAL;
+		}
+
+		/*
+		 * Read Crc
+		 */
+		if (!spi_priv->crc_off && wilc_spi_rx(wilc, crc, 2)) {
+			dev_err(&spi->dev,
+				"Failed block crc read, bus err\n");
+			return -EINVAL;
+		}
+
+		ix += nbytes;
+		sz -= nbytes;
+	}
+	return 0;
+}
+
+static int wilc_spi_read_reg(struct wilc *wilc, u32 addr, u32 *data)
+{
+	struct spi_device *spi = to_spi_device(wilc->dev);
+	int result;
+	u8 cmd = CMD_SINGLE_READ;
+	u8 clockless = 0;
+
+	if (addr < WILC_SPI_CLOCKLESS_ADDR_LIMIT) {
+		/* Clockless register */
+		cmd = CMD_INTERNAL_READ;
+		clockless = 1;
+	}
+
+	result = wilc_spi_single_read(wilc, cmd, addr, data, clockless);
+	if (result) {
+		dev_err(&spi->dev, "Failed cmd, read reg (%08x)...\n", addr);
+		return result;
+	}
+
+	le32_to_cpus(data);
+
+	return 0;
+}
+
+static int wilc_spi_read(struct wilc *wilc, u32 addr, u8 *buf, u32 size)
+{
+	struct spi_device *spi = to_spi_device(wilc->dev);
+	int result;
+
+	if (size <= 4)
+		return -EINVAL;
+
+	result = wilc_spi_dma_rw(wilc, CMD_DMA_EXT_READ, addr, buf, size);
+	if (result) {
+		dev_err(&spi->dev, "Failed cmd, read block (%08x)...\n", addr);
+		return result;
+	}
+
+	return 0;
+}
+
+static int spi_internal_write(struct wilc *wilc, u32 adr, u32 dat)
+{
+	struct spi_device *spi = to_spi_device(wilc->dev);
+	int result;
+
+	result = wilc_spi_write_cmd(wilc, CMD_INTERNAL_WRITE, adr, dat, 0);
+	if (result) {
+		dev_err(&spi->dev, "Failed internal write cmd...\n");
+		return result;
+	}
+
+	return 0;
+}
+
+static int spi_internal_read(struct wilc *wilc, u32 adr, u32 *data)
+{
+	struct spi_device *spi = to_spi_device(wilc->dev);
+	int result;
+
+	result = wilc_spi_single_read(wilc, CMD_INTERNAL_READ, adr, data, 0);
+	if (result) {
+		dev_err(&spi->dev, "Failed internal read cmd...\n");
+		return result;
+	}
+
+	le32_to_cpus(data);
+
+	return 0;
+}
+
+/********************************************
+ *
+ *      Spi interfaces
+ *
+ ********************************************/
+
+static int wilc_spi_write_reg(struct wilc *wilc, u32 addr, u32 data)
+{
+	struct spi_device *spi = to_spi_device(wilc->dev);
+	int result;
+	u8 cmd = CMD_SINGLE_WRITE;
+	u8 clockless = 0;
+
+	if (addr < WILC_SPI_CLOCKLESS_ADDR_LIMIT) {
+		/* Clockless register */
+		cmd = CMD_INTERNAL_WRITE;
+		clockless = 1;
+	}
+
+	result = wilc_spi_write_cmd(wilc, cmd, addr, data, clockless);
+	if (result) {
+		dev_err(&spi->dev, "Failed cmd, write reg (%08x)...\n", addr);
+		return result;
+	}
+
+	return 0;
+}
+
+static int wilc_spi_write(struct wilc *wilc, u32 addr, u8 *buf, u32 size)
+{
+	struct spi_device *spi = to_spi_device(wilc->dev);
+	int result;
+
+	/*
+	 * has to be greated than 4
+	 */
+	if (size <= 4)
+		return -EINVAL;
+
+	result = wilc_spi_dma_rw(wilc, CMD_DMA_EXT_WRITE, addr, NULL, size);
+	if (result) {
+		dev_err(&spi->dev,
+			"Failed cmd, write block (%08x)...\n", addr);
+		return result;
+	}
+
+	/*
+	 * Data
+	 */
+	result = spi_data_write(wilc, buf, size);
+	if (result) {
+		dev_err(&spi->dev, "Failed block data write...\n");
+		return result;
+	}
+
+	return 0;
+}
+
+/********************************************
+ *
+ *      Bus interfaces
+ *
+ ********************************************/
+
+static int wilc_spi_deinit(struct wilc *wilc)
+{
+	/*
+	 * TODO:
+	 */
+	return 0;
+}
+
+static int wilc_spi_init(struct wilc *wilc, bool resume)
+{
+	struct spi_device *spi = to_spi_device(wilc->dev);
+	struct wilc_spi *spi_priv = wilc->bus_data;
+	u32 reg;
+	u32 chipid;
+	static int isinit;
+	int ret;
+
+	if (isinit) {
+		ret = wilc_spi_read_reg(wilc, WILC_CHIPID, &chipid);
+		if (ret)
+			dev_err(&spi->dev, "Fail cmd read chip id...\n");
+
+		return ret;
+	}
+
+	/*
+	 * configure protocol
+	 */
+
+	/*
+	 * TODO: We can remove the CRC trials if there is a definite
+	 * way to reset
+	 */
+	/* the SPI to it's initial value. */
+	ret = spi_internal_read(wilc, WILC_SPI_PROTOCOL_OFFSET, &reg);
+	if (ret) {
+		/*
+		 * Read failed. Try with CRC off. This might happen when module
+		 * is removed but chip isn't reset
+		 */
+		spi_priv->crc_off = 1;
+		dev_err(&spi->dev,
+			"Failed read with CRC on, retrying with CRC off\n");
+		ret = spi_internal_read(wilc, WILC_SPI_PROTOCOL_OFFSET, &reg);
+		if (ret) {
+			/*
+			 * Read failed with both CRC on and off,
+			 * something went bad
+			 */
+			dev_err(&spi->dev, "Failed internal read protocol\n");
+			return ret;
+		}
+	}
+	if (spi_priv->crc_off == 0) {
+		reg &= ~0xc; /* disable crc checking */
+		reg &= ~0x70;
+		reg |= (0x5 << 4);
+		ret = spi_internal_write(wilc, WILC_SPI_PROTOCOL_OFFSET, reg);
+		if (ret) {
+			dev_err(&spi->dev,
+				"[wilc spi %d]: Failed internal write reg\n",
+				__LINE__);
+			return ret;
+		}
+		spi_priv->crc_off = 1;
+	}
+
+	/*
+	 * make sure can read back chip id correctly
+	 */
+	ret = wilc_spi_read_reg(wilc, WILC_CHIPID, &chipid);
+	if (ret) {
+		dev_err(&spi->dev, "Fail cmd read chip id...\n");
+		return ret;
+	}
+
+	isinit = 1;
+
+	return 0;
+}
+
+static int wilc_spi_read_size(struct wilc *wilc, u32 *size)
+{
+	int ret;
+
+	ret = spi_internal_read(wilc,
+				WILC_SPI_INT_STATUS - WILC_SPI_REG_BASE, size);
+	*size = FIELD_GET(IRQ_DMA_WD_CNT_MASK, *size);
+
+	return ret;
+}
+
+static int wilc_spi_read_int(struct wilc *wilc, u32 *int_status)
+{
+	return spi_internal_read(wilc, WILC_SPI_INT_STATUS - WILC_SPI_REG_BASE,
+				 int_status);
+}
+
+static int wilc_spi_clear_int_ext(struct wilc *wilc, u32 val)
+{
+	return spi_internal_write(wilc, WILC_SPI_INT_CLEAR - WILC_SPI_REG_BASE,
+				  val);
+}
+
+static int wilc_spi_sync_ext(struct wilc *wilc, int nint)
+{
+	struct spi_device *spi = to_spi_device(wilc->dev);
+	u32 reg;
+	int ret, i;
+
+	if (nint > MAX_NUM_INT) {
+		dev_err(&spi->dev, "Too many interrupts (%d)...\n", nint);
+		return -EINVAL;
+	}
+
+	/*
+	 * interrupt pin mux select
+	 */
+	ret = wilc_spi_read_reg(wilc, WILC_PIN_MUX_0, &reg);
+	if (ret) {
+		dev_err(&spi->dev, "Failed read reg (%08x)...\n",
+			WILC_PIN_MUX_0);
+		return ret;
+	}
+	reg |= BIT(8);
+	ret = wilc_spi_write_reg(wilc, WILC_PIN_MUX_0, reg);
+	if (ret) {
+		dev_err(&spi->dev, "Failed write reg (%08x)...\n",
+			WILC_PIN_MUX_0);
+		return ret;
+	}
+
+	/*
+	 * interrupt enable
+	 */
+	ret = wilc_spi_read_reg(wilc, WILC_INTR_ENABLE, &reg);
+	if (ret) {
+		dev_err(&spi->dev, "Failed read reg (%08x)...\n",
+			WILC_INTR_ENABLE);
+		return ret;
+	}
+
+	for (i = 0; (i < 5) && (nint > 0); i++, nint--)
+		reg |= (BIT((27 + i)));
+
+	ret = wilc_spi_write_reg(wilc, WILC_INTR_ENABLE, reg);
+	if (ret) {
+		dev_err(&spi->dev, "Failed write reg (%08x)...\n",
+			WILC_INTR_ENABLE);
+		return ret;
+	}
+	if (nint) {
+		ret = wilc_spi_read_reg(wilc, WILC_INTR2_ENABLE, &reg);
+		if (ret) {
+			dev_err(&spi->dev, "Failed read reg (%08x)...\n",
+				WILC_INTR2_ENABLE);
+			return ret;
+		}
+
+		for (i = 0; (i < 3) && (nint > 0); i++, nint--)
+			reg |= BIT(i);
+
+		ret = wilc_spi_read_reg(wilc, WILC_INTR2_ENABLE, &reg);
+		if (ret) {
+			dev_err(&spi->dev, "Failed write reg (%08x)...\n",
+				WILC_INTR2_ENABLE);
+			return ret;
+		}
+	}
+
+	return 0;
+}
+
+/* Global spi HIF function table */
+static const struct wilc_hif_func wilc_hif_spi = {
+	.hif_init = wilc_spi_init,
+	.hif_deinit = wilc_spi_deinit,
+	.hif_read_reg = wilc_spi_read_reg,
+	.hif_write_reg = wilc_spi_write_reg,
+	.hif_block_rx = wilc_spi_read,
+	.hif_block_tx = wilc_spi_write,
+	.hif_read_int = wilc_spi_read_int,
+	.hif_clear_int_ext = wilc_spi_clear_int_ext,
+	.hif_read_size = wilc_spi_read_size,
+	.hif_block_tx_ext = wilc_spi_write,
+	.hif_block_rx_ext = wilc_spi_read,
+	.hif_sync_ext = wilc_spi_sync_ext,
+};
-- 
2.24.0
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
