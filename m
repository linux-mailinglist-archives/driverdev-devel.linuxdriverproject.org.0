Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 85A0A2790E8
	for <lists+driverdev-devel@lfdr.de>; Fri, 25 Sep 2020 20:40:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3B52586D84;
	Fri, 25 Sep 2020 18:40:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lg7UHNDMaxf8; Fri, 25 Sep 2020 18:40:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B14638648E;
	Fri, 25 Sep 2020 18:40:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0DE8A1BF9B9
 for <devel@linuxdriverproject.org>; Fri, 25 Sep 2020 18:40:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 0ADB886E56
 for <devel@linuxdriverproject.org>; Fri, 25 Sep 2020 18:40:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aZisCd2juHGw for <devel@linuxdriverproject.org>;
 Fri, 25 Sep 2020 18:40:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 45A3786E69
 for <devel@driverdev.osuosl.org>; Fri, 25 Sep 2020 18:40:25 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id o20so4008122pfp.11
 for <devel@driverdev.osuosl.org>; Fri, 25 Sep 2020 11:40:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=/tLZJac8Ffn37A7WxCGBPX2NFTEQpF30SJ7IB/uL5Ro=;
 b=NijnwCAOmsCb2aBVRKlNwgmrQotpLKDdSWVvypG6iEl9ysVLEUa9ZnkMttcIhl4L74
 XdqMa01kqAfV+e+hflv2pda81/Yfn2Y85LdAbFz+Qz4qA5uH0m7Ez6t/42wQectA36mO
 pP1G9m7RUHiuB5D7l91GegxJqFR8y/rl8hAlRoJekdUaAiyxFTEMIpvYYbNYykYZjF0K
 Nw3MR171eAQK8n6l0dJbQvTN4KantfBGlZkOcgXPt1uoC0k/aQyJW4wtIjvPds2w29B2
 46xHPKf8u3e76Aimf5zPVugS0Q0u1bPoAgwXlbMRlmHEgXbiNnQwVuyDlDSKr2WnCgOx
 Dsxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=/tLZJac8Ffn37A7WxCGBPX2NFTEQpF30SJ7IB/uL5Ro=;
 b=DPG5ZMzg6SG44vv9csbdMPiXBWPVeu3hCabXFx4B1D8a+ZqESm3A/Mx/inugjOIq7k
 FEAeZ6Dpwc05mR2TbsS5Yv0pylgE3o1MlxDtB7Yneed10rDbfUXTVh6WEJi5oqsyRtvc
 qRPVhsLjXWAmOL+qLhhHLNbe1P1Ek1HDfBcAwPCpA+iHPFggKNPeDsrTv3T7RHW0e43Q
 C4GyflJTQr4DwGX+Xo49wOMaLSSGoUWba78ENoo1owo2jiCXAm7KIN+d4kX6++fVddth
 M9yPDIwPzIXiird1cCk+jeP5rEeDrq9AXV64LLI3QHkPe1UAzOhFJa1X0O8djb5ga7c+
 mNSg==
X-Gm-Message-State: AOAM5308SNdXew0KhEwhxL1ewxwvbnSKX7X1FCQq+hwFAlcoDp2xyNOD
 jFY9GtECwT6UOv3myAb5rXcQgpnhUBJMEg==
X-Google-Smtp-Source: ABdhPJwmG5aDiBjtSY30e1R53S/Hb5Hzen2pnlQWJLzC7uPefi8m2TpdWkdwfom27BaXGNQ8kIl7Kw==
X-Received: by 2002:a17:902:c3c9:b029:d1:e5e7:bdd9 with SMTP id
 j9-20020a170902c3c9b02900d1e5e7bdd9mr681699plj.57.1601058907590; 
 Fri, 25 Sep 2020 11:35:07 -0700 (PDT)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id r16sm2554546pjo.19.2020.09.25.11.35.02
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 25 Sep 2020 11:35:07 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: gregkh@linuxfoundation.org, mchehab@kernel.org, hverkuil@xs4all.nl,
 laurent.pinchart@ideasonboard.com
Subject: [PATCH RFT/RFC v2 39/47] staging: media: zoran: enable makefile
Date: Fri, 25 Sep 2020 18:30:49 +0000
Message-Id: <1601058657-14042-40-git-send-email-clabbe@baylibre.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1601058657-14042-1-git-send-email-clabbe@baylibre.com>
References: <1601058657-14042-1-git-send-email-clabbe@baylibre.com>
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
Cc: devel@driverdev.osuosl.org, Corentin Labbe <clabbe@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch enables compilation of the zoran driver.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/staging/media/Makefile | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/media/Makefile b/drivers/staging/media/Makefile
index 25910221b100..965a8b0e6cf2 100644
--- a/drivers/staging/media/Makefile
+++ b/drivers/staging/media/Makefile
@@ -12,3 +12,4 @@ obj-$(CONFIG_VIDEO_HANTRO)	+= hantro/
 obj-$(CONFIG_VIDEO_IPU3_IMGU)	+= ipu3/
 obj-$(CONFIG_PHY_ROCKCHIP_DPHY_RX0)	+= phy-rockchip-dphy-rx0/
 obj-$(CONFIG_VIDEO_ROCKCHIP_ISP1)	+= rkisp1/
+obj-$(CONFIG_VIDEO_ZORAN)	+= zoran/
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
