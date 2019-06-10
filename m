Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C6F403AEAF
	for <lists+driverdev-devel@lfdr.de>; Mon, 10 Jun 2019 07:43:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id B1C61203D6;
	Mon, 10 Jun 2019 05:43:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mVbhPFZNBS8u; Mon, 10 Jun 2019 05:43:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 85066203C5;
	Mon, 10 Jun 2019 05:43:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EDC571BF83B
 for <devel@linuxdriverproject.org>; Mon, 10 Jun 2019 05:43:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E7E64870A9
 for <devel@linuxdriverproject.org>; Mon, 10 Jun 2019 05:43:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hMl+RHL+m48N for <devel@linuxdriverproject.org>;
 Mon, 10 Jun 2019 05:43:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id CBABF86FBB
 for <devel@driverdev.osuosl.org>; Mon, 10 Jun 2019 05:43:31 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id v11so4405776pgl.5
 for <devel@driverdev.osuosl.org>; Sun, 09 Jun 2019 22:43:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=tdl49RyRAuUkhNq/FTEulZjMEnaegQupXQMt+JK5L30=;
 b=VeMFxewIUJvxxRvC5lF6kidVI5+hVSdtFihhzgGSCRPn8g5TfhmedwJd3022CF6Qah
 gZtiUQMWI64nxXBjMUcEkrQkFQWeocMRqnkp3yg4jkdNFiSUebJ/Uh7MQqfn2O/eDIF+
 FpgqWvEeWUOr4jP/t+07pdsP/itDTR9RIFwNawnivPgExCWE5JT2H5XnAlDJsYHlGjEh
 +IVKR5iNOpbjFc7F07tuSUEiLIAo+s/SQnST39LE7fSX6Se3M7X+zb/KcDrYErbO+NNH
 Xv1buvNzy17L+/stjQzpWfZ3udreJMleCrmBZOmXBNHK6T/58w2xVplAi67UUMp2aoNo
 7RgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=tdl49RyRAuUkhNq/FTEulZjMEnaegQupXQMt+JK5L30=;
 b=ryz3FAY/ee1xyDgLTwwqba1OJy66yYes6a+iIMjL+fA0rSKrYBdfEkRkjjVe/YR0S/
 GfDOp/nOO4YuYYAt/FqfmYp+Mt6Emm91ah/3wEwBDR2vQvLcKDCJa9VeHtOtIGt7smqH
 kG2AKRE3uihh5cYaMCrD9S69aYHMBNTHZRcy67uAqpZ1M5GCNPoE4b6lpi2BeOyHQshl
 IZ9m9XoEC7F4xcSgcOY1mgGWOPrOD6OeOepM6L+01L4NtuJiw6W4tsqB19caC5plKNFG
 yYrsx6IHwDb6A3dYttuNGfn94pNIXcMbquvmppBdxWa1bYtdtQUmYkCvWCOP3BSY4x3s
 gEnw==
X-Gm-Message-State: APjAAAXiqB1iIstQHYrsAdwjkbZNXpQHh/o6CPqon9942Ea1EhQgD7c3
 9wYV8O6tKX829c9xdUPMPdT3cBe8
X-Google-Smtp-Source: APXvYqzMyhyfNohO8DPs/Or4CdV+gQAawW1oBt7DF0bsnylcSwQv/l4KIMqMSTPfYd0q+lwpytrS7A==
X-Received: by 2002:a62:8643:: with SMTP id x64mr37320503pfd.7.1560145411460; 
 Sun, 09 Jun 2019 22:43:31 -0700 (PDT)
Received: from hpz4g4.kern.oss.ntt.co.jp ([222.151.198.97])
 by smtp.gmail.com with ESMTPSA id c124sm10526760pfa.115.2019.06.09.22.43.29
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 09 Jun 2019 22:43:31 -0700 (PDT)
From: Naoto Kobayashi <naoto.kobayashi4c@gmail.com>
To: gregkh@linuxfoundation.org, gneukum1@gmail.com, jeremy@azazel.net,
 maowenan@huawei.com
Subject: [PATCH] staging: kpc2000: remove extra white space in kpc2000_spi.c
Date: Mon, 10 Jun 2019 14:43:14 +0900
Message-Id: <20190610054314.102880-1-naoto.kobayashi4c@gmail.com>
X-Mailer: git-send-email 2.16.5
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
Cc: devel@driverdev.osuosl.org, Naoto Kobayashi <naoto.kobayashi4c@gmail.com>,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Since whitespace should not appear between asterisk and
variable name in a declaration statement, remove it and
fix checkpatch.pl error "foo * bar" should be "foo *bar".

Signed-off-by: Naoto Kobayashi <naoto.kobayashi4c@gmail.com>
---
 drivers/staging/kpc2000/kpc2000_spi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/kpc2000/kpc2000_spi.c b/drivers/staging/kpc2000/kpc2000_spi.c
index 28132e9e260d..c3e5c1848f53 100644
--- a/drivers/staging/kpc2000/kpc2000_spi.c
+++ b/drivers/staging/kpc2000/kpc2000_spi.c
@@ -496,7 +496,7 @@ kp_spi_probe(struct platform_device *pldev)
 	static int
 kp_spi_remove(struct platform_device *pldev)
 {
-	struct spi_master * master = platform_get_drvdata(pldev);
+	struct spi_master *master = platform_get_drvdata(pldev);
 	spi_unregister_master(master);
 	return 0;
 }
--
2.16.5

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
