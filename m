Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A72BF2A77F
	for <lists+driverdev-devel@lfdr.de>; Sun, 26 May 2019 03:19:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3E5DE8828C;
	Sun, 26 May 2019 01:19:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id by3MIDPnew99; Sun, 26 May 2019 01:19:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4DF3A880C3;
	Sun, 26 May 2019 01:19:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4CFEC1BF5A6
 for <devel@linuxdriverproject.org>; Sun, 26 May 2019 01:19:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 49D6186132
 for <devel@linuxdriverproject.org>; Sun, 26 May 2019 01:19:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uCBX58cfhP9I for <devel@linuxdriverproject.org>;
 Sun, 26 May 2019 01:19:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-vs1-f67.google.com (mail-vs1-f67.google.com
 [209.85.217.67])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C1D7F86100
 for <devel@driverdev.osuosl.org>; Sun, 26 May 2019 01:19:31 +0000 (UTC)
Received: by mail-vs1-f67.google.com with SMTP id c24so8360706vsp.7
 for <devel@driverdev.osuosl.org>; Sat, 25 May 2019 18:19:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=q6Ng0YgGWXiNGzlc0581CkbBTTW9Uf73AKmysyNcLng=;
 b=Yf6L+Q9J31gPQCtI+ZutcjbC8Z2ybHGHiFmB72m+aPQ2YnaRBoBo2qS/hwa8m5nl1a
 rxyp0/b0duwXuzAjDl6sfw9fUX/9rXyBvzlsaEOeOp8jtOPTRrTAYwOhZtCCT2GJTnHu
 P1+h+RNI2EfzOtQXnzVUmtR+FGi9Hq9ulH4e1SuDgkKBA+Oc7JPPHegOR7Ehs0aPyDwh
 y1EfeG/f2BQbLJLZGOGLrP2zP0lYyQO6icxRvum03unK2uOKILritd6peM12XvXvxDNP
 obzP9MtDfvwqjdgqwLWFrLmgBGwoJ9msvnnxejj2/uB2W8JelG4i1Irhyv/8U4fz81AS
 8rQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=q6Ng0YgGWXiNGzlc0581CkbBTTW9Uf73AKmysyNcLng=;
 b=dxX9Y97IbY76Qo4SLnbE8Sk0rUS5Rb81OZYvp7YUPHGWWhLPSU2CiBUQo04qX+JBe/
 Imr5p2VO/lIPSpWcWrHgBpn4rYOe7OOp37zA3r42uED0sKPh3YD3LN8W/oU85k5r28ds
 Ooe1RvjV+9PlKKWx/0AzUOWPyA3fie64YOnVWRPrqaiVxyTkpY0sSkvoC8pe8BT4gGm+
 +xTpirGhbhDQPSsUCeRi4uWTGxUZiyVi6zTUgGd+mQQX5bm+4tNXffvZUBJ+d/9BTQKo
 /1i3s3kaqYYaq64iIVga5T8G8HWF0jHZBCiNn2tYZI8ggyRPfPT+EjupMzy7sui47wH0
 tvKw==
X-Gm-Message-State: APjAAAV3Dirm4TOqu+B5ZACoKDSIbKlQciq0n5i7yhwy3t3kJX6pRVU7
 8Ovcnqx7C/XwkqP1YMuLa/g=
X-Google-Smtp-Source: APXvYqwvGOCHofrqHNxqy92jK34PscedhwycjdA9GX8VTqFwPEETvEJXS2M0AVd9G8hp58IKuozYTw==
X-Received: by 2002:a67:f5cb:: with SMTP id t11mr57611899vso.197.1558833570906; 
 Sat, 25 May 2019 18:19:30 -0700 (PDT)
Received: from arch-01.home (c-73-132-202-198.hsd1.md.comcast.net.
 [73.132.202.198])
 by smtp.gmail.com with ESMTPSA id 9sm4593181vkk.43.2019.05.25.18.19.29
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 25 May 2019 18:19:30 -0700 (PDT)
From: Geordan Neukum <gneukum1@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 1/8] staging: kpc2000: kpc_i2c: Remove unused rw_sem
Date: Sun, 26 May 2019 01:18:27 +0000
Message-Id: <651e1f5f40fb7e7f45179eb8c550f34d51ed4787.1558832514.git.gneukum1@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <cover.1558832514.git.gneukum1@gmail.com>
References: <cover.1558832514.git.gneukum1@gmail.com>
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
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

In pi2c_probe, a rw_sem is initialized and stashed off in the
i2c_device private runtime state struct. This rw_sem is never used
after initialization. Remove the rw_sem and cleanup unneeded header
inclusion.

Signed-off-by: Geordan Neukum <gneukum1@gmail.com>
---
 drivers/staging/kpc2000/kpc2000_i2c.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc2000_i2c.c b/drivers/staging/kpc2000/kpc2000_i2c.c
index fb9a8386bcce..2c272ad8eca6 100644
--- a/drivers/staging/kpc2000/kpc2000_i2c.c
+++ b/drivers/staging/kpc2000/kpc2000_i2c.c
@@ -25,7 +25,6 @@
 #include <linux/slab.h>
 #include <linux/platform_device.h>
 #include <linux/fs.h>
-#include <linux/rwsem.h>
 #include <linux/delay.h>
 #include <linux/i2c.h>
 #include "kpc.h"
@@ -38,7 +37,6 @@ struct i2c_device {
 	unsigned long           smba;
 	struct i2c_adapter      adapter;
 	struct platform_device *pldev;
-	struct rw_semaphore     rw_sem;
 	unsigned int            features;
 };
 
@@ -606,7 +604,6 @@ static int pi2c_probe(struct platform_device *pldev)
 	priv->features |= FEATURE_BLOCK_BUFFER;
 
 	//init_MUTEX(&lddata->sem);
-	init_rwsem(&priv->rw_sem);
 
 	/* set up the sysfs linkage to our parent device */
 	priv->adapter.dev.parent = &pldev->dev;
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
