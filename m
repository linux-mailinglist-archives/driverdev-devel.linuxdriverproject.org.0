Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 98D6525790
	for <lists+driverdev-devel@lfdr.de>; Tue, 21 May 2019 20:29:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CA89E8614A;
	Tue, 21 May 2019 18:29:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LCEA_npqS2QF; Tue, 21 May 2019 18:29:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9CC6F86132;
	Tue, 21 May 2019 18:29:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 50D451BF3C1
 for <devel@linuxdriverproject.org>; Tue, 21 May 2019 18:29:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4DCAD87BF5
 for <devel@linuxdriverproject.org>; Tue, 21 May 2019 18:29:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id L0uN+uLF2Xkb for <devel@linuxdriverproject.org>;
 Tue, 21 May 2019 18:29:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-it1-f194.google.com (mail-it1-f194.google.com
 [209.85.166.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C44B387BC2
 for <devel@driverdev.osuosl.org>; Tue, 21 May 2019 18:29:38 +0000 (UTC)
Received: by mail-it1-f194.google.com with SMTP id j17so3423913itk.0
 for <devel@driverdev.osuosl.org>; Tue, 21 May 2019 11:29:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=5lq45XSqNE2uFvBFuFvCqHdT2kO9oK+DRuyIon8Em/o=;
 b=qHKNNvOIgeJJ6MWa9m9U9cs1EZ36EM2S8XRIDU7PCmVfkhWLYb2Gy2ndNaFR6BpCjl
 HdJIohQoJYeMcYgR+uBaydZTu/9uhgqbkoOWBXNl2hPdXdzz4tEj/TYaycwjnZWslF3v
 vjIs+OioZN1Nq39eE1zi5NgCJWlQO3M8GGW/Q0EOACe1UFrNXJPumEDaNoh8D8OoHFiN
 izpXChELzvDAmQBpFtcCkdq4/32a9WUJADUy6pMEQgojKioUatKtVvxAO7YN1BQLjNGR
 5+kqwdFWtMgY8cmc4FX2aowuPehkFZL3JDhc/z3TQ5rdE4PK9U31w8dntjd1+oPIeojA
 YlLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=5lq45XSqNE2uFvBFuFvCqHdT2kO9oK+DRuyIon8Em/o=;
 b=slc/DO+58yUVyyGFUbkDUI7PcdkC9gt8Jf5ZC0FoRATEBzuO1uH+bjCQ2NDOJBCd4u
 Cdrxcg6F5t88NAHRmcTDI1ktWysL9btKL9rft0NUL9ENDr85L+9Sg8dQHj8H0/EyHVIc
 WHumtwck9Qu7Hluy9DD/n1ZZr+jCyYvSpjur3c8zCk2wrITMntQJDQnZ+IM7+nbcoOh+
 pXNRZcXGvLM5AJ/zZpSjiZEZMfVd/ESv3uUXZUkbKjm95uM/z9QAMBU4LfSzLFanUQOf
 t4Q7rS2WjggnkJIYvExVIxUlMI48vA4AhqjKYhligtMbC3dtslVtL0ssJ8goKSS5/J5r
 OK+Q==
X-Gm-Message-State: APjAAAUIe07afnSXn97chp2ZYRr35l64W2Y7IT7hOF5izAQM+lGfGaj4
 0jsDEhJMh5R49W7g4QjmAXM=
X-Google-Smtp-Source: APXvYqwp5ZsSzocAb69f4Wj1mmfZ5BRXGnHm2J4cclyR6Jp2LRUTYyQos7tDQCUPyHQNoHChRXI1DQ==
X-Received: by 2002:a24:af1a:: with SMTP id t26mr5523437ite.55.1558463377841; 
 Tue, 21 May 2019 11:29:37 -0700 (PDT)
Received: from svens-asus.arcx.com ([184.94.50.30])
 by smtp.gmail.com with ESMTPSA id v134sm1598920ita.16.2019.05.21.11.29.37
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 21 May 2019 11:29:37 -0700 (PDT)
From: Sven Van Asbroeck <thesven73@gmail.com>
X-Google-Original-From: Sven Van Asbroeck <TheSven73@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: fieldbus: arcx-anybus: change custom -> mmio regmap
Date: Tue, 21 May 2019 14:29:32 -0400
Message-Id: <20190521182932.13502-1-TheSven73@gmail.com>
X-Mailer: git-send-email 2.17.1
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
Cc: devel@driverdev.osuosl.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Dan Carpenter <dan.carpenter@oracle.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The arcx-anybus's registers are accessed via a memory-mapped
IO region. A regmap associated with this region is created
using custom reg_read() / reg_write() callbacks.

However, an abstraction which creates a memory-mapped IO
region backed regmap already exists: devm_regmap_init_mmio().

Replace the custom regmap with the existing kernel abstraction.
As a pleasant side-effect, sparse warnings now disappear.

Signed-off-by: Sven Van Asbroeck <TheSven73@gmail.com>
---
 .../staging/fieldbus/anybuss/arcx-anybus.c    | 44 ++++++-------------
 1 file changed, 13 insertions(+), 31 deletions(-)

diff --git a/drivers/staging/fieldbus/anybuss/arcx-anybus.c b/drivers/staging/fieldbus/anybuss/arcx-anybus.c
index a167fb68e355..2ecffa42e561 100644
--- a/drivers/staging/fieldbus/anybuss/arcx-anybus.c
+++ b/drivers/staging/fieldbus/anybuss/arcx-anybus.c
@@ -111,49 +111,31 @@ static void export_reset_1(struct device *dev, bool assert)
  * at a time for now.
  */
 
-static int read_reg_bus(void *context, unsigned int reg,
-			unsigned int *val)
-{
-	void __iomem *base = context;
-
-	*val = readb(base + reg);
-	return 0;
-}
-
-static int write_reg_bus(void *context, unsigned int reg,
-			 unsigned int val)
-{
-	void __iomem *base = context;
-
-	writeb(val, base + reg);
-	return 0;
-}
+static const struct regmap_config arcx_regmap_cfg = {
+	.reg_bits = 16,
+	.val_bits = 8,
+	.max_register = 0x7ff,
+	.use_single_read = true,
+	.use_single_write = true,
+	/*
+	 * single-byte parallel bus accesses are atomic, so don't
+	 * require any synchronization.
+	 */
+	.disable_locking = true,
+};
 
 static struct regmap *create_parallel_regmap(struct platform_device *pdev,
 					     int idx)
 {
-	struct regmap_config regmap_cfg = {
-		.reg_bits = 11,
-		.val_bits = 8,
-		/*
-		 * single-byte parallel bus accesses are atomic, so don't
-		 * require any synchronization.
-		 */
-		.disable_locking = true,
-		.reg_read = read_reg_bus,
-		.reg_write = write_reg_bus,
-	};
 	struct resource *res;
 	void __iomem *base;
 	struct device *dev = &pdev->dev;
 
 	res = platform_get_resource(pdev, IORESOURCE_MEM, idx + 1);
-	if (resource_size(res) < (1 << regmap_cfg.reg_bits))
-		return ERR_PTR(-EINVAL);
 	base = devm_ioremap_resource(dev, res);
 	if (IS_ERR(base))
 		return ERR_CAST(base);
-	return devm_regmap_init(dev, NULL, base, &regmap_cfg);
+	return devm_regmap_init_mmio(dev, base, &arcx_regmap_cfg);
 }
 
 static struct anybuss_host *
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
