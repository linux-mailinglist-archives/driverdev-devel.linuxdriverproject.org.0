Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D9F4A11D6F3
	for <lists+driverdev-devel@lfdr.de>; Thu, 12 Dec 2019 20:17:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 306168842A;
	Thu, 12 Dec 2019 19:17:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zq0AUf5ZszPX; Thu, 12 Dec 2019 19:17:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7974088416;
	Thu, 12 Dec 2019 19:17:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7F4BD1BF340
 for <devel@linuxdriverproject.org>; Thu, 12 Dec 2019 19:17:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7B199888A9
 for <devel@linuxdriverproject.org>; Thu, 12 Dec 2019 19:17:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fi2z3t1UJhsl for <devel@linuxdriverproject.org>;
 Thu, 12 Dec 2019 19:17:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 85F11888B0
 for <devel@driverdev.osuosl.org>; Thu, 12 Dec 2019 19:17:20 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id c9so3972517wrw.8
 for <devel@driverdev.osuosl.org>; Thu, 12 Dec 2019 11:17:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=FkC2WMgoS/Vijj1HJiaDAqFaZ6UcaSu7y0MSL7Z4jN4=;
 b=aeJSnS0rq8abuyfIzLMuaophVtnnaJdGHymqo9H1s5OiLFRUvxGmnUlPeILgfSAXGG
 vhoE5Lj6OGvhOV2bYujhupknqCdhEzrDbcMpamQa3gF6F9ND/W5julD/gsWHG6H0AftT
 pyfNUsltU9RRhOCLKYBgkCrmM48RWFGCP8rHYiFGANFDzI8zjPL7pT5p/VAJnz9PlxmT
 kkcZiWWo/99ODJ3/GOLRswzwS7exiglKnouCAdC0vy/ue+/S3K71gqaGmkTFEBj3373R
 H9LnsVv8CpmYhj8Im/zlr6ws5i0R7yCRKE8Mp2St7FdX4BMGtJIuNvgo4AYCOg8XT0pp
 5zVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=FkC2WMgoS/Vijj1HJiaDAqFaZ6UcaSu7y0MSL7Z4jN4=;
 b=n7lh5zsv/S8OTnaJdAeSpKlFpQAbxcPyXS4i08m12wtzuLLgvU8k06hg+cWoIfT6kM
 blg53BOZXKZFguYSNryknt+pQWbTJIgP7v+EDcq/qIUOlqm7v/cKWLuA9gjxj4g0z/54
 QztcHCGF59QvuCsE3aTJ/o/Pj90sLNUIwEyYlLmiqeRKSl3NM2vkQoG9dXj88XgBdgXh
 Hnhc0xGptmHPhYJz/KdN7YIbabkVteSCAURNHjnAB5ARP7CWA/Lm3l+3pBzO/U8BMfFD
 0AIR7r2vyzlU89lvdWV+BvSSSRePxESeP00K1DW8K8n500Dv/2zxfPpXThZtUU4D+Y0d
 +tDw==
X-Gm-Message-State: APjAAAVad5MUShJ1GEosHxChFZzZQ4mJIGOLZ8sv+SMuXYOnFMxxCHzI
 zFTXqsTKYTP6OHOUab5oJSkBUg==
X-Google-Smtp-Source: APXvYqyYBKhHlyhdJl06AV3VhUEFUbBql6P9HEgkqb0961Utwqp3hj14g7S8N7ZkswKwm4qayK3rKQ==
X-Received: by 2002:a5d:6a88:: with SMTP id s8mr7810817wru.173.1576178238830; 
 Thu, 12 Dec 2019 11:17:18 -0800 (PST)
Received: from arch-thunder.local (a109-49-46-234.cpe.netcabo.pt.
 [109.49.46.234])
 by smtp.gmail.com with ESMTPSA id e8sm6928135wrt.7.2019.12.12.11.17.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Dec 2019 11:17:18 -0800 (PST)
From: Rui Miguel Silva <rui.silva@linaro.org>
X-Google-Original-From: Rui Miguel Silva <rmfrfs@gmail.com>
To: Hans Verkuil <hverkuil@xs4all.nl>,
 Dan Carpenter <dan.carpenter@oracle.com>,
 Steve Longerbeam <slongerbeam@gmail.com>,
 Philipp Zabel <p.zabel@pengutronix.de>
Subject: [PATCH] media: imx7-mipi-csis: remove subdev_notifier
Date: Thu, 12 Dec 2019 19:17:14 +0000
Message-Id: <20191212191714.812249-1-rmfrfs@gmail.com>
X-Mailer: git-send-email 2.24.0
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
Cc: devel@driverdev.osuosl.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

It was defined a notifier in the csi_state structure that is never
allocated. And besides that it's unregister in the remove, even though
it is a no-op, just remove both.

Fixes: 7807063b862b ("media: staging/imx7: add MIPI CSI-2 receiver subdev for i.MX7")
Reported-by: Hans Verkuil <hverkuil@xs4all.nl>
Suggested-by: Dan Carpenter <dan.carpenter@oracle.com>
Suggested-by: Philipp Zabel <p.zabel@pengutronix.de>
Signed-off-by: Rui Miguel Silva <rmfrfs@gmail.com>
---
 drivers/staging/media/imx/imx7-mipi-csis.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/staging/media/imx/imx7-mipi-csis.c b/drivers/staging/media/imx/imx7-mipi-csis.c
index 99166afca071..383abecb3bec 100644
--- a/drivers/staging/media/imx/imx7-mipi-csis.c
+++ b/drivers/staging/media/imx/imx7-mipi-csis.c
@@ -251,8 +251,6 @@ struct csi_state {
 
 	struct mipi_csis_event events[MIPI_CSIS_NUM_EVENTS];
 
-	struct v4l2_async_notifier subdev_notifier;
-
 	struct csis_hw_reset hw_reset;
 	struct regulator *mipi_phy_regulator;
 	bool sink_linked;
@@ -1104,7 +1102,6 @@ static int mipi_csis_remove(struct platform_device *pdev)
 
 	mipi_csis_debugfs_exit(state);
 	v4l2_async_unregister_subdev(&state->mipi_sd);
-	v4l2_async_notifier_unregister(&state->subdev_notifier);
 
 	pm_runtime_disable(&pdev->dev);
 	mipi_csis_pm_suspend(&pdev->dev, true);
-- 
2.24.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
