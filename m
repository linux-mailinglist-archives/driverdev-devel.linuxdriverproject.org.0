Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F68C1A4C7
	for <lists+driverdev-devel@lfdr.de>; Fri, 10 May 2019 23:50:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 4E1A831393;
	Fri, 10 May 2019 21:50:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0pcGTZWjQ-pj; Fri, 10 May 2019 21:50:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 1FFAF31302;
	Fri, 10 May 2019 21:50:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6FEF91BF28F
 for <devel@linuxdriverproject.org>; Fri, 10 May 2019 21:50:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 6CDDB873B8
 for <devel@linuxdriverproject.org>; Fri, 10 May 2019 21:50:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id l21-d6MZ83rH for <devel@linuxdriverproject.org>;
 Fri, 10 May 2019 21:50:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 33E8887324
 for <devel@driverdev.osuosl.org>; Fri, 10 May 2019 21:50:25 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id v80so3896344pfa.3
 for <devel@driverdev.osuosl.org>; Fri, 10 May 2019 14:50:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=ILFENIjP3pNWcBKSRP9eS47C60iumECdMiBouSjU6so=;
 b=I8EBxrb4hQF/HSjVAZ0eX7cqdImmzwpA3qZcWlY5J2qRLntWR6PFM5K78S3hQJZfJS
 kxG157XHFOBnJa/z2didiEjDqhpbMxmPCHOuUo7T2HCmcNED9Z9IKsopKIrbLIHxXNJz
 ILpQQs1NFcRsLNrJy1iTllpA2zyb2LQ/B8bTQaqK5C2GwbaxTk52zsz2A65Ms7ORJnVS
 tf+2X8dszuwdO/2iTA+QIxc441zuMjN9umjxNCZZeSoDzQpkK5hqe5q3hrPT9r1Pa9B6
 Fz+kIRQilBs0OWeOwyp0ac9tHtav93sXvMT/u8+CYvwPW8MgsIhu5tF5vvL5TTnAad2x
 hTww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=ILFENIjP3pNWcBKSRP9eS47C60iumECdMiBouSjU6so=;
 b=Sf3Jq4K0c57GrKp6GZy83TeGXx3wFtpStujnk7tf5RSGCBII3UfoKI/+7U8gjkV20v
 d/gh3ukxZAvI052IV+0baD7djZKZRlRGq9LZIqQWUObUPD/SWVFNUi8kqDQtaBNhhxke
 bYanUc9f3GM3SkbJtBWnwPELbj6qB4+yJihKpwRf5jr6UTWDPI8eBFt8gKn+ZkQxpq76
 25RwqhFjt0Qtywcnx3yOyJdi7cYILl/bpxLNq46sQUiq2a8fUUPpQ70pBNRg2SO9ShfB
 RSJVvd2Ws8CJ37EAs4bUt7io2UCjqH3ZXfqTv4krGRnA4LMGAcd+5W1t+xL6P3zPZPjW
 85bw==
X-Gm-Message-State: APjAAAVSlE7NfZzB6JvpyYqg+q00Ox+/s7Z6sN3DbQH2DfS+1GHid868
 KyIFySRt2VybJg2emQ6cydM=
X-Google-Smtp-Source: APXvYqzaJ6rfIHRoopXu6KSUaSoTGT0Dcukd0y1BznTi/uh/wLgpQfhBydkA1OoqzeaoXG8sz0DNLA==
X-Received: by 2002:a65:500d:: with SMTP id f13mr17052699pgo.250.1557525024766; 
 Fri, 10 May 2019 14:50:24 -0700 (PDT)
Received: from majic.sklembedded.com (c-73-202-231-77.hsd1.ca.comcast.net.
 [73.202.231.77])
 by smtp.googlemail.com with ESMTPSA id e14sm1524108pff.60.2019.05.10.14.50.23
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 10 May 2019 14:50:23 -0700 (PDT)
From: Steve Longerbeam <slongerbeam@gmail.com>
To: linux-media@vger.kernel.org
Subject: [PATCH v5 1/9] Revert "media: staging/imx: add media device to
 capture register"
Date: Fri, 10 May 2019 14:50:04 -0700
Message-Id: <20190510215012.13881-2-slongerbeam@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190510215012.13881-1-slongerbeam@gmail.com>
References: <20190510215012.13881-1-slongerbeam@gmail.com>
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
Cc: "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 open list <linux-kernel@vger.kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Steve Longerbeam <slongerbeam@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The imx6-specific subdevs that register a capture device will no
longer hold a reference to the media device, so this commit must be
reverted.

This reverts commit 16204b8a1c1af77725533b77936e6c73953486ae.

