Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A3611168BE
	for <lists+driverdev-devel@lfdr.de>; Mon,  9 Dec 2019 09:58:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4A2EF881F9;
	Mon,  9 Dec 2019 08:58:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aE1F4KrH6FPl; Mon,  9 Dec 2019 08:58:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 81C81881CC;
	Mon,  9 Dec 2019 08:58:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A9A0B1BF20D
 for <devel@linuxdriverproject.org>; Mon,  9 Dec 2019 08:58:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A6B6386502
 for <devel@linuxdriverproject.org>; Mon,  9 Dec 2019 08:58:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cyWE9ja3iBwS for <devel@linuxdriverproject.org>;
 Mon,  9 Dec 2019 08:58:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 5EA1985FC1
 for <devel@driverdev.osuosl.org>; Mon,  9 Dec 2019 08:58:44 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id l24so6777637pgk.2
 for <devel@driverdev.osuosl.org>; Mon, 09 Dec 2019 00:58:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=J5879LZ/Pi63QwYbKH9FG7q4Bl0Ds4fjn/Pvg7Od1Ec=;
 b=RZaX0ioqUEqw0QfmHP6faFSw/t94WFmFghK9AEN6Yv+N/+UKM772AHLpfMdRLslZCz
 A1LJv9UNjP5cXmhnRr/SWM/veawKnW1O+iElSUa5ANIA9akzRPw9A9t+sr4xuTp1CnLW
 2QueHSGHz/xh0Mpg5C31KZN2D/Uyu1LKQGTzO5S1a+AUG1Ky+qPl3uhZrOB1i+QBEEfV
 hSI2mvJvTb1hQga8wCfn6zUhQpldlomq2PprONFxrzqDnyb58T+3YlJ0Rk+HInqAqvor
 QkjLVHbIAEPN5qD75BlwVNmISorFFWMfXJvZfx0Tm0GEN5OmLmpcdGrqnt/LAq1VDAqb
 isTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=J5879LZ/Pi63QwYbKH9FG7q4Bl0Ds4fjn/Pvg7Od1Ec=;
 b=FmE2I7Frd20zeEqVcbCJMK7M3cFCY17Cqj0VgzAkKa6TDtSpDeYmguJWxdKzQWYXKj
 snBrw0oN6ZAlGqfSklPeYmKy4Y79Ly53ssdUkeO2bx4ir2mcdTSnxDfP9RB89rJ3GtJX
 VM+L9qYWoMT6wz4oYeSnzDtMyz7WXOHOuyuJ58tAqKfU650XqgIX/eUVjSJoNN8l20dn
 ErJGM2ZQti0dHuTr8T4gy/19bHm/ZrubT05gnw9yQ2hwSzVmHwliLULgrXEVjrkgMscH
 jhoiA2ITv+3ZMkyrNIpkJq4Fgcw3gVxHcDMkzJCRR2HWSFxpHyIDRnhy19EtMsuYzQdW
 0L0w==
X-Gm-Message-State: APjAAAUdn9iTaXK4Jjl+cHwU3yCrQ1U746vkdkq64cEcOp3yXmNP5jfl
 x84RkzPL89d/ZBWxSvyrBT0=
X-Google-Smtp-Source: APXvYqyOgxCtG+slALBSZvCRJBZ2STsFf/PiiOls9fa04H+mWGLjYNLpGc90OOQE5vNvxiYdGKoleQ==
X-Received: by 2002:a63:cc02:: with SMTP id x2mr17928600pgf.114.1575881923958; 
 Mon, 09 Dec 2019 00:58:43 -0800 (PST)
Received: from suzukaze.ipads-lab.se.sjtu.edu.cn ([202.120.40.82])
 by smtp.gmail.com with ESMTPSA id f24sm11681569pjp.12.2019.12.09.00.58.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Dec 2019 00:58:43 -0800 (PST)
From: Chuhong Yuan <hslester96@gmail.com>
To: 
Subject: [PATCH] media: imx7-mipi-csis: Add the missed
 v4l2_async_notifier_cleanup in remove
Date: Mon,  9 Dec 2019 16:58:28 +0800
Message-Id: <20191209085828.16183-1-hslester96@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Pengutronix Kernel Team <kernel@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Chuhong Yuan <hslester96@gmail.com>,
 linux-kernel@vger.kernel.org, NXP Linux Team <linux-imx@nxp.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Steve Longerbeam <slongerbeam@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

All drivers in imx call v4l2_async_notifier_cleanup() after unregistering
the notifier except this driver.
This should be a miss and we need to add the call to fix it.

Signed-off-by: Chuhong Yuan <hslester96@gmail.com>
---
 drivers/staging/media/imx/imx7-mipi-csis.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/media/imx/imx7-mipi-csis.c b/drivers/staging/media/imx/imx7-mipi-csis.c
index 99166afca071..2bfa85bb84e7 100644
--- a/drivers/staging/media/imx/imx7-mipi-csis.c
+++ b/drivers/staging/media/imx/imx7-mipi-csis.c
@@ -1105,6 +1105,7 @@ static int mipi_csis_remove(struct platform_device *pdev)
 	mipi_csis_debugfs_exit(state);
 	v4l2_async_unregister_subdev(&state->mipi_sd);
 	v4l2_async_notifier_unregister(&state->subdev_notifier);
+	v4l2_async_notifier_cleanup(&state->subdev_notifier);
 
 	pm_runtime_disable(&pdev->dev);
 	mipi_csis_pm_suspend(&pdev->dev, true);
-- 
2.24.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
