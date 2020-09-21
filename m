Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 18FE727203D
	for <lists+driverdev-devel@lfdr.de>; Mon, 21 Sep 2020 12:21:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C0A7C86818;
	Mon, 21 Sep 2020 10:21:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IoSVl2UkItca; Mon, 21 Sep 2020 10:21:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0F6118686D;
	Mon, 21 Sep 2020 10:21:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 208AA1BF962
 for <devel@linuxdriverproject.org>; Mon, 21 Sep 2020 10:21:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 1ABCE871D6
 for <devel@linuxdriverproject.org>; Mon, 21 Sep 2020 10:21:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fQVfRsbDCt3p for <devel@linuxdriverproject.org>;
 Mon, 21 Sep 2020 10:21:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6A324871CA
 for <devel@driverdev.osuosl.org>; Mon, 21 Sep 2020 10:21:12 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id t10so12134530wrv.1
 for <devel@driverdev.osuosl.org>; Mon, 21 Sep 2020 03:21:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=/tLZJac8Ffn37A7WxCGBPX2NFTEQpF30SJ7IB/uL5Ro=;
 b=Lw9bQeNtWzONKIvulMFjqZHVSIBJ+YzkdscnghB6hFyde4iXLIzLYP1EH06krH95mx
 qWKW+RACGF499CYTQYQltWRp5KikOm05rdE4iWUWESguLaMIbqIQVQ/hXQffI+c887uJ
 e80o9Du+VecLUlF7azvUsuv5ZIMhZagcb+sN4uzNxipodcf4W+pHvU20pU86nrJRrV45
 +glL7EqH15veYuWY1d9TCz/Mkt3vlXIAbsBf05s1sqgIUC7BsamzrMUrYbN2lagI0idX
 +qOabI1hNMHz3JKC1YSr6GsuMrlqbhrpHJFszkVbVpPvX+Aa2wOp8/gxmk8UGYk7Im/f
 jpeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=/tLZJac8Ffn37A7WxCGBPX2NFTEQpF30SJ7IB/uL5Ro=;
 b=UCXvO7FPXIi6KIAZ5Yq0jR7u2O5cjtaeg19+tftdvsMLwosdZC8I3LoK37NuCtQrht
 j5RE8T5q6ubNRdRVfr2KWkgzvHwHb4hD7X1K67tsXmqnoMtZmnoNba+045j3rSNQ5mDg
 kaN38/LzAAYVwXag16xXw0VnV8wn43+rQ3rHnhV1wj0LTFGVeYWVw4ZT2dhyfpT8KyMv
 tVq3VpaVqwFq90ZGH5rtCW+dDiOvl/Uv0wclnh7LTbe1xmKAuAMQDj0HI9uXgwz777hb
 61JsvwjeUyhXJ7kV/wzPkqnBphxI8hTXXsNeRZy0NQraC5jXDIiO4FCA8/CcELiwTySy
 jhyQ==
X-Gm-Message-State: AOAM531nXqcu+AjhrASHIG9MPpKTrVj0mLbav196xIWm3ikpHEghYS3p
 TihopS5kwf6X5SBNjM7N1RBe6g==
X-Google-Smtp-Source: ABdhPJwSumtffxKSLF97N4tc6ojqM+H7kM2XB8Kv/SA4FWEXUIxHjZRiLLW+NqoyuVtvuhn1JfNBQA==
X-Received: by 2002:a5d:668b:: with SMTP id l11mr50275532wru.89.1600683670944; 
 Mon, 21 Sep 2020 03:21:10 -0700 (PDT)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id l17sm18804629wme.11.2020.09.21.03.21.10
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 21 Sep 2020 03:21:10 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: gregkh@linuxfoundation.org, laurent.pinchart@skynet.be, mchehab@kernel.org
Subject: [PATCH RFT/RFC 41/49] staging: media: zoran: enable makefile
Date: Mon, 21 Sep 2020 10:20:16 +0000
Message-Id: <1600683624-5863-42-git-send-email-clabbe@baylibre.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1600683624-5863-1-git-send-email-clabbe@baylibre.com>
References: <1600683624-5863-1-git-send-email-clabbe@baylibre.com>
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