Signed-off-by: Steve Longerbeam <slongerbeam@gmail.com>
---
 drivers/staging/media/imx/imx-ic-prpencvf.c   | 2 +-
 drivers/staging/media/imx/imx-media-capture.c | 6 +++---
 drivers/staging/media/imx/imx-media-csi.c     | 2 +-
 drivers/staging/media/imx/imx-media.h         | 3 +--
 drivers/staging/media/imx/imx7-media-csi.c    | 2 +-
 5 files changed, 7 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/media/imx/imx-ic-prpencvf.c b/drivers/staging/media/imx/imx-ic-prpencvf.c
index 3ca1422f6154..5c8e6ad8c025 100644
--- a/drivers/staging/media/imx/imx-ic-prpencvf.c
+++ b/drivers/staging/media/imx/imx-ic-prpencvf.c
@@ -1270,7 +1270,7 @@ static int prp_registered(struct v4l2_subdev *sd)
 	if (ret)
 		return ret;
 
-	ret = imx_media_capture_device_register(priv->md, priv->vdev);
+	ret = imx_media_capture_device_register(priv->vdev);
 	if (ret)
 		return ret;
 
diff --git a/drivers/staging/media/imx/imx-media-capture.c b/drivers/staging/media/imx/imx-media-capture.c
index 7688238a3396..9703c85b19c4 100644
--- a/drivers/staging/media/imx/imx-media-capture.c
+++ b/drivers/staging/media/imx/imx-media-capture.c
@@ -706,8 +706,7 @@ void imx_media_capture_device_error(struct imx_media_video_dev *vdev)
 }
 EXPORT_SYMBOL_GPL(imx_media_capture_device_error);
 
-int imx_media_capture_device_register(struct imx_media_dev *md,
-				      struct imx_media_video_dev *vdev)
+int imx_media_capture_device_register(struct imx_media_video_dev *vdev)
 {
 	struct capture_priv *priv = to_capture_priv(vdev);
 	struct v4l2_subdev *sd = priv->src_sd;
@@ -716,7 +715,8 @@ int imx_media_capture_device_register(struct imx_media_dev *md,
 	struct v4l2_subdev_format fmt_src;
 	int ret;
 
-	priv->md = md;
+	/* get media device */
+	priv->md = dev_get_drvdata(sd->v4l2_dev->dev);
 
 	vfd->v4l2_dev = sd->v4l2_dev;
 
diff --git a/drivers/staging/media/imx/imx-media-csi.c b/drivers/staging/media/imx/imx-media-csi.c
index c33d714ed953..41965d8b56c4 100644
--- a/drivers/staging/media/imx/imx-media-csi.c
+++ b/drivers/staging/media/imx/imx-media-csi.c
@@ -1816,7 +1816,7 @@ static int csi_registered(struct v4l2_subdev *sd)
 	if (ret)
 		goto free_fim;
 
-	ret = imx_media_capture_device_register(priv->md, priv->vdev);
+	ret = imx_media_capture_device_register(priv->vdev);
 	if (ret)
 		goto free_fim;
 
diff --git a/drivers/staging/media/imx/imx-media.h b/drivers/staging/media/imx/imx-media.h
index fc5d969ded79..dd603a6b3a70 100644
--- a/drivers/staging/media/imx/imx-media.h
+++ b/drivers/staging/media/imx/imx-media.h
@@ -272,8 +272,7 @@ int imx_media_of_add_csi(struct imx_media_dev *imxmd,
 struct imx_media_video_dev *
 imx_media_capture_device_init(struct v4l2_subdev *src_sd, int pad);
 void imx_media_capture_device_remove(struct imx_media_video_dev *vdev);
-int imx_media_capture_device_register(struct imx_media_dev *md,
-				      struct imx_media_video_dev *vdev);
+int imx_media_capture_device_register(struct imx_media_video_dev *vdev);
 void imx_media_capture_device_unregister(struct imx_media_video_dev *vdev);
 struct imx_media_buffer *
 imx_media_capture_device_next_buf(struct imx_media_video_dev *vdev);
diff --git a/drivers/staging/media/imx/imx7-media-csi.c b/drivers/staging/media/imx/imx7-media-csi.c
index a708a0340eb1..18eb5d3ecf10 100644
--- a/drivers/staging/media/imx/imx7-media-csi.c
+++ b/drivers/staging/media/imx/imx7-media-csi.c
@@ -1126,7 +1126,7 @@ static int imx7_csi_registered(struct v4l2_subdev *sd)
 	if (ret < 0)
 		return ret;
 
-	ret = imx_media_capture_device_register(csi->imxmd, csi->vdev);
+	ret = imx_media_capture_device_register(csi->vdev);
 	if (ret < 0)
 		return ret;
 
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
