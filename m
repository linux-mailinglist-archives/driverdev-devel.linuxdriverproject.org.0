Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B708CF275
	for <lists+driverdev-devel@lfdr.de>; Tue,  8 Oct 2019 08:11:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 13BAF8731C;
	Tue,  8 Oct 2019 06:11:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id P-TVaGqEEdMq; Tue,  8 Oct 2019 06:11:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6D6F68757D;
	Tue,  8 Oct 2019 06:11:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 511D61BF289
 for <devel@linuxdriverproject.org>; Tue,  8 Oct 2019 06:11:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 4D3D7221CC
 for <devel@linuxdriverproject.org>; Tue,  8 Oct 2019 06:11:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tvuXDtoW-K9v for <devel@linuxdriverproject.org>;
 Tue,  8 Oct 2019 06:11:44 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by silver.osuosl.org (Postfix) with ESMTPS id A679022091
 for <devel@driverdev.osuosl.org>; Tue,  8 Oct 2019 06:11:44 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id t3so3845560pga.8
 for <devel@driverdev.osuosl.org>; Mon, 07 Oct 2019 23:11:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=tt6fX4ZbTYJ2jV1VGfYVgC8sSI3b0LxMvDVETzkC3TM=;
 b=a9yvqb2xceXqNgp0rl/WhIxXmtPeCfyIh39xPV4krE75I2WFUeJh9ALucp5DaNi9fx
 H/eXTEExmhbwYM5AgUITHc/09bLwrYJSNK14pfF+wp3md4rZyX00khVqC52fCS1TGgwA
 QH1kjNYPKe5nuhdgYJKfDKhNo6FrxglBdLARqwOjjyMFxHO/H5vsg7E3jnmk2vukYj5o
 J35JfLl60zvMlkmpjVO99XXS8wVmlfC/14OT3MfRO56BoTuLnqgiosLXLJCDb3lz6cXS
 xh6WHDCXoFG7u3rEtLVfLkcKDp6iUjj/GJR18GtCFCFiv27MTIFSQy7/7knUSrDyWFio
 spyw==
X-Gm-Message-State: APjAAAVkbb1SgYn+CDVYeroLhYSOG4SW2rIXRi2k3lskwnVHjlKn2jGO
 fhVtW6exc+y18S3R35FYvqg=
X-Google-Smtp-Source: APXvYqwCofqHMB9pX6UaUuliDsNjGf5pEeD0vAlenC8QXHUweaH0WJlOkWdBWZhZ9Yoep+pSCeSRUQ==
X-Received: by 2002:a17:90a:380a:: with SMTP id
 w10mr3831900pjb.104.1570515104139; 
 Mon, 07 Oct 2019 23:11:44 -0700 (PDT)
Received: from localhost.localdomain ([183.83.78.173])
 by smtp.gmail.com with ESMTPSA id 2sm16483811pfo.91.2019.10.07.23.11.41
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 07 Oct 2019 23:11:43 -0700 (PDT)
From: hariprasad@osuosl.org, Kelam@osuosl.org,
	hariprasad.kelam@gmail.com
To: 
Subject: [PATCH] staging: fieldbus: make use of devm_platform_ioremap_resource
Date: Tue,  8 Oct 2019 11:40:56 +0530
Message-Id: <1570515056-23589-1-git-send-email-hariprasad.kelam@gmail.com>
X-Mailer: git-send-email 2.7.4
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
Cc: devel@driverdev.osuosl.org, Sven Van Asbroeck <TheSven73@gmail.com>,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>, linux-kernel@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Hariprasad Kelam <hariprasad.kelam@gmail.com>

fix below issues reported by coccicheck
drivers/staging//fieldbus/anybuss/arcx-anybus.c:135:1-5: WARNING: Use
devm_platform_ioremap_resource for base
drivers/staging//fieldbus/anybuss/arcx-anybus.c:248:1-14: WARNING: Use
devm_platform_ioremap_resource for cd -> cpld_base

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
---
 drivers/staging/fieldbus/anybuss/arcx-anybus.c | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/fieldbus/anybuss/arcx-anybus.c b/drivers/staging/fieldbus/anybuss/arcx-anybus.c
index 2ecffa4..5b8d0ba 100644
--- a/drivers/staging/fieldbus/anybuss/arcx-anybus.c
+++ b/drivers/staging/fieldbus/anybuss/arcx-anybus.c
@@ -127,12 +127,10 @@ static const struct regmap_config arcx_regmap_cfg = {
 static struct regmap *create_parallel_regmap(struct platform_device *pdev,
 					     int idx)
 {
-	struct resource *res;
 	void __iomem *base;
 	struct device *dev = &pdev->dev;
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, idx + 1);
-	base = devm_ioremap_resource(dev, res);
+	base = devm_platform_ioremap_resource(pdev, idx + 1);
 	if (IS_ERR(base))
 		return ERR_CAST(base);
 	return devm_regmap_init_mmio(dev, base, &arcx_regmap_cfg);
@@ -230,7 +228,6 @@ static int controller_probe(struct platform_device *pdev)
 	struct regulator_config config = { };
 	struct regulator_dev *regulator;
 	int err, id;
-	struct resource *res;
 	struct anybuss_host *host;
 	u8 status1, cap;
 
@@ -244,8 +241,7 @@ static int controller_probe(struct platform_device *pdev)
 		return PTR_ERR(cd->reset_gpiod);
 
 	/* CPLD control memory, sits at index 0 */
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	cd->cpld_base = devm_ioremap_resource(dev, res);
+	cd->cpld_base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(cd->cpld_base)) {
 		dev_err(dev,
 			"failed to map cpld base address\n");
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
