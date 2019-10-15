Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED04ED77D1
	for <lists+driverdev-devel@lfdr.de>; Tue, 15 Oct 2019 15:59:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D2C76882A1;
	Tue, 15 Oct 2019 13:59:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id i2DpNEcwlMxL; Tue, 15 Oct 2019 13:59:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id CCAF188292;
	Tue, 15 Oct 2019 13:59:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 178441BF20B
 for <devel@linuxdriverproject.org>; Tue, 15 Oct 2019 13:59:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 143FE88277
 for <devel@linuxdriverproject.org>; Tue, 15 Oct 2019 13:59:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id h7MhvRxSPjEG for <devel@linuxdriverproject.org>;
 Tue, 15 Oct 2019 13:59:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 9BD0988249
 for <devel@driverdev.osuosl.org>; Tue, 15 Oct 2019 13:59:36 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id y5so12565843pfo.4
 for <devel@driverdev.osuosl.org>; Tue, 15 Oct 2019 06:59:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=OQHiqCpXSZVn47ppjdn/hXFH8fLHSyXwnH+G+uWWB+o=;
 b=PG4f7wI6q1dk3mWzLjlecyFFuvz+MvCpjU3+a7kNFzGR7+KG8pztW0pVXuGsU77+pv
 Tg8rtN7LMGYs4zKs5btLmvUm9LQLkZFr1ldniygmnAf3ZgCm9oFHL6dB761IEtafw71x
 r3p2EZl05GyvwaCibRuHibodBjLm20HnBo6IOoMtdRGvCnJioNod0RqSRazny9zmXdhC
 Uny2R0HlAZj0hbtVf7G6mF+mVYMM3XRrXP+dOS/N5qdk8e4e5Kl+fi2fD7iP3JkslAfb
 w3FCwwCDNbH/NTKTNlx57+tap11uYFOB8Lf2DKSvM/LBpQb/kx/Wf/o/vIupQc7uS0MP
 DnaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=OQHiqCpXSZVn47ppjdn/hXFH8fLHSyXwnH+G+uWWB+o=;
 b=OJwPhwqJ16yxA3cNjk45aetk+SmSeV+48xKiCq9xm2m/wiskjGCGWBtfolf4WNWVDj
 G/KxsouwGfRWybfLin9J1PSdOKxSWmGojiUTHBmis68WKRt4hCSyDuuvc/5jiOsUwTEP
 wap4vBSot4NtqiRjoVD+7UhDAkNVXEhZtnCllXIqR84Y6WHpdzcC8+KR4C5YJmHc5/b+
 FXfrj7Z8CmoXJeKM4m536X05aF5NuKTlubc9l5wkfH68HIVEZSpiRrPylRMkTw4FdPCu
 3kMJcf4K8Y8dUipEpW1FeGC1ZO0asMbz4DyRKPjBRINir5KVMUL5jfgpA18u232TUZAc
 7kEA==
X-Gm-Message-State: APjAAAXeQW+no6oBdlJEDqPW6NSFPE8HE/1Iy2cVVQgVf4f+ug1iwj0D
 Q3qCye2JMSPmFFwqxJXaap1Xz6YBEtI=
X-Google-Smtp-Source: APXvYqyXWaPbhXkHRvEhA4Oc8Ytcwswmvg4C2Aw1yEvsNR9Wkx6j5txbHhxZQ54W+B9d7pRnyjZ1/g==
X-Received: by 2002:a17:90a:1617:: with SMTP id
 n23mr43135972pja.75.1571147976272; 
 Tue, 15 Oct 2019 06:59:36 -0700 (PDT)
Received: from suzukaze.ipads-lab.se.sjtu.edu.cn ([89.31.126.54])
 by smtp.gmail.com with ESMTPSA id m123sm24503127pfb.133.2019.10.15.06.59.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Oct 2019 06:59:35 -0700 (PDT)
From: Chuhong Yuan <hslester96@gmail.com>
To: 
Subject: [PATCH v2] media: imx7-mipi-csis: Add a check for devm_regulator_get
Date: Tue, 15 Oct 2019 21:59:15 +0800
Message-Id: <20191015135915.6530-1-hslester96@gmail.com>
X-Mailer: git-send-email 2.20.1
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

devm_regulator_get may return an error but mipi_csis_phy_init misses
a check for it.
This may lead to problems when regulator_set_voltage uses the unchecked
pointer.
This patch adds a check for devm_regulator_get to avoid potential risk.

Signed-off-by: Chuhong Yuan <hslester96@gmail.com>
---
Changes in v2:
  - Add a check in mipi_csis_probe for the modified mipi_csis_phy_init.

 drivers/staging/media/imx/imx7-mipi-csis.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/media/imx/imx7-mipi-csis.c b/drivers/staging/media/imx/imx7-mipi-csis.c
index 73d8354e618c..e8a6acaa969e 100644
--- a/drivers/staging/media/imx/imx7-mipi-csis.c
+++ b/drivers/staging/media/imx/imx7-mipi-csis.c
@@ -350,6 +350,8 @@ static void mipi_csis_sw_reset(struct csi_state *state)
 static int mipi_csis_phy_init(struct csi_state *state)
 {
 	state->mipi_phy_regulator = devm_regulator_get(state->dev, "phy");
+	if (IS_ERR(state->mipi_phy_regulator))
+		return PTR_ERR(state->mipi_phy_regulator);
 
 	return regulator_set_voltage(state->mipi_phy_regulator, 1000000,
 				     1000000);
@@ -966,7 +968,10 @@ static int mipi_csis_probe(struct platform_device *pdev)
 		return ret;
 	}
 
-	mipi_csis_phy_init(state);
+	ret = mipi_csis_phy_init(state);
+	if (ret < 0)
+		return ret;
+
 	mipi_csis_phy_reset(state);
 
 	mem_res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
