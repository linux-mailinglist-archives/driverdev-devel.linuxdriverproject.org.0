Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95534195153
	for <lists+driverdev-devel@lfdr.de>; Fri, 27 Mar 2020 07:34:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 12817895C9;
	Fri, 27 Mar 2020 06:34:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vrU5i1yJg3wS; Fri, 27 Mar 2020 06:33:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 44F5E895AD;
	Fri, 27 Mar 2020 06:33:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0BF2D1BF3EB
 for <devel@linuxdriverproject.org>; Fri, 27 Mar 2020 06:33:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 05A6388AF2
 for <devel@linuxdriverproject.org>; Fri, 27 Mar 2020 06:33:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ECKeybV8cUNu for <devel@linuxdriverproject.org>;
 Fri, 27 Mar 2020 06:33:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa5.microchip.iphmx.com (esa5.microchip.iphmx.com
 [216.71.150.166])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 353EB88AF7
 for <devel@driverdev.osuosl.org>; Fri, 27 Mar 2020 06:33:23 +0000 (UTC)
IronPort-SDR: xBGRiXiPJct1+hhxZQOR0GDEa1yE3HzEC1GctcHy8Cz4bPqkdR3LghSn0DXXYYw8AZGhbCnZhd
 rljKSNZJwWglkGMQYwM/1nmc71xA3KjmCtY/I8EqUYI7gPLUoddcJt0p1OlNKIVjD/rLQHGrXI
 pPLq2heqfpiL43RILnhVEZK3JwV4YvzpjisSjCy4PVwY0vhbWMedp7U9PofFzKMKIZUSDPlxI0
 WEJXsXZLHLkYUzLdYbAQmQrFsNzSpJckkBY8qUle8gOwynOKCNqS/34DVggcpDKhhn1Cebb7r6
 Xcs=
X-IronPort-AV: E=Sophos;i="5.72,311,1580799600"; d="scan'208";a="70452414"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 26 Mar 2020 23:33:23 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 26 Mar 2020 23:33:21 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 26 Mar 2020 23:33:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HkmWeSAHLXtK/6+YQPe4Kym42+HcpBuLu7XM8oCUfFX9ldMgGVTRK2EVa9+u/Rrj7WcEqCAS5i+AALQM/FxEXAXGanP7F2xpAjFb9Jb/FWGoXIt/DlXOj3D6jnfu7SGY2Izc2eEeSI2EcmLjGUEqjdbE2iokE6ZNmgQPXy0UqPf1XaezGTUSSCe2c05wJJTyO5V5gxip23ioEuAoullFOz+bMbC0AW27StVyKWF7/JAuBCKkZScSlFPy9BJWbacauw7UtACk6lwQrWSn8KLtJjl03pjHhH4PJKZm0kS3fcq4lEuNuGYAFzpP+0+paWZ1Ocep+HTzVkppnDGmxyqG9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6Y3dRx7lty2J5gZu8DU1YXgIthh1ObPT+WLB9M2bTRw=;
 b=lRDnP1+wo6Z+XsWUvCcI/Wp7RTugrAmC+ga6pmI//eMCutemdASuhp8smgJ+j0iVQ3TTDXYE6S2DTt/emuZP84c0hHJ5bKOf0gIPfs8W8vTIMwoJc3V69OnxNLUYmbijduc7AYBXaOrSFX5cdzyE03S7eKlQ+RmC9BF7tEzD+AMLF846qbKe9SbY4vEPd2V/zsI2Zu2IudVkMLKDkJ/D5I7VmxU2uhXu5KpWYToKN2skFn6orZ8YKIZ2Im0pklULOTo92fa6W9Q9nlfFhYCYxdARIQaFn8twx+Oy8xOpGU0ArCJvpZi0vX5HYaZIKr9/sSo5HPLoJhyrp0kh5PVl0Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6Y3dRx7lty2J5gZu8DU1YXgIthh1ObPT+WLB9M2bTRw=;
 b=ZF3jIMyksAofWXU0zOP42ANILYb/EW+uilV2Gwf4onoEsQnXqErLV1mdLUT5CRsfoq2XT5W34kdZx2nLTb4H/tIilFCFIHLrG7aWv8HxRQ2IMdRWELcYyNLhGQY7ORyOwjN8ADTEGL2A50/AenDOt6+nc5U/RXikCHEB+a9YDNw=
Received: from BYAPR11MB3125.namprd11.prod.outlook.com (2603:10b6:a03:8e::32)
 by BYAPR11MB3397.namprd11.prod.outlook.com (2603:10b6:a03:1b::29)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2856.19; Fri, 27 Mar
 2020 06:33:19 +0000
Received: from BYAPR11MB3125.namprd11.prod.outlook.com
 ([fe80::c27:87cf:ca4:d86e]) by BYAPR11MB3125.namprd11.prod.outlook.com
 ([fe80::c27:87cf:ca4:d86e%4]) with mapi id 15.20.2835.021; Fri, 27 Mar 2020
 06:33:19 +0000
