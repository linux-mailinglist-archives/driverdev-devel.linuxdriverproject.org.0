Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CCDB196C0E
	for <lists+driverdev-devel@lfdr.de>; Sun, 29 Mar 2020 11:22:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id B39B9204FB;
	Sun, 29 Mar 2020 09:22:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oTSt+Yncsxod; Sun, 29 Mar 2020 09:22:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D623E204D0;
	Sun, 29 Mar 2020 09:22:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 821D61BF346
 for <devel@linuxdriverproject.org>; Sun, 29 Mar 2020 09:22:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 78C9F88275
 for <devel@linuxdriverproject.org>; Sun, 29 Mar 2020 09:22:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pz16amZCe6jl for <devel@linuxdriverproject.org>;
 Sun, 29 Mar 2020 09:22:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 8BA418816F
 for <devel@driverdev.osuosl.org>; Sun, 29 Mar 2020 09:22:38 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id b72so6997788pfb.11
 for <devel@driverdev.osuosl.org>; Sun, 29 Mar 2020 02:22:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=1hCX0Eu5BSFoHJWyRefAvnMuTN8T0slwSrNK+D8BVUE=;
 b=seiBEgEWo89G0cm4eLCRBhoG4Ilds9sW/UkUVahSr62V/bc68xt4FSrpnMVkw8BfJn
 SO8C+hWFr7MqBP927XPkgd1v5y+scKb3sdMF15SV9rB60OKms3nLkpWT/7LpeBYmTx8T
 5MZ2mRL/6P8rvgoMzla/a+Wl1XOW4dHDbn0pXPmU/uibNDN+JK2J1blSPVOMMEyPC+py
 NLawegDjyJ203XfGz6tILqTQPOzGBBFiy9IiaXDbsJQFs2cI81MQw9gW6l4zRcpzMFPQ
 K5jmOkIUmQrD0ABHxXfFEG6P+rX2v6oke5jSor4qvAI1G3hOQZ09GYU377NQXRtPDM/e
 a/PA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=1hCX0Eu5BSFoHJWyRefAvnMuTN8T0slwSrNK+D8BVUE=;
 b=lDzte5Y1Eva6gPueEPMbYdeemLqZYGZmWHC+LpexPEyOwx/bFU6p3pnjsZINByIE5g
 vyJGNEqS3s7PFITVlY5vsDDnRoP9Y6cjuXxkOEwON7j0JRr/d29lBp4z8NLwhI72nQkS
 G1BAL2GVBMtzClVK4YDh4OoYUk8YV63poWOPwfIx2YUamQYlSD+LbJVRdzhrZNKEGYZJ
 sv2wZbFH+LIJwEqn21VRrFjXncfUTAtv1GliEoPA5Cdbn7qXE3Ph8/M/Yj7i6O6DWUDM
 a/ipp9k52GwoA3s8OHnkhLtMEQFEneHveuKd6n6SMAQz2/sBRLRwlC26YWwtEgOeXa0N
 rCVw==
X-Gm-Message-State: ANhLgQ0JqLY1PWct3khqjJqju7nvNtc9iyFpepemWVRH+0cTENmnY76i
 8B4S/+m/lAKg8Wqa93y/Xrk=
X-Google-Smtp-Source: ADFU+vs2xioDwndYreFjtqUiqCO2dHroI6mYZCs+EpeXHdChdsMV8FKCH9+T0VoQFeFpcNj8WaZt5A==
X-Received: by 2002:a65:5a87:: with SMTP id c7mr7664384pgt.237.1585473758132; 
 Sun, 29 Mar 2020 02:22:38 -0700 (PDT)
Received: from OptiPlexFedora.fios-router.home ([47.144.161.84])
 by smtp.gmail.com with ESMTPSA id b3sm7366962pgs.69.2020.03.29.02.22.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 29 Mar 2020 02:22:37 -0700 (PDT)
From: "John B. Wyatt IV" <jbwyatt4@gmail.com>
To: outreachy-kernel@googlegroups.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>,
 dri-devel@lists.freedesktop.org, linux-fbdev@vger.kernel.org,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH] staging: fbtft: Replace udelay with preferred usleep_range
Date: Sun, 29 Mar 2020 02:22:04 -0700
Message-Id: <20200329092204.770405-1-jbwyatt4@gmail.com>
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
Cc: "John B. Wyatt IV" <jbwyatt4@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix style issue with usleep_range being reported as preferred over
udelay.

Issue reported by checkpatch.

Please review.

As written in Documentation/timers/timers-howto.rst udelay is the
generally preferred API. hrtimers, as noted in the docs, may be too
expensive for this short timer.

Are the docs out of date, or, is this a checkpatch issue?

Signed-off-by: John B. Wyatt IV <jbwyatt4@gmail.com>
---
 drivers/staging/fbtft/fb_agm1264k-fl.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/fbtft/fb_agm1264k-fl.c b/drivers/staging/fbtft/fb_agm1264k-fl.c
index eeeeec97ad27..019c8cce6bab 100644
--- a/drivers/staging/fbtft/fb_agm1264k-fl.c
+++ b/drivers/staging/fbtft/fb_agm1264k-fl.c
@@ -85,7 +85,7 @@ static void reset(struct fbtft_par *par)
 	dev_dbg(par->info->device, "%s()\n", __func__);
 
 	gpiod_set_value(par->gpio.reset, 0);
-	udelay(20);
+	usleep_range(20, 20);
 	gpiod_set_value(par->gpio.reset, 1);
 	mdelay(120);
 }
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
