Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 86FF1AD189
	for <lists+driverdev-devel@lfdr.de>; Mon,  9 Sep 2019 03:26:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A465084EB0;
	Mon,  9 Sep 2019 01:26:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9d4600Imj5zT; Mon,  9 Sep 2019 01:26:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4AFC184B36;
	Mon,  9 Sep 2019 01:26:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1E9D91BF2B0
 for <devel@linuxdriverproject.org>; Mon,  9 Sep 2019 01:26:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 1B29986C7A
 for <devel@linuxdriverproject.org>; Mon,  9 Sep 2019 01:26:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TlRXlVLV4Swy for <devel@linuxdriverproject.org>;
 Mon,  9 Sep 2019 01:26:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f65.google.com (mail-ot1-f65.google.com
 [209.85.210.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 9002F864E9
 for <devel@driverdev.osuosl.org>; Mon,  9 Sep 2019 01:26:17 +0000 (UTC)
Received: by mail-ot1-f65.google.com with SMTP id b2so10892633otq.10
 for <devel@driverdev.osuosl.org>; Sun, 08 Sep 2019 18:26:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=5Ov2d6Pnm9u+Qu6MuAf8jhV3xMMR4SjQUGOpB2HvBj0=;
 b=jeBGCxRNn+pUIGhwRwVpQqdTM/IILqqr3/4As4imoqUasPXfypeW3HUH1otXbg9JYv
 52fimVWUxuIKNuYMya5fLjh0r0X0AJ5nPFSRsCiM3UYxsE8f3xv+iyJ0zhdvrxBjYSNW
 iQzYT1+lVrbyzlaWpWOwWET0fSPBpZ3ic4F9V+KlNoXmwKA94nVgdj0je7ZZiaPQ6KuQ
 WucSJpugiVN84M01w7/gTq4VyAt6SbNlFkfy3xPRGy4bRp4BPP3xRDY3V2ddEYknnngU
 HXbuBusFEpN6kMfHXwJbobmpEAAkQd4vKgZ5h2kurvofmG/jlM3dIH+mu5rlItBQtWQU
 kVMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=5Ov2d6Pnm9u+Qu6MuAf8jhV3xMMR4SjQUGOpB2HvBj0=;
 b=Zhz9C05UobjajFpk2KY08oLJd3ah/6nl2EfIWkla456bmwzB5VcDY0G3DiX53EXVGY
 y4aIilT22igbpLXcQKNfWQm9bfbKlFzgpFi52EEBbFs/F1FvB2pePGDH/d00pLhfsRE+
 TFwzfnoHFZy9RpohjMfL9pG3igXXWU1dI8XE6IkxEwD4neaLvN2gKOutWdVaWwyiIbq2
 CZ1mIAkMiFdgVJjXuajmb1Pf5hoDCu94KCrfI+P1sviQcAqYWJbyVvR9q0/us+o7XHE6
 hIQ2fmWED5XiGs0cVqGNGJoxMqV/LZG01OxBGXGuEDuQuJEL0ehrMS54fazjfZ+VHQmD
 TO9Q==
X-Gm-Message-State: APjAAAUP5ONtieaGvXwkAb+acvjEg4HNUCJDtOV5cU+fh+chKHOz+YpQ
 XTk0wcPwMNOkgD5hVf3BvWs=
X-Google-Smtp-Source: APXvYqxREF5U+6iLM0y+RqBU1gb9iyKo78SFJJdiLHDsba6Zy60Pv8GzxsKEmTWJ0FnmUHdON9IdBA==
X-Received: by 2002:a9d:7ac8:: with SMTP id m8mr13140172otn.172.1567992376680; 
 Sun, 08 Sep 2019 18:26:16 -0700 (PDT)
Received: from sreeram-MS-7B98 (cpe-173-174-83-82.austin.res.rr.com.
 [173.174.83.82])
 by smtp.gmail.com with ESMTPSA id d24sm4898419otf.78.2019.09.08.18.26.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 08 Sep 2019 18:26:16 -0700 (PDT)
From: Sreeram Veluthakkal <srrmvlt@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] FBTFT: fb_agm1264k: usleep_range is preferred over udelay
Date: Sun,  8 Sep 2019 20:26:05 -0500
Message-Id: <20190909012605.15051-1-srrmvlt@gmail.com>
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
Cc: devel@driverdev.osuosl.org, linux-fbdev@vger.kernel.org,
 nishadkamdar@gmail.com, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, payal.s.kshirsagar.98@gmail.com,
 Sreeram Veluthakkal <srrmvlt@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch fixes the issue:
FILE: drivers/staging/fbtft/fb_agm1264k-fl.c:88:
CHECK: usleep_range is preferred over udelay; see Documentation/timers/timers-howto.rst
+       udelay(20);

Signed-off-by: Sreeram Veluthakkal <srrmvlt@gmail.com>
---
 drivers/staging/fbtft/fb_agm1264k-fl.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/fbtft/fb_agm1264k-fl.c b/drivers/staging/fbtft/fb_agm1264k-fl.c
index eeeeec97ad27..2dece71fd3b5 100644
--- a/drivers/staging/fbtft/fb_agm1264k-fl.c
+++ b/drivers/staging/fbtft/fb_agm1264k-fl.c
@@ -85,7 +85,7 @@ static void reset(struct fbtft_par *par)
 	dev_dbg(par->info->device, "%s()\n", __func__);
 
 	gpiod_set_value(par->gpio.reset, 0);
-	udelay(20);
+	usleep_range(20, 40);
 	gpiod_set_value(par->gpio.reset, 1);
 	mdelay(120);
 }
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
