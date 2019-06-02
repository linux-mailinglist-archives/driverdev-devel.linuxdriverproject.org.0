Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C28F323C1
	for <lists+driverdev-devel@lfdr.de>; Sun,  2 Jun 2019 17:59:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 764C986D51;
	Sun,  2 Jun 2019 15:59:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SWd8uaoYGfYs; Sun,  2 Jun 2019 15:59:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id E1D6286762;
	Sun,  2 Jun 2019 15:59:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 985221BF282
 for <devel@linuxdriverproject.org>; Sun,  2 Jun 2019 15:59:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 95AFF849E2
 for <devel@linuxdriverproject.org>; Sun,  2 Jun 2019 15:59:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XQrqtb6qs5h7 for <devel@linuxdriverproject.org>;
 Sun,  2 Jun 2019 15:59:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f194.google.com (mail-qt1-f194.google.com
 [209.85.160.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 2BEAE84854
 for <devel@driverdev.osuosl.org>; Sun,  2 Jun 2019 15:59:19 +0000 (UTC)
Received: by mail-qt1-f194.google.com with SMTP id s15so6802932qtk.9
 for <devel@driverdev.osuosl.org>; Sun, 02 Jun 2019 08:59:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ylmiKH8/t1QghMcsBHCFEUjqXi7qsuao5u1jutlgYvY=;
 b=CEEvyuhq3QxJncBBiG168BeDtfnt9b8sr8VpRBmklgTHOP7er5tdxuS1k+n4NTGIq/
 MFnkbvZArWhwVPGlHq7EGE9bp/PhFXpGiujmaDCIjofCSdyewB/JGBHdWvIN0h/ohVr5
 oLBaV/TNuqebxdN/Ek9LAC4VyXPcmePYYV885eAoIojRtRVYXcZM7kxxyIB3Z1x2M4gu
 +FB0LdPwKjFqNJqqczUW4A10E5Kk5v0YMfKx4kmRRFthbAkt4cMu6a+lhlMV9v7sWbEu
 WEOEBIbOHmgD9pqiv2o04C44bYiFT31isDAFtFSnSVXGNG/3immxJ0Sui/k0rL9YpcP1
 pEmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ylmiKH8/t1QghMcsBHCFEUjqXi7qsuao5u1jutlgYvY=;
 b=nenxlxRxvp29437x5ECkJbpc+tBjglWCa2gQkimRAadntP4NFXeSC8WPmICsIA/f1h
 wrz5/8o49iJB7M35UAXYdHk6WEhywkn9Y5NCK6ykp/fslglc5CgB9EM+Ql2p9GD9CGS9
 kPqbyPMzm6B3J/nZtoPBdHcmsLr3sUPla6iSjfpZcyY8JLXwBtgD7ogwofqvXIH6ep5t
 bzOYUPrWTjPkxu2Bihkd3yjYup6LlI5fVxnJO2Jf5jYnSCwvvhRVUngUzFP7YwbvR3oT
 mvE94qvamjRkJiScSAQmcASPndgsjjagvBCLUG+A6C4UwPC8LPdyplWRX6ns0PcJwH1G
 0k4w==
X-Gm-Message-State: APjAAAUZ/mmA2vQrSYlj7sx8myyn4UJ+klKwcusZDtB3h03zKdlBtQzk
 meIDjj/noBhLT67fchVfFEc=
X-Google-Smtp-Source: APXvYqzOjdziuSeICOHI84eSIAmK1EJHxXQe3DVmyCk4u+62EoUPmXZwUfLthTLrwQYnJ5po5/UVfQ==
X-Received: by 2002:a0c:b285:: with SMTP id r5mr18360133qve.206.1559491158432; 
 Sun, 02 Jun 2019 08:59:18 -0700 (PDT)
Received: from arch-01.home (c-73-132-202-198.hsd1.md.comcast.net.
 [73.132.202.198])
 by smtp.gmail.com with ESMTPSA id n7sm7378589qkd.53.2019.06.02.08.59.17
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 02 Jun 2019 08:59:17 -0700 (PDT)
From: Geordan Neukum <gneukum1@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 3/5] staging: kpc2000: kpc_spi: remove fifo_depth from kp_spi
 struct
Date: Sun,  2 Jun 2019 15:58:35 +0000
Message-Id: <1b43a7f1fbfe03536f9c985b9c4135cd549c53a4.1559488571.git.gneukum1@gmail.com>
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

The kp_spi structure contains a member 'fifo_depth'. This member is
never used. Therefore, it should be removed.

Signed-off-by: Geordan Neukum <gneukum1@gmail.com>
---
 drivers/staging/kpc2000/kpc2000_spi.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/kpc2000/kpc2000_spi.c b/drivers/staging/kpc2000/kpc2000_spi.c
index 13c4651e1fac..049b1e324031 100644
--- a/drivers/staging/kpc2000/kpc2000_spi.c
+++ b/drivers/staging/kpc2000/kpc2000_spi.c
@@ -105,7 +105,6 @@ struct kp_spi {
 	u64 __iomem        *base;
 	unsigned long       phys;
 	struct device      *dev;
-	int                 fifo_depth;
 	unsigned int        pin_dir:1;
 };
 
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
