Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45867252B8
	for <lists+driverdev-devel@lfdr.de>; Tue, 21 May 2019 16:51:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id CE24E87B5B;
	Tue, 21 May 2019 14:51:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ePdu1PJiSyqA; Tue, 21 May 2019 14:51:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6299287B4A;
	Tue, 21 May 2019 14:51:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A903E1BF4E2
 for <devel@linuxdriverproject.org>; Tue, 21 May 2019 14:51:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A575226291
 for <devel@linuxdriverproject.org>; Tue, 21 May 2019 14:51:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jAKyEImnRPhh for <devel@linuxdriverproject.org>;
 Tue, 21 May 2019 14:51:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-it1-f194.google.com (mail-it1-f194.google.com
 [209.85.166.194])
 by silver.osuosl.org (Postfix) with ESMTPS id 0D7CE23B88
 for <devel@driverdev.osuosl.org>; Tue, 21 May 2019 14:51:22 +0000 (UTC)
Received: by mail-it1-f194.google.com with SMTP id e184so5135866ite.1
 for <devel@driverdev.osuosl.org>; Tue, 21 May 2019 07:51:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=jgJdmE1Zbg3qhV5EulwxdNH0JzQK7bdAiz1rSW14UKM=;
 b=WLJvXkfSurKA/hBm3R5otskQBCeCLH/GjbB6e/+cMCGYo/+WSP8B3eESzP/FhbL6/X
 Tg30c0WtnWkYjdW0ZuYhirOU66gcStN0rqX9J5j49YQ3DgCqKyXGVgsuJP4pN4kG/uJy
 1Rqqp0whbHK7nb5tmW5Bp9KL+ZqcjZ1dvlv3ySoBNz1GJimIqb7/ACcGi+bat+x+OmNn
 FoWuJTCo0qPiRk3yq2CAGyyA+N232lW3CgpAOfiPX2Iej37gH0LGYMx5bBREdaZcvEzV
 RZjqBRDqMaqSLiplo4t6EfPQm+gAnNZyelO00Ep+eKb2YT/NzGzyCEORB0VpkGrMpwVY
 Woyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=jgJdmE1Zbg3qhV5EulwxdNH0JzQK7bdAiz1rSW14UKM=;
 b=ZAlUT0tP9nNruSgY7wDs6dxXfdsIEPrO+ehVqYiiwwwmDs1rRIzi1xtWrfNPyPSHI8
 Xo6Ue89vnlFruoRu3yY8fYGn958KJ2J0bUueiTV5DyX5BlxgBJtz2y8YLxLQ1sdf4lCX
 mWigWorWiBVCLXPbwsj90vOYG2g+4LDkYPGf/k6ISwfGLzFraG2KrPcSx3aizk7LsRFu
 LiVE8+oewC5hDi0zwf0oseU1xd+Mc73VXJqOWMZi6KMhM8iEUVhVrlnit6vciE0thFVA
 agaMnNQ/lAHZhHNXhNa9tWORdxSUlLf9WyA+So0flCfixGTXQb6FxpYAxBuXK5jllyv+
 dc3g==
X-Gm-Message-State: APjAAAWZWtGLQtw01i4fnAYAKOof0Kg07ou3dBdSZfjGmRSUgyQaE/JY
 xpJ2xf4mBCHqOCjBro+FLNc=
X-Google-Smtp-Source: APXvYqy+tWqthA1EUdSvG0qJ/9jqC5fB3CtGEZkCu/3tOdCJ4/YM6d1DWzdmTLf2kCnR5aizdavl4A==
X-Received: by 2002:a24:7610:: with SMTP id z16mr4114515itb.3.1558450281188;
 Tue, 21 May 2019 07:51:21 -0700 (PDT)
Received: from svens-asus.arcx.com ([184.94.50.30])
 by smtp.gmail.com with ESMTPSA id m67sm1666083itc.22.2019.05.21.07.51.20
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 21 May 2019 07:51:20 -0700 (PDT)
From: Sven Van Asbroeck <thesven73@gmail.com>
X-Google-Original-From: Sven Van Asbroeck <TheSven73@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: fieldbus: anybuss: force address space conversion
Date: Tue, 21 May 2019 10:51:16 -0400
Message-Id: <20190521145116.24378-1-TheSven73@gmail.com>
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
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The regmap's context (stored as 'void *') consists of a pointer to
__iomem. Mixing __iomem and non-__iomem addresses generates
sparse warnings.

Fix by using __force when converting to/from 'void __iomem *' and
the regmap's context.

Signed-off-by: Sven Van Asbroeck <TheSven73@gmail.com>
---
 drivers/staging/fieldbus/anybuss/arcx-anybus.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/fieldbus/anybuss/arcx-anybus.c b/drivers/staging/fieldbus/anybuss/arcx-anybus.c
index a167fb68e355..8126e5535ada 100644
--- a/drivers/staging/fieldbus/anybuss/arcx-anybus.c
+++ b/drivers/staging/fieldbus/anybuss/arcx-anybus.c
@@ -114,7 +114,7 @@ static void export_reset_1(struct device *dev, bool assert)
 static int read_reg_bus(void *context, unsigned int reg,
 			unsigned int *val)
 {
-	void __iomem *base = context;
+	void __iomem *base = (__force void __iomem *)context;
 
 	*val = readb(base + reg);
 	return 0;
@@ -123,7 +123,7 @@ static int read_reg_bus(void *context, unsigned int reg,
 static int write_reg_bus(void *context, unsigned int reg,
 			 unsigned int val)
 {
-	void __iomem *base = context;
+	void __iomem *base = (__force void __iomem *)context;
 
 	writeb(val, base + reg);
 	return 0;
@@ -153,7 +153,7 @@ static struct regmap *create_parallel_regmap(struct platform_device *pdev,
 	base = devm_ioremap_resource(dev, res);
 	if (IS_ERR(base))
 		return ERR_CAST(base);
-	return devm_regmap_init(dev, NULL, base, &regmap_cfg);
+	return devm_regmap_init(dev, NULL, (__force void *)base, &regmap_cfg);
 }
 
 static struct anybuss_host *
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
