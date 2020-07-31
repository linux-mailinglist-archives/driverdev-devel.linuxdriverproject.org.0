Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F29C234AD3
	for <lists+driverdev-devel@lfdr.de>; Fri, 31 Jul 2020 20:23:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 60FA0887E1;
	Fri, 31 Jul 2020 18:23:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id A30Cuia1oN6s; Fri, 31 Jul 2020 18:23:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 872FB887DC;
	Fri, 31 Jul 2020 18:23:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0C11E1BF9C1
 for <devel@linuxdriverproject.org>; Fri, 31 Jul 2020 18:23:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 08C268612B
 for <devel@linuxdriverproject.org>; Fri, 31 Jul 2020 18:23:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SeASMGQtMQcV for <devel@linuxdriverproject.org>;
 Fri, 31 Jul 2020 18:23:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 42300860F9
 for <devel@driverdev.osuosl.org>; Fri, 31 Jul 2020 18:23:36 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id 88so28779308wrh.3
 for <devel@driverdev.osuosl.org>; Fri, 31 Jul 2020 11:23:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
 bh=JrC7qjycRVRdrX0NTlD/R/AKY99Uy/kwyi/myWTpiKg=;
 b=rkuLmF182iw2YqxYnqSjWWhjpbt02vob0rNC0oy3d6jv/dgO0x4P+AeBexG6N4+2Iw
 U6bjClb81TpEyNZkl20Ozo6kPvlOYEU/QMwHC3+Bm5mn4zAY0adQIBFbrTAlEEgvHar4
 qKJ3eun4Uavxz+rkd0bi4BiYSWU8XYs4RzkrjD9AOPboPYPGucw2ampAdhO/WItPFx1B
 Deg3Xj9deUniMl9PxgYhIjhocZ7nMPa0BgqRE0+aKbDChVF9Ba5f1w+OjqQMmpmwV+p8
 DIQIg53JttZDaaHUUTkmXehJPILz0rJkl3KuGYVwmBTqKPxrIfaT8w2iAzFf84iovXlA
 RnPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition;
 bh=JrC7qjycRVRdrX0NTlD/R/AKY99Uy/kwyi/myWTpiKg=;
 b=f32HlGBpHtrIPL6/ijbJx4FC6ksrUpcuF52KRksWwStp9nDzSEVFE3TWVnwUQxsP8W
 o94MjmzHIZrUzBsov4VEy3hV+Dt9/h8MtpboT2TXtBanxrtknLRWxwml0gEaAyROxtBw
 GaCi7V+6AO5c4FBpBfOONJ3dOVOe3OXmDLOWZyNvrueDfglIhqmbkzsT2eU8iU1BAp17
 DSRIrgG98mEypPL2VApV97KJJ+ZHDhkHm3lLwN3WUnXpJMMVfcQJFH0nQc4LU+QZvUyh
 hQgN1o42VJkgVhqBghULbEANZN7pH99UuTwHMCrRvLopoK+E0/BeW1kQLOHpiBeP6GoM
 ecUg==
X-Gm-Message-State: AOAM532wU5eZv+Xw98g3EjzbHPYH5D1C/P5wtWtktLh2sRrjqAYASkol
 g+P7JmcLxxGw2c0AaePQNZw=
X-Google-Smtp-Source: ABdhPJyJZTfhAEA5m+p9J5f1jm1Pp9Jm9AT8/Dj6usWq2d15BVLYRItc1jMwsQSn45jxFe3gjR3B2w==
X-Received: by 2002:a5d:498f:: with SMTP id r15mr4881418wrq.175.1596219814513; 
 Fri, 31 Jul 2020 11:23:34 -0700 (PDT)
Received: from tsnow (IGLD-83-130-60-139.inter.net.il. [83.130.60.139])
 by smtp.gmail.com with ESMTPSA id n5sm13890776wrx.22.2020.07.31.11.23.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 31 Jul 2020 11:23:33 -0700 (PDT)
Date: Fri, 31 Jul 2020 21:23:30 +0300
From: Tomer Samara <xsamarax00@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: netlogic: clear alignment style issues
Message-ID: <20200731182330.GA3176@tsnow>
MIME-Version: 1.0
Content-Disposition: inline
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Clear checkpatch alignment style issues in xlr_net.c.
    CHECK: Alignment should match open parenthesis

Signed-off-by: Tomer Samara <xsamarax00@gmail.com>
---
 drivers/staging/netlogic/xlr_net.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/netlogic/xlr_net.c b/drivers/staging/netlogic/xlr_net.c
index 204fcdfc022f..69ea61faf8fa 100644
--- a/drivers/staging/netlogic/xlr_net.c
+++ b/drivers/staging/netlogic/xlr_net.c
@@ -355,7 +355,7 @@ static void xlr_stats(struct net_device *ndev, struct rtnl_link_stats64 *stats)
 			    stats->rx_missed_errors);
 
 	stats->tx_aborted_errors = xlr_nae_rdreg(priv->base_addr,
-			TX_EXCESSIVE_COLLISION_PACKET_COUNTER);
+						 TX_EXCESSIVE_COLLISION_PACKET_COUNTER);
 	stats->tx_carrier_errors = xlr_nae_rdreg(priv->base_addr,
 						 TX_DROP_FRAME_COUNTER);
 	stats->tx_fifo_errors = xlr_nae_rdreg(priv->base_addr,
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