From: <Ajay.Kathat@microchip.com>
To: <linux-wireless@vger.kernel.org>
Subject: [PATCH v6 14/17] wilc1000: add sdio.c
Thread-Topic: [PATCH v6 14/17] wilc1000: add sdio.c
Thread-Index: AQHWBAGaqsNYpKZtUEy/lvOPO4SrUw==
Date: Fri, 27 Mar 2020 06:33:18 +0000
Message-ID: <20200327063302.20511-15-ajay.kathat@microchip.com>
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
x-ms-office365-filtering-correlation-id: 886963d0-d94a-4647-b440-08d7d218bd32
x-ms-traffictypediagnostic: BYAPR11MB3397:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR11MB3397BEDE750316373DB46B09E3CC0@BYAPR11MB3397.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:8;
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
x-microsoft-antispam-message-info: 90oksm82MZH1TZKvkd2xHLmxBbvjJ7HMP2laYtdwMt9e5POFMGZzTxUW71Tb2M7LHAO40onnyO5+ULskubo2zqOP+CHQJ6XrXzrULLWuwDzbMcVfrc1hL7lAhauwtzHpXPF9CVELq24c4+y6g/rKN2mQtsJ+tgfHmgM5jM6hzkrq3zPX/loWynW1BgLhStiT30kCLtUzhHuaveCvwGEUThmpmSuWYFTKQt5qSKhs9QWSsmnls//IPzmRv2MYWrfVxkdXp/TSKWOd61BBvyiK5X0fJVOPsqy6dW18ApO3dWzRIC9mWPT5wptiyELKCKzDdp6VaEKua+h3w2QMBmq1Z8qh7g5j8oLM2zs9K53ZJHGc4VilXUX4kC++ecYSMDMNfZxlNoEZcr7KQs4JlxXzv5hqcSyXO5PmY6NSYVCE1UV3WzqE6knZ3PxDQfoXCI2C
x-ms-exchange-antispam-messagedata: s8I2SoOK5XT3/Zi9xqXs8eSp2Ob8nzpOKdfB2Iehi5WKQBLAy2g7LsEQRwPLyXDzpy4VdjlPqWSjk1CIMf3Ggb9EXpNMYAUXISJJInp1RvQythwWYU2M7rO1WSzQvvIjZNzKBv2oWmJ9R5K/cKOvjw==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 886963d0-d94a-4647-b440-08d7d218bd32
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Mar 2020 06:33:19.0429 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GpIWxXftL95X2MOGI7BpmFSMcVPdWatJGh0wqxmy8TKV5X882NVmM2tIKxHYRR8i376N+KCVEH9VBFc5zLlM+EPb0cOZ/ytXi6KdlHjOUKs=
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

Moved 'drivers/staging/wilc1000/sdio.c' to
'drivers/net/wireless/microchip/wilc1000/sdio.c'.

Signed-off-by: Ajay Singh <ajay.kathat@microchip.com>
---
 .../net/wireless/microchip/wilc1000/sdio.c    | 1023 +++++++++++++++++
 1 file changed, 1023 insertions(+)
 create mode 100644 drivers/net/wireless/microchip/wilc1000/sdio.c

