Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1360C1A4C
	for <lists+driverdev-devel@lfdr.de>; Mon, 30 Sep 2019 05:10:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7E0AF87404;
	Mon, 30 Sep 2019 03:10:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UPRTd5qw2QfZ; Mon, 30 Sep 2019 03:10:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 75E4A87371;
	Mon, 30 Sep 2019 03:10:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6B87C1BF33A
 for <devel@linuxdriverproject.org>; Mon, 30 Sep 2019 03:10:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 677EF85A8B
 for <devel@linuxdriverproject.org>; Mon, 30 Sep 2019 03:10:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4f6S2JryxWKM for <devel@linuxdriverproject.org>;
 Mon, 30 Sep 2019 03:10:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f65.google.com (mail-io1-f65.google.com
 [209.85.166.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1507685802
 for <devel@driverdev.osuosl.org>; Mon, 30 Sep 2019 03:10:00 +0000 (UTC)
Received: by mail-io1-f65.google.com with SMTP id n26so5797181ioj.8
 for <devel@driverdev.osuosl.org>; Sun, 29 Sep 2019 20:10:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=JdWTb1V4IhUUMb47mN6yAdg27zy2bK0W+qF3wp30fYo=;
 b=hetnKUgsD2zSGDpE7xOLnzeBpXHQYJEYYEqnzJSwcvWeNhdWPsdlC6/Pbtswtb+2tg
 ReMBVDCg9wXGCrev7wYoFfActSDTXjhCrs0vGHKXQNlzmnTvodwpgC8GReVyUTL0cUH6
 jPTCtsx6gOP9iFcUzUyy2V77UQAkJPNLpN/9ZFmSxBsi6rCppsNdoC3ciTBBpVHYGV8Z
 Myyx7ePbg+RWklM9om4+N+eOelSbT4G5BFWA9tPOKtxcimECtmLWNhuAU4sZY3PA7GSi
 2E2BiHEuooVd+tzXxgBWNKKeiMaqgI0bZFAkItESu2W1K44vsybFpfUDwksMtW2XWFcq
 p/mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=JdWTb1V4IhUUMb47mN6yAdg27zy2bK0W+qF3wp30fYo=;
 b=VOTgYEJV3x+AzPsOAkWvbI6zUnYgtOjT7vBfiHlQLdrhfvzOWms9sqN4wCGVObuofi
 Pfu9KcjwsAQYK9SPSxfQxWMnWM/xzqf6Se4aqoucxUtMmP6p/aV4jL2qpvrmIXdf2m6g
 WLaJgM8hmYHr7ZbRuXHZYX/BpIYZfABNyjpFWmzHPJDVE/gMMLID9oHd8gO+zmpOyiX4
 xVSKjb4HEmY9hw8mRVmUxHKaDmOJ5Gx6YZumV7K0Ko455jEa0nay+pqowy1f+x6sYSdO
 rRYezmwOZ29DvO9dNmbM4f/G+8QnZBIC0HVXFs4KM5Yap0/rEOxiFUqLLc+wjcS0MrPo
 mLRw==
X-Gm-Message-State: APjAAAVgsY+Pxu1cUir5Gtq+adFIyAOwYudujizNzGmwKghORAl5RwQg
 TJe2SjIBiiet0Ekew89qXJY=
X-Google-Smtp-Source: APXvYqw9S4icJAA3Iim6bEKEOhPYCZHJFDUjRkHAKLayY1qZ/8t7tcsSVHOGYMUZdwQB5yUeCahPEQ==
X-Received: by 2002:a5d:9349:: with SMTP id i9mr3190833ioo.101.1569812999347; 
 Sun, 29 Sep 2019 20:09:59 -0700 (PDT)
Received: from cs-dulles.cs.umn.edu (cs-dulles.cs.umn.edu. [128.101.35.54])
 by smtp.googlemail.com with ESMTPSA id r22sm5444086ilb.85.2019.09.29.20.09.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 29 Sep 2019 20:09:58 -0700 (PDT)
From: Navid Emamdoost <navid.emamdoost@gmail.com>
To: 
Subject: [PATCH] Staging: fbtft: fix memory leak in fbtft_framebuffer_alloc
Date: Sun, 29 Sep 2019 22:09:45 -0500
Message-Id: <20190930030949.28615-1-navid.emamdoost@gmail.com>
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
Cc: =?UTF-8?q?Jan=20Sebastian=20G=C3=B6tte?= <linux@jaseg.net>,
 devel@driverdev.osuosl.org, linux-fbdev@vger.kernel.org,
 Nishad Kamdar <nishadkamdar@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, kjlu@umn.edu,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Daniel Vetter <daniel.vetter@ffwll.ch>, emamd001@umn.edu,
 Bhanusree Pola <bhanusreemahesh@gmail.com>, smccaman@umn.edu,
 Phil Reid <preid@electromag.com.au>, Sam Ravnborg <sam@ravnborg.org>,
 Navid Emamdoost <navid.emamdoost@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

In fbtft_framebuffer_alloc the error handling path should take care of
releasing frame buffer after it is allocated via framebuffer_alloc, too.
Therefore, in two failure cases the goto destination is changed to
address this issue.

Fixes: c296d5f9957c ("staging: fbtft: core support")
Signed-off-by: Navid Emamdoost <navid.emamdoost@gmail.com>
---
 drivers/staging/fbtft/fbtft-core.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/fbtft/fbtft-core.c b/drivers/staging/fbtft/fbtft-core.c
index cf5700a2ea66..a0a67aa517f0 100644
--- a/drivers/staging/fbtft/fbtft-core.c
+++ b/drivers/staging/fbtft/fbtft-core.c
@@ -714,7 +714,7 @@ struct fb_info *fbtft_framebuffer_alloc(struct fbtft_display *display,
 	if (par->gamma.curves && gamma) {
 		if (fbtft_gamma_parse_str(par, par->gamma.curves, gamma,
 					  strlen(gamma)))
-			goto alloc_fail;
+			goto release_framebuf;
 	}
 
 	/* Transmit buffer */
@@ -731,7 +731,7 @@ struct fb_info *fbtft_framebuffer_alloc(struct fbtft_display *display,
 	if (txbuflen > 0) {
 		txbuf = devm_kzalloc(par->info->device, txbuflen, GFP_KERNEL);
 		if (!txbuf)
-			goto alloc_fail;
+			goto release_framebuf;
 		par->txbuf.buf = txbuf;
 		par->txbuf.len = txbuflen;
 	}
@@ -753,6 +753,9 @@ struct fb_info *fbtft_framebuffer_alloc(struct fbtft_display *display,
 
 	return info;
 
+release_framebuf:
+	framebuffer_release(info);
+
 alloc_fail:
 	vfree(vmem);
 
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
