Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B55C5323C4
	for <lists+driverdev-devel@lfdr.de>; Sun,  2 Jun 2019 17:59:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8403F207A1;
	Sun,  2 Jun 2019 15:59:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GgOn5fEN6lJh; Sun,  2 Jun 2019 15:59:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E2C7C20340;
	Sun,  2 Jun 2019 15:59:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 846921BF282
 for <devel@linuxdriverproject.org>; Sun,  2 Jun 2019 15:59:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 8103A86747
 for <devel@linuxdriverproject.org>; Sun,  2 Jun 2019 15:59:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KKsL43Vwv+11 for <devel@linuxdriverproject.org>;
 Sun,  2 Jun 2019 15:59:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f196.google.com (mail-qt1-f196.google.com
 [209.85.160.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1651C86762
 for <devel@driverdev.osuosl.org>; Sun,  2 Jun 2019 15:59:21 +0000 (UTC)
Received: by mail-qt1-f196.google.com with SMTP id a15so6809936qtn.7
 for <devel@driverdev.osuosl.org>; Sun, 02 Jun 2019 08:59:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=KoiwGzojzqWS04G3Vtf6A7KlpS48j88h/ZjvUsdgYpw=;
 b=tR9j48sCzJxSI0PhXjlAQsYW+PvL/Rc1czHdQ6+7kWZVEpCAQfCujqP1Hdi1ibUKK7
 cyj2Hbc5Wia9wlPPdqlFNARCcRuoDM6wF5JoMM8nZjjhS5+0nv1MBUxXqTvibDs5Sg/X
 GxrF/9DLeRU/NJcoT8w/lYv4hnLAWCko9005beumexent1mM/ZjPHWaIonvWfULVVaLw
 gkCZJPk++9V/AFD40d9JNbwLh97gJhKcRIxWQ9XZQXa5qfErF9gawbxCRfNB/S59Q8V/
 xu10VXl30gsuboKcd26fPC5gw1BhhlbBQe+Lr16iAASQRT2OMobjTgiaDby/izR6mThC
 iKog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=KoiwGzojzqWS04G3Vtf6A7KlpS48j88h/ZjvUsdgYpw=;
 b=BTgoow0EFFFbmhq8VTvqmLlGSEbC8xN7x5YKD8UggO7M2j1i0lCYIkYp/aFzAmgHZa
 1YEMvy6Ah8Hzjk2IlRsWIOEb9WgdW+E3eNleRI8r+vdxIngMTqR2IA4Q0RpIgQwt1wVi
 07I/86ifLK2Q6JgzPB8hj9zdCfOHTonrmIsyIH3XxAzD+eyETQg2vDnQthL1a8EG2I1f
 IN8zEqZ+9sGmezdHXJtPvXyrptfJZFNX8p+BRkS9AoT7Pr+2uXi/SxLkc++5zPlVNm80
 95l66cWaVbmGpR0ap0Dl2gf1KcODIMwZELqpfq7VyCj0Q69usU0xECirR+nWAnEazRlY
 A+9A==
X-Gm-Message-State: APjAAAXkfQYfy/lqhul6ZYuv1VESZPp/wYR0QEkWTtA+crqr9Hjk5fZ0
 8zm7tHjY0mA9Z4YcDJ48Jss=
X-Google-Smtp-Source: APXvYqw9J/rFcfXbdhQskuwc1AHuGE0/QpenBHvEu+OMCKRnkBFxVYSaQWtYShts/aHwF0F3L9um6A==
X-Received: by 2002:aed:38a1:: with SMTP id k30mr19835361qte.159.1559491160182; 
 Sun, 02 Jun 2019 08:59:20 -0700 (PDT)
Received: from arch-01.home (c-73-132-202-198.hsd1.md.comcast.net.
 [73.132.202.198])
 by smtp.gmail.com with ESMTPSA id n7sm7378589qkd.53.2019.06.02.08.59.19
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 02 Jun 2019 08:59:19 -0700 (PDT)
From: Geordan Neukum <gneukum1@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 5/5] staging: kpc2000: kpc_spi: use devm_* API to manage
 mapped I/O space
Date: Sun,  2 Jun 2019 15:58:37 +0000
Message-Id: <ea222a6da192a4eb0ba9c8c840843f240f414092.1559488571.git.gneukum1@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <cover.1559488571.git.gneukum1@gmail.com>
References: <cover.1559488571.git.gneukum1@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Geordan Neukum <gneukum1@gmail.com>,
 YueHaibing <yuehaibing@huawei.com>, Mao Wenan <maowenan@huawei.com>,
 linux-kernel@vger.kernel.org, Nathan Chancellor <natechancellor@gmail.com>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The kpc_spi driver does not unmap its I/O space upon error cases in the
probe() function or upon remove(). Make the driver clean up after itself
more maintainably by migrating to using the managed resource API.

Signed-off-by: Geordan Neukum <gneukum1@gmail.com>
---
 drivers/staging/kpc2000/kpc2000_spi.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/kpc2000/kpc2000_spi.c b/drivers/staging/kpc2000/kpc2000_spi.c
index b513432a26ed..32d3ec532e26 100644
--- a/drivers/staging/kpc2000/kpc2000_spi.c
+++ b/drivers/staging/kpc2000/kpc2000_spi.c
@@ -471,7 +471,8 @@ kp_spi_probe(struct platform_device *pldev)
 		goto free_master;
 	}
 
-	kpspi->phys = (unsigned long)ioremap_nocache(r->start, resource_size(r));
+	kpspi->phys = (unsigned long)devm_ioremap_nocache(&pldev->dev, r->start,
+							  resource_size(r));
 	kpspi->base = (u64 __iomem *)kpspi->phys;
 
 	status = spi_register_master(master);
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
