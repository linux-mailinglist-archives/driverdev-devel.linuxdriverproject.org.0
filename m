Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E113F6271
	for <lists+driverdev-devel@lfdr.de>; Sun, 10 Nov 2019 03:43:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id E449586B28;
	Sun, 10 Nov 2019 02:43:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QzAV+bNa4IeZ; Sun, 10 Nov 2019 02:43:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1150386A02;
	Sun, 10 Nov 2019 02:43:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3957C1BF5A5
 for <devel@linuxdriverproject.org>; Sun, 10 Nov 2019 02:43:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id EEFD786237
 for <devel@linuxdriverproject.org>; Sun, 10 Nov 2019 02:43:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YzyHaVo2K7Ds for <devel@linuxdriverproject.org>;
 Sun, 10 Nov 2019 02:43:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 391BB86207
 for <devel@driverdev.osuosl.org>; Sun, 10 Nov 2019 02:43:12 +0000 (UTC)
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 233B5222BE;
 Sun, 10 Nov 2019 02:43:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573353792;
 bh=tlbUosy2fq8Q/oWAJId8gRxFvS+jxOmsLcfyNhEtnSc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=0GO9r9TzM9xRZ6Yfb3EwtFaOcjcFnf4FvfgddpOj1nEP3Kf7+h02+u3YAxQcUcE6i
 +pqhiB0xKtzAt5lVGilb4FERVWkZdw6hmHnBvgNHh1wa6o6oMf7UvF8QI5RQQVfQDi
 ofNSLm6fGjtjqD3MiptFoZ9EONECXc+6H2mAMyvQ=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.19 092/191] media: imx: work around false-positive
 warning, again
Date: Sat,  9 Nov 2019 21:38:34 -0500
Message-Id: <20191110024013.29782-92-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191110024013.29782-1-sashal@kernel.org>
References: <20191110024013.29782-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
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
Cc: Sasha Levin <sashal@kernel.org>, devel@driverdev.osuosl.org,
 Arnd Bergmann <arnd@arndb.de>, Hans Verkuil <hans.verkuil@cisco.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Arnd Bergmann <arnd@arndb.de>

[ Upstream commit 8d1a4817cce1b15b4909f0e324a4f5af5952da67 ]

A warning that I thought to be solved by a previous patch of mine
has resurfaced with gcc-8:

media/imx/imx-media-csi.c: In function 'csi_link_validate':
media/imx/imx-media-csi.c:1025:20: error: 'upstream_ep' may be used uninitialized in this function [-Werror=maybe-uninitialized]
media/imx/imx-media-csi.c:1026:24: error: 'upstream_ep.bus_type' may be used uninitialized in this function [-Werror=maybe-uninitialized]
media/imx/imx-media-csi.c:127:19: error: 'upstream_ep.bus.parallel.bus_width' may be used uninitialized in this function [-Werror=maybe-uninitialized]
media/imx/imx-media-csi.c: In function 'csi_enum_mbus_code':
media/imx/imx-media-csi.c:132:9: error: '*((void *)&upstream_ep+12)' may be used uninitialized in this function [-Werror=maybe-uninitialized]
media/imx/imx-media-csi.c:132:48: error: 'upstream_ep.bus.parallel.bus_width' may be used uninitialized in this function [-Werror=maybe-uninitialized]

I spent some more time digging in this time, and think I have a better
fix, bailing out of the function that either initializes or errors
out here, which simplifies the code enough for gcc to figure out
what is going on. The earlier partial workaround can be removed now,
as the new workaround is better.

Fixes: 890f27693f2a ("media: imx: work around false-positive warning")

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Hans Verkuil <hans.verkuil@cisco.com>
Signed-off-by: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/staging/media/imx/imx-media-csi.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/media/imx/imx-media-csi.c b/drivers/staging/media/imx/imx-media-csi.c
index d17ce1fb4ef51..0f8fdc347091b 100644
--- a/drivers/staging/media/imx/imx-media-csi.c
+++ b/drivers/staging/media/imx/imx-media-csi.c
@@ -166,6 +166,9 @@ static int csi_get_upstream_endpoint(struct csi_priv *priv,
 	struct v4l2_subdev *sd;
 	struct media_pad *pad;
 
+	if (!IS_ENABLED(CONFIG_OF))
+		return -ENXIO;
+
 	if (!priv->src_sd)
 		return -EPIPE;
 
@@ -1072,7 +1075,7 @@ static int csi_link_validate(struct v4l2_subdev *sd,
 			     struct v4l2_subdev_format *sink_fmt)
 {
 	struct csi_priv *priv = v4l2_get_subdevdata(sd);
-	struct v4l2_fwnode_endpoint upstream_ep = {};
+	struct v4l2_fwnode_endpoint upstream_ep;
 	bool is_csi2;
 	int ret;
 
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
