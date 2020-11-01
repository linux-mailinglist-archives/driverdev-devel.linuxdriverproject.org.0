Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B21DA2A1B8B
	for <lists+driverdev-devel@lfdr.de>; Sun,  1 Nov 2020 01:45:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id DCD8E87092;
	Sun,  1 Nov 2020 00:45:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lsp8YgzzZqZ1; Sun,  1 Nov 2020 00:45:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6857087052;
	Sun,  1 Nov 2020 00:45:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 174081BF25B
 for <devel@linuxdriverproject.org>; Sun,  1 Nov 2020 00:45:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 13B9087686
 for <devel@linuxdriverproject.org>; Sun,  1 Nov 2020 00:45:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GBIb2p6LCvdD for <devel@linuxdriverproject.org>;
 Sun,  1 Nov 2020 00:45:16 +0000 (UTC)
X-Greylist: delayed 00:18:47 by SQLgrey-1.7.6
Received: from mail-lf1-f68.google.com (mail-lf1-f68.google.com
 [209.85.167.68])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0190A87685
 for <devel@driverdev.osuosl.org>; Sun,  1 Nov 2020 00:45:15 +0000 (UTC)
Received: by mail-lf1-f68.google.com with SMTP id h6so12731341lfj.3
 for <devel@driverdev.osuosl.org>; Sat, 31 Oct 2020 17:45:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=somia-fi.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Gb/J6pBTC+U79s+Too2NVqGf5ftZkxTHSHF78mWqzDw=;
 b=TfVWvTb/uUJdxfYW5VobHdQCqYzSpD0QO5ICYOXPUCi2HuCQQfDPZCbq3lh28+m51J
 fd9Mn1hrHDigXVGxmvtZpPLYqn/bzyH0/wdgFErf/uioNrgL3SDAjVZzEZ54MPN3RKL1
 JXgi91z/mXWVCmqEbhjThxZ9Mba19sXp5F7kY2Wx1j7CFNFX+KA+6tpBvrMazHhilixP
 uuY3BZoRQhNijCHeHBb3eL/gwmgS8bI8l0cp1Zv1s2xXVfF/ZTV6o6twxI37ImVnmHpj
 d5MHfBobFZP5dIVgCLkyYwHcXqo/I6aNgH4uATWkqKBZjJhQBwHKzhLMRIvZJa347N58
 Icow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Gb/J6pBTC+U79s+Too2NVqGf5ftZkxTHSHF78mWqzDw=;
 b=k7LhZov+Z5m644QxKpqlOKW9OyewRZk9MLFXSInyJzmXojpnWrgCNCq7KG+J69bieg
 cJGpOXLYgS5raMKGOB8FYkYOWJCE1qYO3G5VgryrjDVNzerBALNXpg2uzN8ouY+MZeqb
 LEdBn/fPZTgKfxbZ+ZVX6Cv2zOEK4EsKuoRglPzt4gp/85Q1Q8LIwru3BXqLI7ETfK05
 jnu4z0fE/83waP9q++UonCNkmtslQ9Ny2Ex+qC65j6ZNDoPWEZIjx8NOZ4cWVq9IJ/yB
 7lUV8g6MW9ayhEOHU/movFi1iMeRYQXoA98W7bLPaS3VyWBuYy2eGvVMpiPUKw1pBzS4
 J5CQ==
X-Gm-Message-State: AOAM5316gOSIBVibMA/hOtW65RGUtOfiYJcK5p8c/xnzV/YHJIIaUHF2
 9Nl337DGMf2UUIdGoym4eL7p8d07Z7ElSPje3M1/MA==
X-Google-Smtp-Source: ABdhPJwBwAVgFbijYR3dZ2iWYVxrgF40gZwx2I+/lofd5+mwhGbetATjbiVxg/P0XNgHr+ckI0Tgrw==
X-Received: by 2002:a05:651c:510:: with SMTP id
 o16mr3766337ljp.409.1604190040276; 
 Sat, 31 Oct 2020 17:20:40 -0700 (PDT)
Received: from localhost.localdomain (cable-hki-50dc37-152.dhcp.inet.fi.
 [80.220.55.152])
 by smtp.gmail.com with ESMTPSA id s18sm1165065lfc.284.2020.10.31.17.20.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 31 Oct 2020 17:20:39 -0700 (PDT)
From: Hassan Shahbazi <hassan.shahbazi@somia.fi>
X-Google-Original-From: Hassan Shahbazi <hassan@ninchat.com>
To: linus.walleij@linaro.org
Subject: [PATCH] staging: fbtft: fb_watterott: fix usleep_range is preferred
 over udelay
Date: Sun,  1 Nov 2020 02:20:10 +0200
Message-Id: <20201101002010.278537-1-hassan@ninchat.com>
X-Mailer: git-send-email 2.25.1
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
Cc: devel@driverdev.osuosl.org, Hassan Shahbazi <hassan@ninchat.com>,
 linux-fbdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix the checkpath.pl issue on fb_watterott.c. write_vmem and
write_vmem_8bit functions are within non-atomic context and can
safely use usleep_range.
see Documentation/timers/timers-howto.txt

Signed-off-by: Hassan Shahbazi <hassan@ninchat.com>
---
 drivers/staging/fbtft/fb_watterott.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/fbtft/fb_watterott.c b/drivers/staging/fbtft/fb_watterott.c
index 76b25df376b8..afcc86a17995 100644
--- a/drivers/staging/fbtft/fb_watterott.c
+++ b/drivers/staging/fbtft/fb_watterott.c
@@ -84,7 +84,7 @@ static int write_vmem(struct fbtft_par *par, size_t offset, size_t len)
 			par->txbuf.buf, 10 + par->info->fix.line_length);
 		if (ret < 0)
 			return ret;
-		udelay(300);
+		usleep_range(300, 310);
 	}
 
 	return 0;
@@ -124,7 +124,7 @@ static int write_vmem_8bit(struct fbtft_par *par, size_t offset, size_t len)
 			par->txbuf.buf, 10 + par->info->var.xres);
 		if (ret < 0)
 			return ret;
-		udelay(700);
+		usleep_range(700, 710);
 	}
 
 	return 0;
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