diff --git a/drivers/net/wireless/microchip/wilc1000/sdio.c b/drivers/net/wireless/microchip/wilc1000/sdio.c
new file mode 100644
index 000000000000..36eb589263bf
--- /dev/null
+++ b/drivers/net/wireless/microchip/wilc1000/sdio.c
@@ -0,0 +1,1023 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (c) 2012 - 2018 Microchip Technology Inc., and its subsidiaries.
+ * All rights reserved.
+ */
+
+#include <linux/clk.h>
+#include <linux/mmc/sdio_func.h>
+#include <linux/mmc/host.h>
+#include <linux/mmc/sdio.h>
+#include <linux/of_irq.h>
+
+#include "netdev.h"
+#include "cfg80211.h"
+
+#define SDIO_MODALIAS "wilc1000_sdio"
+
+#define SDIO_VENDOR_ID_WILC 0x0296
+#define SDIO_DEVICE_ID_WILC 0x5347
+
+static const struct sdio_device_id wilc_sdio_ids[] = {
+	{ SDIO_DEVICE(SDIO_VENDOR_ID_WILC, SDIO_DEVICE_ID_WILC) },
+	{ },
+};
+
+#define WILC_SDIO_BLOCK_SIZE 512
+
+struct wilc_sdio {
+	bool irq_gpio;
+	u32 block_size;
+	int has_thrpt_enh3;
+};
+
+struct sdio_cmd52 {
+	u32 read_write:		1;
+	u32 function:		3;
+	u32 raw:		1;
+	u32 address:		17;
+	u32 data:		8;
+};
+
+struct sdio_cmd53 {
+	u32 read_write:		1;
+	u32 function:		3;
+	u32 block_mode:		1;
+	u32 increment:		1;
+	u32 address:		17;
+	u32 count:		9;
+	u8 *buffer;
+	u32 block_size;
+};
+
+static const struct wilc_hif_func wilc_hif_sdio;
+
+static void wilc_sdio_interrupt(struct sdio_func *func)
+{
+	sdio_release_host(func);
+	wilc_handle_isr(sdio_get_drvdata(func));
+	sdio_claim_host(func);
+}
+
+static int wilc_sdio_cmd52(struct wilc *wilc, struct sdio_cmd52 *cmd)
+{
+	struct sdio_func *func = container_of(wilc->dev, struct sdio_func, dev);
+	int ret;
+	u8 data;
+
+	sdio_claim_host(func);
+
+	func->num = cmd->function;
+	if (cmd->read_write) {  /* write */
+		if (cmd->raw) {
+			sdio_writeb(func, cmd->data, cmd->address, &ret);
+			data = sdio_readb(func, cmd->address, &ret);
+			cmd->data = data;
+		} else {
+			sdio_writeb(func, cmd->data, cmd->address, &ret);
+		}
+	} else {        /* read */
+		data = sdio_readb(func, cmd->address, &ret);
+		cmd->data = data;
+	}
+
+	sdio_release_host(func);
+
+	if (ret)
+		dev_err(&func->dev, "%s..failed, err(%d)\n", __func__, ret);
+	return ret;
+}
+
+static int wilc_sdio_cmd53(struct wilc *wilc, struct sdio_cmd53 *cmd)
+{
+	struct sdio_func *func = container_of(wilc->dev, struct sdio_func, dev);
+	int size, ret;
+
+	sdio_claim_host(func);
+
+	func->num = cmd->function;
+	func->cur_blksize = cmd->block_size;
+	if (cmd->block_mode)
+		size = cmd->count * cmd->block_size;
+	else
+		size = cmd->count;
+
+	if (cmd->read_write) {  /* write */
+		ret = sdio_memcpy_toio(func, cmd->address,
+				       (void *)cmd->buffer, size);
+	} else {        /* read */
+		ret = sdio_memcpy_fromio(func, (void *)cmd->buffer,
+					 cmd->address,  size);
+	}
+
+	sdio_release_host(func);
+
+	if (ret)
+		dev_err(&func->dev, "%s..failed, err(%d)\n", __func__,  ret);
+
+	return ret;
+}
+
+static int wilc_sdio_probe(struct sdio_func *func,
+			   const struct sdio_device_id *id)
+{
+	struct wilc *wilc;
+	int ret;
+	struct wilc_sdio *sdio_priv;
+
+	sdio_priv = kzalloc(sizeof(*sdio_priv), GFP_KERNEL);
+	if (!sdio_priv)
+		return -ENOMEM;
+
+	ret = wilc_cfg80211_init(&wilc, &func->dev, WILC_HIF_SDIO,
+				 &wilc_hif_sdio);
+	if (ret) {
+		kfree(sdio_priv);
+		return ret;
+	}
+
+	if (IS_ENABLED(CONFIG_WILC1000_HW_OOB_INTR)) {
+		struct device_node *np = func->card->dev.of_node;
+		int irq_num = of_irq_get(np, 0);
+
+		if (irq_num > 0) {
+			wilc->dev_irq_num = irq_num;
+			sdio_priv->irq_gpio = true;
+		}
+	}
+
+	sdio_set_drvdata(func, wilc);
+	wilc->bus_data = sdio_priv;
+	wilc->dev = &func->dev;
+
+	wilc->rtc_clk = devm_clk_get(&func->card->dev, "rtc");
+	if (PTR_ERR_OR_ZERO(wilc->rtc_clk) == -EPROBE_DEFER)
+		return -EPROBE_DEFER;
+	else if (!IS_ERR(wilc->rtc_clk))
+		clk_prepare_enable(wilc->rtc_clk);
+
+	dev_info(&func->dev, "Driver Initializing success\n");
+	return 0;
+}
+
+static void wilc_sdio_remove(struct sdio_func *func)
+{
+	struct wilc *wilc = sdio_get_drvdata(func);
+
+	if (!IS_ERR(wilc->rtc_clk))
+		clk_disable_unprepare(wilc->rtc_clk);
+
+	wilc_netdev_cleanup(wilc);
+}
+
+static int wilc_sdio_reset(struct wilc *wilc)
+{
+	struct sdio_cmd52 cmd;
+	int ret;
+	struct sdio_func *func = dev_to_sdio_func(wilc->dev);
+
+	cmd.read_write = 1;
+	cmd.function = 0;
+	cmd.raw = 0;
+	cmd.address = SDIO_CCCR_ABORT;
+	cmd.data = WILC_SDIO_CCCR_ABORT_RESET;
+	ret = wilc_sdio_cmd52(wilc, &cmd);
+	if (ret) {
+		dev_err(&func->dev, "Fail cmd 52, reset cmd ...\n");
+		return ret;
+	}
+	return 0;
+}
+
+static int wilc_sdio_suspend(struct device *dev)
+{
+	struct sdio_func *func = dev_to_sdio_func(dev);
+	struct wilc *wilc = sdio_get_drvdata(func);
+	int ret;
+
+	dev_info(dev, "sdio suspend\n");
+	chip_wakeup(wilc);
+
+	if (!IS_ERR(wilc->rtc_clk))
+		clk_disable_unprepare(wilc->rtc_clk);
+
+	if (wilc->suspend_event) {
+		host_sleep_notify(wilc);
+		chip_allow_sleep(wilc);
+	}
+
+	ret = wilc_sdio_reset(wilc);
+	if (ret) {
+		dev_err(&func->dev, "Fail reset sdio\n");
+		return ret;
+	}
+	sdio_claim_host(func);
+
+	return 0;
+}
+
+static int wilc_sdio_enable_interrupt(struct wilc *dev)
+{
+	struct sdio_func *func = container_of(dev->dev, struct sdio_func, dev);
+	int ret = 0;
+
+	sdio_claim_host(func);
+	ret = sdio_claim_irq(func, wilc_sdio_interrupt);
+	sdio_release_host(func);
+
+	if (ret < 0) {
+		dev_err(&func->dev, "can't claim sdio_irq, err(%d)\n", ret);
+		ret = -EIO;
+	}
+	return ret;
+}
+
+static void wilc_sdio_disable_interrupt(struct wilc *dev)
+{
+	struct sdio_func *func = container_of(dev->dev, struct sdio_func, dev);
+	int ret;
+
+	sdio_claim_host(func);
+	ret = sdio_release_irq(func);
+	if (ret < 0)
+		dev_err(&func->dev, "can't release sdio_irq, err(%d)\n", ret);
+	sdio_release_host(func);
+}
+
+/********************************************
+ *
+ *      Function 0
+ *
+ ********************************************/
+
+static int wilc_sdio_set_func0_csa_address(struct wilc *wilc, u32 adr)
+{
+	struct sdio_func *func = dev_to_sdio_func(wilc->dev);
+	struct sdio_cmd52 cmd;
+	int ret;
+
+	/**
+	 *      Review: BIG ENDIAN
+	 **/
+	cmd.read_write = 1;
+	cmd.function = 0;
+	cmd.raw = 0;
+	cmd.address = WILC_SDIO_FBR_CSA_REG;
+	cmd.data = (u8)adr;
+	ret = wilc_sdio_cmd52(wilc, &cmd);
+	if (ret) {
+		dev_err(&func->dev, "Failed cmd52, set %04x data...\n",
+			cmd.address);
+		return ret;
+	}
+
+	cmd.address = WILC_SDIO_FBR_CSA_REG + 1;
+	cmd.data = (u8)(adr >> 8);
+	ret = wilc_sdio_cmd52(wilc, &cmd);
+	if (ret) {
+		dev_err(&func->dev, "Failed cmd52, set %04x data...\n",
+			cmd.address);
+		return ret;
+	}
+
+	cmd.address = WILC_SDIO_FBR_CSA_REG + 2;
+	cmd.data = (u8)(adr >> 16);
+	ret = wilc_sdio_cmd52(wilc, &cmd);
+	if (ret) {
+		dev_err(&func->dev, "Failed cmd52, set %04x data...\n",
+			cmd.address);
+		return ret;
+	}
+
+	return 0;
+}
+
+static int wilc_sdio_set_block_size(struct wilc *wilc, u8 func_num,
+				    u32 block_size)
+{
+	struct sdio_func *func = dev_to_sdio_func(wilc->dev);
+	struct sdio_cmd52 cmd;
+	int ret;
+
+	cmd.read_write = 1;
+	cmd.function = 0;
+	cmd.raw = 0;
+	cmd.address = SDIO_FBR_BASE(func_num) + SDIO_CCCR_BLKSIZE;
+	cmd.data = (u8)block_size;
+	ret = wilc_sdio_cmd52(wilc, &cmd);
+	if (ret) {
+		dev_err(&func->dev, "Failed cmd52, set %04x data...\n",
+			cmd.address);
+		return ret;
+	}
+
+	cmd.address = SDIO_FBR_BASE(func_num) + SDIO_CCCR_BLKSIZE +  1;
+	cmd.data = (u8)(block_size >> 8);
+	ret = wilc_sdio_cmd52(wilc, &cmd);
+	if (ret) {
+		dev_err(&func->dev, "Failed cmd52, set %04x data...\n",
+			cmd.address);
+		return ret;
+	}
+
+	return 0;
+}
+
+/********************************************
+ *
+ *      Sdio interfaces
+ *
+ ********************************************/
+static int wilc_sdio_write_reg(struct wilc *wilc, u32 addr, u32 data)
+{
+	struct sdio_func *func = dev_to_sdio_func(wilc->dev);
+	struct wilc_sdio *sdio_priv = wilc->bus_data;
+	int ret;
+
+	cpu_to_le32s(&data);
+
+	if (addr >= 0xf0 && addr <= 0xff) { /* only vendor specific registers */
+		struct sdio_cmd52 cmd;
+
+		cmd.read_write = 1;
+		cmd.function = 0;
+		cmd.raw = 0;
+		cmd.address = addr;
+		cmd.data = data;
+		ret = wilc_sdio_cmd52(wilc, &cmd);
+		if (ret)
+			dev_err(&func->dev,
+				"Failed cmd 52, read reg (%08x) ...\n", addr);
+	} else {
+		struct sdio_cmd53 cmd;
+
+		/**
+		 *      set the AHB address
+		 **/
+		ret = wilc_sdio_set_func0_csa_address(wilc, addr);
+		if (ret)
+			return ret;
+
+		cmd.read_write = 1;
+		cmd.function = 0;
+		cmd.address = WILC_SDIO_FBR_DATA_REG;
+		cmd.block_mode = 0;
+		cmd.increment = 1;
+		cmd.count = 4;
+		cmd.buffer = (u8 *)&data;
+		cmd.block_size = sdio_priv->block_size;
+		ret = wilc_sdio_cmd53(wilc, &cmd);
+		if (ret)
+			dev_err(&func->dev,
+				"Failed cmd53, write reg (%08x)...\n", addr);
+	}
+
+	return ret;
+}
+
+static int wilc_sdio_write(struct wilc *wilc, u32 addr, u8 *buf, u32 size)
+{
+	struct sdio_func *func = dev_to_sdio_func(wilc->dev);
+	struct wilc_sdio *sdio_priv = wilc->bus_data;
+	u32 block_size = sdio_priv->block_size;
+	struct sdio_cmd53 cmd;
+	int nblk, nleft, ret;
+
+	cmd.read_write = 1;
+	if (addr > 0) {
+		/**
+		 *      func 0 access
+		 **/
+		cmd.function = 0;
+		cmd.address = WILC_SDIO_FBR_DATA_REG;
+	} else {
+		/**
+		 *      func 1 access
+		 **/
+		cmd.function = 1;
+		cmd.address = WILC_SDIO_F1_DATA_REG;
+	}
+
+	size = ALIGN(size, 4);
+	nblk = size / block_size;
+	nleft = size % block_size;
+
+	if (nblk > 0) {
+		cmd.block_mode = 1;
+		cmd.increment = 1;
+		cmd.count = nblk;
+		cmd.buffer = buf;
+		cmd.block_size = block_size;
+		if (addr > 0) {
+			ret = wilc_sdio_set_func0_csa_address(wilc, addr);
+			if (ret)
+				return ret;
+		}
+		ret = wilc_sdio_cmd53(wilc, &cmd);
+		if (ret) {
+			dev_err(&func->dev,
+				"Failed cmd53 [%x], block send...\n", addr);
+			return ret;
+		}
+		if (addr > 0)
+			addr += nblk * block_size;
+		buf += nblk * block_size;
+	}
+
+	if (nleft > 0) {
+		cmd.block_mode = 0;
+		cmd.increment = 1;
+		cmd.count = nleft;
+		cmd.buffer = buf;
+
+		cmd.block_size = block_size;
+
+		if (addr > 0) {
+			ret = wilc_sdio_set_func0_csa_address(wilc, addr);
+			if (ret)
+				return ret;
+		}
+		ret = wilc_sdio_cmd53(wilc, &cmd);
+		if (ret) {
+			dev_err(&func->dev,
+				"Failed cmd53 [%x], bytes send...\n", addr);
+			return ret;
+		}
+	}
+
+	return 0;
+}
+
+static int wilc_sdio_read_reg(struct wilc *wilc, u32 addr, u32 *data)
+{
+	struct sdio_func *func = dev_to_sdio_func(wilc->dev);
+	struct wilc_sdio *sdio_priv = wilc->bus_data;
+	int ret;
+
+	if (addr >= 0xf0 && addr <= 0xff) { /* only vendor specific registers */
+		struct sdio_cmd52 cmd;
+
+		cmd.read_write = 0;
+		cmd.function = 0;
+		cmd.raw = 0;
+		cmd.address = addr;
+		ret = wilc_sdio_cmd52(wilc, &cmd);
+		if (ret) {
+			dev_err(&func->dev,
+				"Failed cmd 52, read reg (%08x) ...\n", addr);
+			return ret;
+		}
+		*data = cmd.data;
+	} else {
+		struct sdio_cmd53 cmd;
+
+		ret = wilc_sdio_set_func0_csa_address(wilc, addr);
+		if (ret)
+			return ret;
+
+		cmd.read_write = 0;
+		cmd.function = 0;
+		cmd.address = WILC_SDIO_FBR_DATA_REG;
+		cmd.block_mode = 0;
+		cmd.increment = 1;
+		cmd.count = 4;
+		cmd.buffer = (u8 *)data;
+
+		cmd.block_size = sdio_priv->block_size;
+		ret = wilc_sdio_cmd53(wilc, &cmd);
+		if (ret) {
+			dev_err(&func->dev,
+				"Failed cmd53, read reg (%08x)...\n", addr);
+			return ret;
+		}
+	}
+
+	le32_to_cpus(data);
+	return 0;
+}
+
+static int wilc_sdio_read(struct wilc *wilc, u32 addr, u8 *buf, u32 size)
+{
+	struct sdio_func *func = dev_to_sdio_func(wilc->dev);
+	struct wilc_sdio *sdio_priv = wilc->bus_data;
+	u32 block_size = sdio_priv->block_size;
+	struct sdio_cmd53 cmd;
+	int nblk, nleft, ret;
+
+	cmd.read_write = 0;
+	if (addr > 0) {
+		/**
+		 *      func 0 access
+		 **/
+		cmd.function = 0;
+		cmd.address = WILC_SDIO_FBR_DATA_REG;
+	} else {
+		/**
+		 *      func 1 access
+		 **/
+		cmd.function = 1;
+		cmd.address = WILC_SDIO_F1_DATA_REG;
+	}
+
+	size = ALIGN(size, 4);
+	nblk = size / block_size;
+	nleft = size % block_size;
+
+	if (nblk > 0) {
+		cmd.block_mode = 1;
+		cmd.increment = 1;
+		cmd.count = nblk;
+		cmd.buffer = buf;
+		cmd.block_size = block_size;
+		if (addr > 0) {
+			ret = wilc_sdio_set_func0_csa_address(wilc, addr);
+			if (ret)
+				return ret;
+		}
+		ret = wilc_sdio_cmd53(wilc, &cmd);
+		if (ret) {
+			dev_err(&func->dev,
+				"Failed cmd53 [%x], block read...\n", addr);
+			return ret;
+		}
+		if (addr > 0)
+			addr += nblk * block_size;
+		buf += nblk * block_size;
+	}       /* if (nblk > 0) */
+
+	if (nleft > 0) {
+		cmd.block_mode = 0;
+		cmd.increment = 1;
+		cmd.count = nleft;
+		cmd.buffer = buf;
+
+		cmd.block_size = block_size;
+
+		if (addr > 0) {
+			ret = wilc_sdio_set_func0_csa_address(wilc, addr);
+			if (ret)
+				return ret;
+		}
+		ret = wilc_sdio_cmd53(wilc, &cmd);
+		if (ret) {
+			dev_err(&func->dev,
+				"Failed cmd53 [%x], bytes read...\n", addr);
+			return ret;
+		}
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
+static int wilc_sdio_deinit(struct wilc *wilc)
+{
+	return 0;
+}
+
+static int wilc_sdio_init(struct wilc *wilc, bool resume)
+{
+	struct sdio_func *func = dev_to_sdio_func(wilc->dev);
+	struct wilc_sdio *sdio_priv = wilc->bus_data;
+	struct sdio_cmd52 cmd;
+	int loop, ret;
+	u32 chipid;
+
+	/**
+	 *      function 0 csa enable
+	 **/
+	cmd.read_write = 1;
+	cmd.function = 0;
+	cmd.raw = 1;
+	cmd.address = SDIO_FBR_BASE(func->num);
+	cmd.data = SDIO_FBR_ENABLE_CSA;
+	ret = wilc_sdio_cmd52(wilc, &cmd);
+	if (ret) {
+		dev_err(&func->dev, "Fail cmd 52, enable csa...\n");
+		return ret;
+	}
+
+	/**
+	 *      function 0 block size
+	 **/
+	ret = wilc_sdio_set_block_size(wilc, 0, WILC_SDIO_BLOCK_SIZE);
+	if (ret) {
+		dev_err(&func->dev, "Fail cmd 52, set func 0 block size...\n");
+		return ret;
+	}
+	sdio_priv->block_size = WILC_SDIO_BLOCK_SIZE;
+
+	/**
+	 *      enable func1 IO
+	 **/
+	cmd.read_write = 1;
+	cmd.function = 0;
+	cmd.raw = 1;
+	cmd.address = SDIO_CCCR_IOEx;
+	cmd.data = WILC_SDIO_CCCR_IO_EN_FUNC1;
+	ret = wilc_sdio_cmd52(wilc, &cmd);
+	if (ret) {
+		dev_err(&func->dev,
+			"Fail cmd 52, set IOE register...\n");
+		return ret;
+	}
+
+	/**
+	 *      make sure func 1 is up
+	 **/
+	cmd.read_write = 0;
+	cmd.function = 0;
+	cmd.raw = 0;
+	cmd.address = SDIO_CCCR_IORx;
+	loop = 3;
+	do {
+		cmd.data = 0;
+		ret = wilc_sdio_cmd52(wilc, &cmd);
+		if (ret) {
+			dev_err(&func->dev,
+				"Fail cmd 52, get IOR register...\n");
+			return ret;
+		}
+		if (cmd.data == WILC_SDIO_CCCR_IO_EN_FUNC1)
+			break;
+	} while (loop--);
+
+	if (loop <= 0) {
+		dev_err(&func->dev, "Fail func 1 is not ready...\n");
+		return -EINVAL;
+	}
+
+	/**
+	 *      func 1 is ready, set func 1 block size
+	 **/
+	ret = wilc_sdio_set_block_size(wilc, 1, WILC_SDIO_BLOCK_SIZE);
+	if (ret) {
+		dev_err(&func->dev, "Fail set func 1 block size...\n");
+		return ret;
+	}
+
+	/**
+	 *      func 1 interrupt enable
+	 **/
+	cmd.read_write = 1;
+	cmd.function = 0;
+	cmd.raw = 1;
+	cmd.address = SDIO_CCCR_IENx;
+	cmd.data = WILC_SDIO_CCCR_IEN_MASTER | WILC_SDIO_CCCR_IEN_FUNC1;
+	ret = wilc_sdio_cmd52(wilc, &cmd);
+	if (ret) {
+		dev_err(&func->dev, "Fail cmd 52, set IEN register...\n");
+		return ret;
+	}
+
+	/**
+	 *      make sure can read back chip id correctly
+	 **/
+	if (!resume) {
+		int rev;
+
+		ret = wilc_sdio_read_reg(wilc, WILC_CHIPID, &chipid);
+		if (ret) {
+			dev_err(&func->dev, "Fail cmd read chip id...\n");
+			return ret;
+		}
+		dev_err(&func->dev, "chipid (%08x)\n", chipid);
+		rev = FIELD_GET(WILC_CHIP_REV_FIELD, chipid);
+		if (rev > FIELD_GET(WILC_CHIP_REV_FIELD, WILC_1000_BASE_ID_2A))
+			sdio_priv->has_thrpt_enh3 = 1;
+		else
+			sdio_priv->has_thrpt_enh3 = 0;
+		dev_info(&func->dev, "has_thrpt_enh3 = %d...\n",
+			 sdio_priv->has_thrpt_enh3);
+	}
+
+	return 0;
+}
+
+static int wilc_sdio_read_size(struct wilc *wilc, u32 *size)
+{
+	u32 tmp;
+	struct sdio_cmd52 cmd;
+
+	/**
+	 *      Read DMA count in words
+	 **/
+	cmd.read_write = 0;
+	cmd.function = 0;
+	cmd.raw = 0;
+	cmd.address = WILC_SDIO_INTERRUPT_DATA_SZ_REG;
+	cmd.data = 0;
+	wilc_sdio_cmd52(wilc, &cmd);
+	tmp = cmd.data;
+
+	cmd.address = WILC_SDIO_INTERRUPT_DATA_SZ_REG + 1;
+	cmd.data = 0;
+	wilc_sdio_cmd52(wilc, &cmd);
+	tmp |= (cmd.data << 8);
+
+	*size = tmp;
+	return 0;
+}
+
+static int wilc_sdio_read_int(struct wilc *wilc, u32 *int_status)
+{
+	struct sdio_func *func = dev_to_sdio_func(wilc->dev);
+	struct wilc_sdio *sdio_priv = wilc->bus_data;
+	u32 tmp;
+	u8 irq_flags;
+	struct sdio_cmd52 cmd;
+
+	wilc_sdio_read_size(wilc, &tmp);
+
+	/**
+	 *      Read IRQ flags
+	 **/
+	if (!sdio_priv->irq_gpio) {
+		cmd.function = 1;
+		cmd.address = WILC_SDIO_EXT_IRQ_FLAG_REG;
+	} else {
+		cmd.function = 0;
+		cmd.address = WILC_SDIO_IRQ_FLAG_REG;
+	}
+	cmd.raw = 0;
+	cmd.read_write = 0;
+	cmd.data = 0;
+	wilc_sdio_cmd52(wilc, &cmd);
+	irq_flags = cmd.data;
+	tmp |= FIELD_PREP(IRG_FLAGS_MASK, cmd.data);
+
+	if (FIELD_GET(UNHANDLED_IRQ_MASK, irq_flags))
+		dev_err(&func->dev, "Unexpected interrupt (1) int=%lx\n",
+			FIELD_GET(UNHANDLED_IRQ_MASK, irq_flags));
+
+	*int_status = tmp;
+
+	return 0;
+}
+
+static int wilc_sdio_clear_int_ext(struct wilc *wilc, u32 val)
+{
+	struct sdio_func *func = dev_to_sdio_func(wilc->dev);
+	struct wilc_sdio *sdio_priv = wilc->bus_data;
+	int ret;
+	int vmm_ctl;
+
+	if (sdio_priv->has_thrpt_enh3) {
+		u32 reg = 0;
+
+		if (sdio_priv->irq_gpio)
+			reg = val & (BIT(MAX_NUM_INT) - 1);
+
+		/* select VMM table 0 */
+		if (val & SEL_VMM_TBL0)
+			reg |= BIT(5);
+		/* select VMM table 1 */
+		if (val & SEL_VMM_TBL1)
+			reg |= BIT(6);
+		/* enable VMM */
+		if (val & EN_VMM)
+			reg |= BIT(7);
+		if (reg) {
+			struct sdio_cmd52 cmd;
+
+			cmd.read_write = 1;
+			cmd.function = 0;
+			cmd.raw = 0;
+			cmd.address = WILC_SDIO_IRQ_CLEAR_FLAG_REG;
+			cmd.data = reg;
+
+			ret = wilc_sdio_cmd52(wilc, &cmd);
+			if (ret) {
+				dev_err(&func->dev,
+					"Failed cmd52, set (%02x) data (%d) ...\n",
+					cmd.address, __LINE__);
+				return ret;
+			}
+		}
+		return 0;
+	}
+	if (sdio_priv->irq_gpio) {
+		/* has_thrpt_enh2 uses register 0xf8 to clear interrupts. */
+		/*
+		 * Cannot clear multiple interrupts.
+		 * Must clear each interrupt individually.
+		 */
+		u32 flags;
+		int i;
+
+		flags = val & (BIT(MAX_NUM_INT) - 1);
+		for (i = 0; i < NUM_INT_EXT && flags; i++) {
+			if (flags & BIT(i)) {
+				struct sdio_cmd52 cmd;
+
+				cmd.read_write = 1;
+				cmd.function = 0;
+				cmd.raw = 0;
+				cmd.address = WILC_SDIO_IRQ_CLEAR_FLAG_REG;
+				cmd.data = BIT(i);
+
+				ret = wilc_sdio_cmd52(wilc, &cmd);
+				if (ret) {
+					dev_err(&func->dev,
+						"Failed cmd52, set (%02x) data (%d) ...\n",
+						cmd.address, __LINE__);
+					return ret;
+				}
+				flags &= ~BIT(i);
+			}
+		}
+
+		for (i = NUM_INT_EXT; i < MAX_NUM_INT && flags; i++) {
+			if (flags & BIT(i)) {
+				dev_err(&func->dev,
+					"Unexpected interrupt cleared %d...\n",
+					i);
+				flags &= ~BIT(i);
+			}
+		}
+	}
+
+	vmm_ctl = 0;
+	/* select VMM table 0 */
+	if (val & SEL_VMM_TBL0)
+		vmm_ctl |= BIT(0);
+	/* select VMM table 1 */
+	if (val & SEL_VMM_TBL1)
+		vmm_ctl |= BIT(1);
+	/* enable VMM */
+	if (val & EN_VMM)
+		vmm_ctl |= BIT(2);
+
+	if (vmm_ctl) {
+		struct sdio_cmd52 cmd;
+
+		cmd.read_write = 1;
+		cmd.function = 0;
+		cmd.raw = 0;
+		cmd.address = WILC_SDIO_VMM_TBL_CTRL_REG;
+		cmd.data = vmm_ctl;
+		ret = wilc_sdio_cmd52(wilc, &cmd);
+		if (ret) {
+			dev_err(&func->dev,
+				"Failed cmd52, set (%02x) data (%d) ...\n",
+				cmd.address, __LINE__);
+			return ret;
+		}
+	}
+	return 0;
+}
+
+static int wilc_sdio_sync_ext(struct wilc *wilc, int nint)
+{
+	struct sdio_func *func = dev_to_sdio_func(wilc->dev);
+	struct wilc_sdio *sdio_priv = wilc->bus_data;
+	u32 reg;
+
+	if (nint > MAX_NUM_INT) {
+		dev_err(&func->dev, "Too many interrupts (%d)...\n", nint);
+		return -EINVAL;
+	}
+
+	/**
+	 *      Disable power sequencer
+	 **/
+	if (wilc_sdio_read_reg(wilc, WILC_MISC, &reg)) {
+		dev_err(&func->dev, "Failed read misc reg...\n");
+		return -EINVAL;
+	}
+
+	reg &= ~BIT(8);
+	if (wilc_sdio_write_reg(wilc, WILC_MISC, reg)) {
+		dev_err(&func->dev, "Failed write misc reg...\n");
+		return -EINVAL;
+	}
+
+	if (sdio_priv->irq_gpio) {
+		u32 reg;
+		int ret, i;
+
+		/**
+		 *      interrupt pin mux select
+		 **/
+		ret = wilc_sdio_read_reg(wilc, WILC_PIN_MUX_0, &reg);
+		if (ret) {
+			dev_err(&func->dev, "Failed read reg (%08x)...\n",
+				WILC_PIN_MUX_0);
+			return ret;
+		}
+		reg |= BIT(8);
+		ret = wilc_sdio_write_reg(wilc, WILC_PIN_MUX_0, reg);
+		if (ret) {
+			dev_err(&func->dev, "Failed write reg (%08x)...\n",
+				WILC_PIN_MUX_0);
+			return ret;
+		}
+
+		/**
+		 *      interrupt enable
+		 **/
+		ret = wilc_sdio_read_reg(wilc, WILC_INTR_ENABLE, &reg);
+		if (ret) {
+			dev_err(&func->dev, "Failed read reg (%08x)...\n",
+				WILC_INTR_ENABLE);
+			return ret;
+		}
+
+		for (i = 0; (i < 5) && (nint > 0); i++, nint--)
+			reg |= BIT((27 + i));
+		ret = wilc_sdio_write_reg(wilc, WILC_INTR_ENABLE, reg);
+		if (ret) {
+			dev_err(&func->dev, "Failed write reg (%08x)...\n",
+				WILC_INTR_ENABLE);
+			return ret;
+		}
+		if (nint) {
+			ret = wilc_sdio_read_reg(wilc, WILC_INTR2_ENABLE, &reg);
+			if (ret) {
+				dev_err(&func->dev,
+					"Failed read reg (%08x)...\n",
+					WILC_INTR2_ENABLE);
+				return ret;
+			}
+
+			for (i = 0; (i < 3) && (nint > 0); i++, nint--)
+				reg |= BIT(i);
+
+			ret = wilc_sdio_read_reg(wilc, WILC_INTR2_ENABLE, &reg);
+			if (ret) {
+				dev_err(&func->dev,
+					"Failed write reg (%08x)...\n",
+					WILC_INTR2_ENABLE);
+				return ret;
+			}
+		}
+	}
+	return 0;
+}
+
+/* Global sdio HIF function table */
+static const struct wilc_hif_func wilc_hif_sdio = {
+	.hif_init = wilc_sdio_init,
+	.hif_deinit = wilc_sdio_deinit,
+	.hif_read_reg = wilc_sdio_read_reg,
+	.hif_write_reg = wilc_sdio_write_reg,
+	.hif_block_rx = wilc_sdio_read,
+	.hif_block_tx = wilc_sdio_write,
+	.hif_read_int = wilc_sdio_read_int,
+	.hif_clear_int_ext = wilc_sdio_clear_int_ext,
+	.hif_read_size = wilc_sdio_read_size,
+	.hif_block_tx_ext = wilc_sdio_write,
+	.hif_block_rx_ext = wilc_sdio_read,
+	.hif_sync_ext = wilc_sdio_sync_ext,
+	.enable_interrupt = wilc_sdio_enable_interrupt,
+	.disable_interrupt = wilc_sdio_disable_interrupt,
+};
+
+static int wilc_sdio_resume(struct device *dev)
+{
+	struct sdio_func *func = dev_to_sdio_func(dev);
+	struct wilc *wilc = sdio_get_drvdata(func);
+
+	dev_info(dev, "sdio resume\n");
+	sdio_release_host(func);
+	chip_wakeup(wilc);
+	wilc_sdio_init(wilc, true);
+
+	if (wilc->suspend_event)
+		host_wakeup_notify(wilc);
+
+	chip_allow_sleep(wilc);
+
+	return 0;
+}
+
+static const struct of_device_id wilc_of_match[] = {
+	{ .compatible = "microchip,wilc1000", },
+	{ /* sentinel */ }
+};
+MODULE_DEVICE_TABLE(of, wilc_of_match);
+
+static const struct dev_pm_ops wilc_sdio_pm_ops = {
+	.suspend = wilc_sdio_suspend,
+	.resume = wilc_sdio_resume,
+};
+
+static struct sdio_driver wilc_sdio_driver = {
+	.name		= SDIO_MODALIAS,
+	.id_table	= wilc_sdio_ids,
+	.probe		= wilc_sdio_probe,
+	.remove		= wilc_sdio_remove,
+	.drv = {
+		.pm = &wilc_sdio_pm_ops,
+		.of_match_table = wilc_of_match,
+	}
+};
+module_driver(wilc_sdio_driver,
+	      sdio_register_driver,
+	      sdio_unregister_driver);
+MODULE_LICENSE("GPL");
-- 
2.24.0
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
