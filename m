Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB9AC27914D
	for <lists+driverdev-devel@lfdr.de>; Fri, 25 Sep 2020 21:04:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9E8AC87653;
	Fri, 25 Sep 2020 19:04:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IgQxe0XnbCuu; Fri, 25 Sep 2020 19:04:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 172AE87645;
	Fri, 25 Sep 2020 19:04:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 898BD1BF9C1
 for <devel@linuxdriverproject.org>; Fri, 25 Sep 2020 19:04:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 869BF87640
 for <devel@linuxdriverproject.org>; Fri, 25 Sep 2020 19:04:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hxWw1SWQDWKd for <devel@linuxdriverproject.org>;
 Fri, 25 Sep 2020 19:04:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C3A1187638
 for <devel@driverdev.osuosl.org>; Fri, 25 Sep 2020 19:04:46 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id z19so4080113pfn.8
 for <devel@driverdev.osuosl.org>; Fri, 25 Sep 2020 12:04:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=1AqNA6Ddv0jhYAlzZ0w4re+NLjmh8IGHc11oAfYNMWM=;
 b=Nd2nlHnpPaoMda3Y5gXvpvu8UpRoRw/Xs9yncAf3Bjz1NAzElBiMD5WdSO0LZi4wvd
 nBQ/o/Hic1I9B5WOf6t2aN7KM3WLeoxJtTyQbJ6ZtO2+4MBexWDD/NGsnSW+Tv5rYxDJ
 1k0Z7uzvK8HPaAhELeI7WQnh5u1ueL/DFYQIdqK6s+HM936wh676M0UYa/YpIv4W57xU
 iXENAraKyy4zp3xZpu6fswwUynAMQ3fIn1CUf9SDkvVX14LYuP5+MbWH+6o5XjexwMGB
 YTgh4Kuc+9tT0JRti/Vb7tYLx/k1VeknNCSyrF4R54Vm2GdJKkN6dHTx5qw5nYS4OSAT
 sxqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=1AqNA6Ddv0jhYAlzZ0w4re+NLjmh8IGHc11oAfYNMWM=;
 b=Mj0XkGWN27t0qVQwlhTJZRmSv4SZkaqIEBXAZPRuUey+sCX3CpdcGbhq8BDq1VAH+M
 u5621+0gcd1xTLtD+mhRvVTJkx0RHA5Hbo1Kuvzc7neYXfIK/oInoUhTTUG4J61TxjRo
 gZUHx8YTyjs237ypoLZKd6aEd7HGQxNBsfWzqiZL9qv86WBhhzHH0NsTkqOC+4yJM1NM
 6TzrRHfz1brxeu24G7gbkvVMIISQ0s1xe8K9P1ItIw/GR/XVdiFzcVuSsCYInsqy3Ncs
 pPveLW55fxBnxi8RtCrQ1eGdbKdAzlKJtF0vFKD55xUGDrNJTTjPC1PvAzcS+1kTRZWt
 rpRA==
X-Gm-Message-State: AOAM531vKnQMZkwo9J28HzbJUbYSAC+Rnts92aiQL0dANh7kRObueuJA
 XYBPiuw/vTWwkcBws0MhpijcrWohZEnvTg==
X-Google-Smtp-Source: ABdhPJxebZnpULsBj+4SHyWr9pLV/nPjkPS83LZyTFDlJodhTbdBjsGLwz+lff17+TOhBl109/wi3Q==
X-Received: by 2002:a17:902:9041:b029:d0:cc02:8540 with SMTP id
 w1-20020a1709029041b02900d0cc028540mr644587plz.41.1601058919382; 
 Fri, 25 Sep 2020 11:35:19 -0700 (PDT)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id r16sm2554546pjo.19.2020.09.25.11.35.14
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 25 Sep 2020 11:35:18 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: gregkh@linuxfoundation.org, mchehab@kernel.org, hverkuil@xs4all.nl,
 laurent.pinchart@ideasonboard.com
Subject: [PATCH RFT/RFC v2 41/47] staging: media: zoran: add vidioc_g_parm
Date: Fri, 25 Sep 2020 18:30:51 +0000
Message-Id: <1601058657-14042-42-git-send-email-clabbe@baylibre.com>
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

Adding vidioc_g_parm made v4l compliance happy.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/staging/media/zoran/zoran_driver.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/staging/media/zoran/zoran_driver.c b/drivers/staging/media/zoran/zoran_driver.c
index bcbe2c78ea16..5dacbeac790b 100644
--- a/drivers/staging/media/zoran/zoran_driver.c
+++ b/drivers/staging/media/zoran/zoran_driver.c
@@ -2137,6 +2137,14 @@ static int zoran_mmap(struct file *file, struct vm_area_struct *vma)
 	return res;
 }
 
+static int zoran_g_parm(struct file *file, void *priv, struct v4l2_streamparm *parm)
+{
+	if (parm->type != V4L2_BUF_TYPE_VIDEO_CAPTURE)
+		return -EINVAL;
+
+	return 0;
+}
+
 /*
  * Output is disabled temporarily
  * Zoran is picky about jpeg data it accepts. At least it seems to unsupport COM and APPn.
@@ -2144,6 +2152,7 @@ static int zoran_mmap(struct file *file, struct vm_area_struct *vma)
  */
 static const struct v4l2_ioctl_ops zoran_ioctl_ops = {
 	.vidioc_querycap		    = zoran_querycap,
+	.vidioc_g_parm			    = zoran_g_parm,
 	.vidioc_s_selection		    = zoran_s_selection,
 	.vidioc_g_selection		    = zoran_g_selection,
 	.vidioc_enum_input		    = zoran_enum_input,
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
