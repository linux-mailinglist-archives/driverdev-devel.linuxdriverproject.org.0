Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A98D5E600E
	for <lists+driverdev-devel@lfdr.de>; Sun, 27 Oct 2019 01:52:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C015485C28;
	Sat, 26 Oct 2019 23:52:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2fcv3n7DQYaP; Sat, 26 Oct 2019 23:52:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0679A85B68;
	Sat, 26 Oct 2019 23:52:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6E4D51BF2A9
 for <devel@linuxdriverproject.org>; Sat, 26 Oct 2019 23:52:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6B0E586D78
 for <devel@linuxdriverproject.org>; Sat, 26 Oct 2019 23:52:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ADtFTBb-lw5P for <devel@linuxdriverproject.org>;
 Sat, 26 Oct 2019 23:52:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f196.google.com (mail-qt1-f196.google.com
 [209.85.160.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 84B6986CE0
 for <devel@driverdev.osuosl.org>; Sat, 26 Oct 2019 23:52:19 +0000 (UTC)
Received: by mail-qt1-f196.google.com with SMTP id o49so9056774qta.7
 for <devel@driverdev.osuosl.org>; Sat, 26 Oct 2019 16:52:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=7j+uiU//QQeYCq1CG42LPhKjQKtwoWPeb2LyyIljXks=;
 b=IOKlTvveHUbhXtgHNFBXvqdBfrUvS9CmCgMfpoFNJeKu9XaXVGZAijRqLAy5NyrY9d
 vPLv+nYcoTKVN6tYWYClv8SJMPo3QJcugXdmezjslmF5baou9yoE3spxGfKgE7cjDspU
 YOM/3BrePyMTk7PrrBuu7jUrcXMadq4kTMWVx9xGWcgjc10dyB8WgeTwq0Y36QUZuCw1
 3EkyGOoHIHpBIsxc6uXdfTnTjTynVqQne7aZjxYKcI16MV/YwYzNhbrICrc59RVln20G
 H5biSihRpz89ybv+KwFFDjm61yTb/5OwGr7ajPO96NGBPSS8wKIJPpE972FtqV54Igic
 S9vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=7j+uiU//QQeYCq1CG42LPhKjQKtwoWPeb2LyyIljXks=;
 b=RREZqVdn4CvIim8PY7dY822haKaBdAkGZwhg/c9yBI8X6F8kVVbwFP15zRLRHNjqF6
 fc1UFfl40pKn3nWxCHDOYuR32X7/6Y/DNm2dQGDFhgWAFqGqZPFIxGMbRqQ9UDnMHoPO
 hdh4Wu7JPbziUgG7MylZ7ECAYy3wr6a16RvTvMRNiuqqW8T2uI1PmWxB+GhIu/NUpCUI
 mW7N4CbWbvzttgd03GjmeasbbLR5ja6aAghQY7re/TLnVvIV3dgBzf/W3SLJNcUINeBR
 usRWtEM+MCfmtnwJz9z23P/231aktqvUZ3uMOOu/0n5YrkPzcDKOVQ+dy6/u6fID5sQH
 ++xA==
X-Gm-Message-State: APjAAAVcBwDMiOGvbFgqeMDdHJIofGEcCkLuFEbEfjH9K7730dliXokA
 bngoLB5b1hauNlPgj7dWbdM=
X-Google-Smtp-Source: APXvYqx9fS+RbEgRlNhkUNkao5B6fT+Y4Wq4G+HBziDFwkvZKzRz3KaKA0qOwathSf5RxlwgiMc7RQ==
X-Received: by 2002:ac8:34f3:: with SMTP id x48mr10944037qtb.223.1572133938564; 
 Sat, 26 Oct 2019 16:52:18 -0700 (PDT)
Received: from cristiane-Inspiron-5420 ([131.100.148.220])
 by smtp.gmail.com with ESMTPSA id u43sm4080154qte.19.2019.10.26.16.52.16
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 26 Oct 2019 16:52:18 -0700 (PDT)
Date: Sat, 26 Oct 2019 20:52:14 -0300
From: Cristiane Naves <cristianenavescardoso09@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: fieldbus: anybuss: use
 devm_platform_ioremap_resource helper
Message-ID: <20191026235214.GA11702@cristiane-Inspiron-5420>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
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
 linux-kernel@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Use devm_platform_ioremap_resource helper which wraps
platform_get_resource() and devm_ioremap_resource() together. Issue
found by coccicheck.

Signed-off-by: Cristiane Naves <cristianenavescardoso09@gmail.com>
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
