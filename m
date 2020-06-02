Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B2DE1EB576
	for <lists+driverdev-devel@lfdr.de>; Tue,  2 Jun 2020 07:48:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0D95888081;
	Tue,  2 Jun 2020 05:48:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iwKWrsr1QdyF; Tue,  2 Jun 2020 05:48:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 72E4387FF7;
	Tue,  2 Jun 2020 05:48:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 606621BF34A
 for <devel@linuxdriverproject.org>; Tue,  2 Jun 2020 05:48:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 5CEA587FF7
 for <devel@linuxdriverproject.org>; Tue,  2 Jun 2020 05:48:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id X3zPO+OwP5Qi for <devel@linuxdriverproject.org>;
 Tue,  2 Jun 2020 05:48:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-il1-f193.google.com (mail-il1-f193.google.com
 [209.85.166.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0E77C87F1F
 for <devel@driverdev.osuosl.org>; Tue,  2 Jun 2020 05:48:49 +0000 (UTC)
Received: by mail-il1-f193.google.com with SMTP id j3so11709696ilk.11
 for <devel@driverdev.osuosl.org>; Mon, 01 Jun 2020 22:48:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=k9I8ETp57ehY+cewlXxiibzOu/2WehbLAtG+rirGofY=;
 b=PTTy3Jc1hh5d7OAQOhMTiWNWJ4RspVKcuazsI9Qgbx+DVn0MAAadyVf3uR+SewUl1w
 gqIcebnNBkhmqGbGqm5Fg4dRdKaeeX1SeyH1eiSkGZyofFaoVkQ2VOLVzhcTza5F3uOa
 5Ij9D+nRUzuz4QO1wb6XWri6RH6ozWyuLsPSKcXJ4iuPX0de1IrYswiCNZAWCQdaI3Zt
 1S9Fq6wCHjKOulSz3m7wqNOxsEP+ldTR1c+QrzPqFx5hiWA92V2kosaJls13rcfClr4B
 0iEXswWzLMyYx7L4aM16VXMLHYczOkLn+7fC+706rUgVriAWcroR+dhT3kUhW51ejeFj
 agyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=k9I8ETp57ehY+cewlXxiibzOu/2WehbLAtG+rirGofY=;
 b=ZYLsSAY/zwCRP4igeSA17nyxfWTEgcbDja51ai8oXCymsUjk52Psi33JfmatXJLDhV
 NcmCmEkdvoyvxPBmJYVReezJ8RJy1rA8fR+xY9JkUiKpB4vt1vCEpKhzYn6uYipfq0KS
 fmxHsmd0/uhhgUmZCmo1y0/lM54ygIQZVje6jmTQEzQpKy6gYtHy5nNFAiSkyhEqFwUT
 42ErbKap9bKDkYw2G/oegcCJpRX0TxS1e8UvySORgHTIQLpEB7gzyUrnZw5yGI7GFfqv
 nf/WyhBULznVhk8s1TuOifWE/0Bkjh0q+ni37u2KXjo1Ka2d64npMogvF8gIF5mYySvR
 uW+Q==
X-Gm-Message-State: AOAM533/Ocsi/tCel8W7vkFH11RCFkU4qcB9twCenUiR/I+gazofNnnq
 N5zJ1Jll/z7IRf8Ul5103bc=
X-Google-Smtp-Source: ABdhPJxaffrkPss8NMfyN5duhlcFxRD0Zwf2ag1xzDGUschjC6B9gf0XBShNKhn+Lw1PGm6gXIEycA==
X-Received: by 2002:a92:5e07:: with SMTP id s7mr24998837ilb.266.1591076928307; 
 Mon, 01 Jun 2020 22:48:48 -0700 (PDT)
Received: from cs-u-kase.dtc.umn.edu (cs-u-kase.cs.umn.edu. [160.94.64.2])
 by smtp.googlemail.com with ESMTPSA id z4sm911293ilm.72.2020.06.01.22.48.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 01 Jun 2020 22:48:47 -0700 (PDT)
From: Navid Emamdoost <navid.emamdoost@gmail.com>
To: Dmitry Osipenko <digetx@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>, linux-media@vger.kernel.org,
 linux-tegra@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] media: staging: tegra-vde: add missing
 pm_runtime_put_autosuspend
Date: Tue,  2 Jun 2020 00:48:41 -0500
Message-Id: <20200602054841.15746-1-navid.emamdoost@gmail.com>
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
Cc: Navid Emamdoost <navid.emamdoost@gmail.com>, emamd001@umn.edu, kjlu@umn.edu,
 wu000273@umn.edu, smccaman@umn.edu
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Call to pm_runtime_get_sync increments counter even in case of
failure leading to incorrect ref count.
Call pm_runtime_put_autosuspend if pm_runtime_get_sync fails.

Signed-off-by: Navid Emamdoost <navid.emamdoost@gmail.com>
---
 drivers/staging/media/tegra-vde/vde.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/media/tegra-vde/vde.c b/drivers/staging/media/tegra-vde/vde.c
index d3e63512a765..52cdd4a91e93 100644
--- a/drivers/staging/media/tegra-vde/vde.c
+++ b/drivers/staging/media/tegra-vde/vde.c
@@ -776,8 +776,10 @@ static int tegra_vde_ioctl_decode_h264(struct tegra_vde *vde,
 		goto release_dpb_frames;
 
 	ret = pm_runtime_get_sync(dev);
-	if (ret < 0)
+	if (ret < 0) {
+		pm_runtime_put_autosuspend(dev);
 		goto unlock;
+	}
 
 	/*
 	 * We rely on the VDE registers reset value, otherwise VDE
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
