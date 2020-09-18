Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 47A4926EB1E
	for <lists+driverdev-devel@lfdr.de>; Fri, 18 Sep 2020 04:04:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id CEDDF870C1;
	Fri, 18 Sep 2020 02:04:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kbTTc4Ox-S89; Fri, 18 Sep 2020 02:04:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id B74CE871E2;
	Fri, 18 Sep 2020 02:04:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8659B1BF300
 for <devel@linuxdriverproject.org>; Fri, 18 Sep 2020 02:03:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7CF5A8771C
 for <devel@linuxdriverproject.org>; Fri, 18 Sep 2020 02:03:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8RRwmhJcOg2L for <devel@linuxdriverproject.org>;
 Fri, 18 Sep 2020 02:03:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0B08587559
 for <devel@driverdev.osuosl.org>; Fri, 18 Sep 2020 02:03:59 +0000 (UTC)
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5ED052388A;
 Fri, 18 Sep 2020 02:03:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1600394638;
 bh=rAmBplspFq23pZd+j04CIg22Biu9ygtI+X1BwyqHbQc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=xDS9/NRrKr9RamaYcMoYYf4sa4K734H1JD4yW2ygrQ/IDHsJ1prCULFnt5LfdTzpV
 TXyDjvxeVH8qSgNfMHzzwJgB1IoblHJ/PYFV436Kv6pLpfyPRRB/opp1mHTmvZz0qY
 PckV6FckO/2ae0xVPR/8lNq8qcC7yRXs5am4kPDU=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 137/330] media: staging/imx: Missing assignment in
 imx_media_capture_device_register()
Date: Thu, 17 Sep 2020 21:57:57 -0400
Message-Id: <20200918020110.2063155-137-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200918020110.2063155-1-sashal@kernel.org>
References: <20200918020110.2063155-1-sashal@kernel.org>
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
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Steve Longerbeam <slongerbeam@gmail.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Dan Carpenter <dan.carpenter@oracle.com>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Dan Carpenter <dan.carpenter@oracle.com>

[ Upstream commit ef0ed05dcef8a74178a8b480cce23a377b1de2b8 ]

There was supposed to be a "ret = " assignment here, otherwise the
error handling on the next line won't work.

Fixes: 64b5a49df486 ("[media] media: imx: Add Capture Device Interface")
Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
Reviewed-by: Steve Longerbeam <slongerbeam@gmail.com>
Signed-off-by: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/staging/media/imx/imx-media-capture.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/imx/imx-media-capture.c b/drivers/staging/media/imx/imx-media-capture.c
index 46576e32581f0..d151cd6d31884 100644
--- a/drivers/staging/media/imx/imx-media-capture.c
+++ b/drivers/staging/media/imx/imx-media-capture.c
@@ -785,7 +785,7 @@ int imx_media_capture_device_register(struct imx_media_video_dev *vdev)
 	/* setup default format */
 	fmt_src.pad = priv->src_sd_pad;
 	fmt_src.which = V4L2_SUBDEV_FORMAT_ACTIVE;
-	v4l2_subdev_call(sd, pad, get_fmt, NULL, &fmt_src);
+	ret = v4l2_subdev_call(sd, pad, get_fmt, NULL, &fmt_src);
 	if (ret) {
 		v4l2_err(sd, "failed to get src_sd format\n");
 		goto unreg;
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
