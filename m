Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B08E132A4
	for <lists+driverdev-devel@lfdr.de>; Fri,  3 May 2019 19:00:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9F70488507;
	Fri,  3 May 2019 17:00:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Y461S+Djbohc; Fri,  3 May 2019 17:00:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5998A8807C;
	Fri,  3 May 2019 17:00:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 992771BF23C
 for <devel@linuxdriverproject.org>; Fri,  3 May 2019 17:00:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 9234022D55
 for <devel@linuxdriverproject.org>; Fri,  3 May 2019 17:00:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Q4X3n-7Q2L6S for <devel@linuxdriverproject.org>;
 Fri,  3 May 2019 17:00:00 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f65.google.com (mail-ed1-f65.google.com
 [209.85.208.65])
 by silver.osuosl.org (Postfix) with ESMTPS id 3C38521526
 for <devel@driverdev.osuosl.org>; Fri,  3 May 2019 17:00:00 +0000 (UTC)
Received: by mail-ed1-f65.google.com with SMTP id l25so6776274eda.9
 for <devel@driverdev.osuosl.org>; Fri, 03 May 2019 10:00:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nexus-software-ie.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=0Wk49vomZFoMlLFJQLGwV/ZFp08bg3i3CXAll6kOF5s=;
 b=sUcjanuoRtHWVgXhcC3G/6xATzmMBQOO9GTXJN4zvjn6ofqvEWE/9FXcGP1PCzQOT0
 OEDBIc1luCpKqbLXz4B7vam0bOFSEVLraSOm16xpnF3Pv1cJFN5/OTcd4UV3PP/bmFCr
 jZ0T52DITzraNRfVAmDdASx7uQB1yYh7OrGhGX20prFjS6X/BYIAzdKu6ZA9ZE1aNP7r
 JnwDNhbdoogT5ulTcTRvt8/22UK2iXq6bvinNNgCgOVhpmMOkax2Mrti5USFhYjmXY7v
 S3xJpgYlFaXvr+30u1YOY3XA7gOzwLo7Fu/bVMnXefpqXrrq90GMIxLE7RV7xYsfY8MG
 j+kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=0Wk49vomZFoMlLFJQLGwV/ZFp08bg3i3CXAll6kOF5s=;
 b=rm/GMlPl9Y8YINXe4R4H1aUDz6sPk98SyhGSPC/zgy+OJtRRCCgIhHyYV0gMJHnucb
 K9hzLa5/JHdeE66eECFLNl1ZHSwXMcoitRyByxc9fUxqXjL8JNhVfgMIoL9zEctB1di8
 hrb9MjZlV1WrMv195XRYMV/rHOioE7jnV1nij81Dr1pT6Nlql9QbIHGO0sXbQqBo+R9S
 /zRyXe/McPq0y85bEdSQAJRvWD0d9ExbyWet+7DIbrogFuZStw67BF/LmJj4gd20pMLg
 f9+ElIBBibSNCu12m9EsWgDHeFeUhpRK2D61+J4aV+qW6jmUp6evjKoeZ+31OP7tho9/
 90tw==
X-Gm-Message-State: APjAAAUg5wR1hpxek3EV2f9XCSqCNF7LW5Hk9tEyYEWotnEXVsRRNXAO
 5A0zRjynoXOopId3eWQqq4keJQ==
X-Google-Smtp-Source: APXvYqza9EW7i8l/zxv9uaeeh4p9LsrmmmS7P2HdhsBz8BWTGlYVtxdhtbupMh9ZAAenOnjZehjxEg==
X-Received: by 2002:a17:906:4f18:: with SMTP id
 t24mr7114020eju.43.1556902429827; 
 Fri, 03 May 2019 09:53:49 -0700 (PDT)
Received: from event-horizon.net ([80.111.179.123])
 by smtp.gmail.com with ESMTPSA id j55sm707038ede.27.2019.05.03.09.53.48
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 03 May 2019 09:53:49 -0700 (PDT)
From: Bryan O'Donoghue <pure.logic@nexus-software.ie>
To: gregkh@linuxfoundation.org, l.stach@pengutronix.de, peng.fan@nxp.com,
 shawnguo@kernel.org, srinivas.kandagatla@linaro.org,
 leonard.crestez@nxp.com
Subject: [PATCH v6 4/5] nvmem: imx-ocotp: Add i.MX8MM support
Date: Fri,  3 May 2019 17:53:41 +0100
Message-Id: <20190503165342.30139-5-pure.logic@nexus-software.ie>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190503165342.30139-1-pure.logic@nexus-software.ie>
References: <20190503165342.30139-1-pure.logic@nexus-software.ie>
MIME-Version: 1.0
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
Cc: devel@driverdev.osuosl.org, aisheng.dong@nxp.com, abel.vesa@nxp.com,
 anson.huang@nxp.com, linux-imx@nxp.com, kernel@pengutronix.de,
 fabio.estevam@nxp.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch adds support to burn the fuses on the i.MX8MM.
https://www.nxp.com/webapp/Download?colCode=IMX8MMRM

The i.MX8MM is similar to i.MX6 processors in terms of addressing and clock
setup.

The documentation specifies 60 discreet OTP registers but, the fusemap
address space encompasses up to 256 registers. We map the entire putative
256 OTP registers.

Signed-off-by: Bryan O'Donoghue <pure.logic@nexus-software.ie>
---
 drivers/nvmem/imx-ocotp.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/nvmem/imx-ocotp.c b/drivers/nvmem/imx-ocotp.c
index 2c5009691dd6..189fd5f334f4 100644
--- a/drivers/nvmem/imx-ocotp.c
+++ b/drivers/nvmem/imx-ocotp.c
@@ -479,6 +479,12 @@ static const struct ocotp_params imx8mq_params = {
 	.set_timing = imx_ocotp_set_imx7_timing,
 };
 
+static const struct ocotp_params imx8mm_params = {
+	.nregs = 256,
+	.bank_address_words = 0,
+	.set_timing = imx_ocotp_set_imx6_timing,
+};
+
 static const struct of_device_id imx_ocotp_dt_ids[] = {
 	{ .compatible = "fsl,imx6q-ocotp",  .data = &imx6q_params },
 	{ .compatible = "fsl,imx6sl-ocotp", .data = &imx6sl_params },
@@ -489,6 +495,7 @@ static const struct of_device_id imx_ocotp_dt_ids[] = {
 	{ .compatible = "fsl,imx6sll-ocotp", .data = &imx6sll_params },
 	{ .compatible = "fsl,imx7ulp-ocotp", .data = &imx7ulp_params },
 	{ .compatible = "fsl,imx8mq-ocotp", .data = &imx8mq_params },
+	{ .compatible = "fsl,imx8mm-ocotp", .data = &imx8mm_params },
 	{ },
 };
 MODULE_DEVICE_TABLE(of, imx_ocotp_dt_ids);
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
