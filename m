Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DC672244A
	for <lists+driverdev-devel@lfdr.de>; Sat, 18 May 2019 19:39:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2E5C522C6B;
	Sat, 18 May 2019 17:39:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id h+O6AKuxDLZo; Sat, 18 May 2019 17:39:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 3311021FA8;
	Sat, 18 May 2019 17:39:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5C8181BF3E3
 for <devel@linuxdriverproject.org>; Sat, 18 May 2019 17:38:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 58B8F22767
 for <devel@linuxdriverproject.org>; Sat, 18 May 2019 17:38:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IAmTxx2C+ke8 for <devel@linuxdriverproject.org>;
 Sat, 18 May 2019 17:38:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by silver.osuosl.org (Postfix) with ESMTPS id C094721FA8
 for <devel@driverdev.osuosl.org>; Sat, 18 May 2019 17:38:58 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id t87so5209079pfa.2
 for <devel@driverdev.osuosl.org>; Sat, 18 May 2019 10:38:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=K1nkYGLmXxVZQrJhOHX5C3Yjum/GvkV8x/L+QphEw5Y=;
 b=VKIycHZ8mOTyhdoH7w67rLsEBUiN8FjSJtD8i98oTd0bVeMq1TDnxyqD+Tygrf5cox
 9RQ01OJDPB9SDuyvZoJiYiW9YK5caCd1M4OnP2jgDDehk5/UIlpfbguJZbhuf1H0wtpi
 7oneN1VrKDPSvo+EkvYw7LvLpp/41+8KiYYbaHPLa/DwrTg4Dw7ZHRafxwmsoXLrd3XM
 +zo7nFPrpU75JFHCRy/2iuZh0Vj9wcv+0NX+GBsjQE7UJXd+160+tZiOVYc7sBP2lOMk
 JcyKKbDq8LNU3STX2N0RYwfijfnAF3UAmCvNun6JT3NES8wxeZ56uXtr+IGco0xvP/qn
 8LWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=K1nkYGLmXxVZQrJhOHX5C3Yjum/GvkV8x/L+QphEw5Y=;
 b=a9DUhhdmD0iltHLnhtud7w1CZlFga0jiTViUUPHah7JA2bnSgYqHBSU5HL6eMxpwHH
 QsEK/cb2EYj2id0jKDwmNnAcZHVBmnttYk3dvk/xh7WQzJoiYHpVVaRTnt6iAQjiM5nh
 KS/vTjzTTNnz5vOykh1WWyLlrf30ApwYg1fF69ShlmZ2/okKmns740/lzEKeomxoXNmn
 xOgJb3E6iOSZ2Bw1v/GCVoVe7Bb1ynlnllXzFmaTFHqGEfp0aE7/cZeu5VSyEegp5YXI
 d445ZVUlHxlUQVymo/oxKNPsBXmcBVchB4cCdxca01cOvhd8+BWyypGfSiVN29Cn17/y
 nw/g==
X-Gm-Message-State: APjAAAXwu9jibwTQqAdQRERy4/8M2pvwQg9epD7vjPsj+Tty5ORNoFdo
 kkQnRPGUVhyjWgyE4TIS3sA=
X-Google-Smtp-Source: APXvYqzl9xVBK5tVB4brfCl3wCx/KY1AhgMnASNhuGFaPw+Hu5UPrOmG3gj5xYZHLy+UhgU9oGwz/Q==
X-Received: by 2002:a63:c5b:: with SMTP id 27mr13696567pgm.70.1558201138477;
 Sat, 18 May 2019 10:38:58 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.92.73])
 by smtp.gmail.com with ESMTPSA id y16sm23283514pfo.133.2019.05.18.10.38.54
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 18 May 2019 10:38:58 -0700 (PDT)
Date: Sat, 18 May 2019 23:08:52 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Steve Longerbeam <slongerbeam@gmail.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 NXP Linux Team <linux-imx@nxp.com>, linux-media@vger.kernel.org,
 devel@driverdev.osuosl.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] staging: media: imx: fix Unneeded variable: "ret". Return "0"
Message-ID: <20190518173852.GA1191@hari-Inspiron-1545>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

fix below warning reported by  coccichec

drivers/staging/media/imx/imx-media-capture.c:617:5-8: Unneeded
variable: "ret". Return "0" on line 630

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
---
 drivers/staging/media/imx/imx-media-capture.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/media/imx/imx-media-capture.c b/drivers/staging/media/imx/imx-media-capture.c
index 9430c83..b678857 100644
--- a/drivers/staging/media/imx/imx-media-capture.c
+++ b/drivers/staging/media/imx/imx-media-capture.c
@@ -614,7 +614,6 @@ static int capture_release(struct file *file)
 	struct capture_priv *priv = video_drvdata(file);
 	struct video_device *vfd = priv->vdev.vfd;
 	struct vb2_queue *vq = &priv->q;
-	int ret = 0;
 
 	mutex_lock(&priv->mutex);
 
@@ -627,7 +626,7 @@ static int capture_release(struct file *file)
 
 	v4l2_fh_release(file);
 	mutex_unlock(&priv->mutex);
-	return ret;
+	return 0;
 }
 
 static const struct v4l2_file_operations capture_fops = {
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
