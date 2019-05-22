Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E4F32638E
	for <lists+driverdev-devel@lfdr.de>; Wed, 22 May 2019 14:14:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0558886DBD;
	Wed, 22 May 2019 12:14:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CJc49oTr4kgS; Wed, 22 May 2019 12:14:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 96ADB81FD3;
	Wed, 22 May 2019 12:14:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5E0B01BF2BB
 for <devel@linuxdriverproject.org>; Wed, 22 May 2019 12:14:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 588303023A
 for <devel@linuxdriverproject.org>; Wed, 22 May 2019 12:14:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EFGG65SNu63P for <devel@linuxdriverproject.org>;
 Wed, 22 May 2019 12:14:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f195.google.com (mail-qt1-f195.google.com
 [209.85.160.195])
 by silver.osuosl.org (Postfix) with ESMTPS id 460B03015B
 for <devel@driverdev.osuosl.org>; Wed, 22 May 2019 12:14:51 +0000 (UTC)
Received: by mail-qt1-f195.google.com with SMTP id a39so2005434qtk.2
 for <devel@driverdev.osuosl.org>; Wed, 22 May 2019 05:14:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=bOnEH385qJy9U7avXqjM772xN5YJNh9FhvyEe0IH62U=;
 b=CFJHY4yhlQ8WQ5VT/j2XOQS/u1Np/qwPH2yZ6t8jRZGLiOFavQ6OwOmcDWhCUGalia
 Z8KOh4+8r39JgEf3TCB/tjv+Kuc/YvwZRebqCVE0NaGnkeZLPsHZJ0wgtctUP3OP7j7D
 eDTFvgCljMUkqfhcMfbx17oN49L3RTF2hviHToYGZ0lkJ5Ps7TQyP+Y1+eAsQviQgcoa
 H85NybTYPQvYyk8BDmKm273oc+SwqN74xhcM5SD4w3zo8LAGDwS8T2jmdgPVnNBjUbrr
 PWbqlomebl+j6JEs6i/jxH9yD1wHRMbTfgWoUzWOcfHX+s0NnX1CTgiRMtbiijTf6YmF
 hWKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=bOnEH385qJy9U7avXqjM772xN5YJNh9FhvyEe0IH62U=;
 b=psNYuPmzmfe4YmQ+H9DRenvDZJJ+7Io2TjlPeVH1ggqQ0CuMxMQZmuKaER8K4hnNyS
 fwnTW3pj1v827T1d03iSiuyaxBBL4Rb2NAUi52CeVIkMe9zzXPfdhmflgAnvTjLgTzmK
 Mm+95cfLs+5q3+NFSkxC3yJ79izmEOarwhlqi2xtXEbiQGQSrSA8uQAF2ASN7WTyNtg0
 1TJXFzbb1t+AJcC+h3M4BVINWNhOcS9Se05SppqNHBWzFw384SyO1RheY+5cCD7U5fpn
 qgDz3ABRBf5racvx3S3relYqmCquzz0ph77CbNSUlNHu5qX3gsqWQuGDQQDVivEV4T0V
 Zglw==
X-Gm-Message-State: APjAAAWFBZYR3Ql+/3pIvhWRJRNky1sDsw3M+Fc4yfLdYWjvQHPHvFyV
 l3Tpa7rT5muSFmpHxZggjNE=
X-Google-Smtp-Source: APXvYqzD14dCaLcFyDsK5YSTE9RD8xNQd9rCyeu87tr5lpVZ9BQvmmRvsgRxMnIonL5aZMbC3hMVgg==
X-Received: by 2002:ac8:720a:: with SMTP id a10mr62057724qtp.164.1558527290518; 
 Wed, 22 May 2019 05:14:50 -0700 (PDT)
Received: from arch-01.home (c-73-132-202-198.hsd1.dc.comcast.net.
 [73.132.202.198])
 by smtp.gmail.com with ESMTPSA id w2sm8742070qto.19.2019.05.22.05.14.49
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 22 May 2019 05:14:49 -0700 (PDT)
From: Geordan Neukum <gneukum1@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH 2/6] staging: kpc2000: kpc_i2c: remove unused module param
 disable_features
Date: Wed, 22 May 2019 12:13:58 +0000
Message-Id: <a4bbf48414a9b7cc2f2880ea1bf06f5d0b7719c3.1558526487.git.gneukum1@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <cover.1558526487.git.gneukum1@gmail.com>
References: <cover.1558526487.git.gneukum1@gmail.com>
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
Cc: Geordan Neukum <gneukum1@gmail.com>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The module parameter 'disable_features' is currently unused. Therefore,
it should be removed.

Signed-off-by: Geordan Neukum <gneukum1@gmail.com>
---
 drivers/staging/kpc2000/kpc2000_i2c.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc2000_i2c.c b/drivers/staging/kpc2000/kpc2000_i2c.c
index 42061318d2d4..40a89998726e 100644
--- a/drivers/staging/kpc2000/kpc2000_i2c.c
+++ b/drivers/staging/kpc2000/kpc2000_i2c.c
@@ -126,10 +126,6 @@ struct i2c_device {
 /* Not really a feature, but it's convenient to handle it as such */
 #define FEATURE_IDF             (1 << 15)
 
-static unsigned int disable_features;
-module_param(disable_features, uint, S_IRUGO | S_IWUSR);
-MODULE_PARM_DESC(disable_features, "Disable selected driver features");
-
 // FIXME!
 #undef inb_p
 #define inb_p(a) readq((void*)a)
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
