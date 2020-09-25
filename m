Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B4ACE2790EB
	for <lists+driverdev-devel@lfdr.de>; Fri, 25 Sep 2020 20:41:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5AA6D86E61;
	Fri, 25 Sep 2020 18:40:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EX19vgr-BTBl; Fri, 25 Sep 2020 18:40:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 795B786E56;
	Fri, 25 Sep 2020 18:40:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 212301BF330
 for <devel@linuxdriverproject.org>; Fri, 25 Sep 2020 18:40:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1E3F686237
 for <devel@linuxdriverproject.org>; Fri, 25 Sep 2020 18:40:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3PbGX4YcXekh for <devel@linuxdriverproject.org>;
 Fri, 25 Sep 2020 18:40:55 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9C9878610F
 for <devel@driverdev.osuosl.org>; Fri, 25 Sep 2020 18:40:55 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id 5so3331002pgf.5
 for <devel@driverdev.osuosl.org>; Fri, 25 Sep 2020 11:40:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Z2ehdJwTg//k76wOiQFxYa7TSjOY+fUe32PPFRAEB40=;
 b=Jc79CWO0HvaDRvbAGxsmInH8ME89szgSHjcyfeBoTv49SJDw/WX4YPUB70X4tKg1TW
 Rr3bijRVGrW2p4s1lQi7HlsFufo7gkxMRQ9tSHJKoz/CWgJSOSvWsAmX+ih1HtRjBqNI
 tFXOpCnzLANcCq+DPQMdxReXYEXPZRAb/yBMEpx7B9QfOXSUMyH5iy9GkZIKKY4HqTMl
 z+qRHUXG0ipdSXjR/CAZALIlvhKrQO+lDCSs2ebDlMvI/zIH+e2tZ1CQ5E9avzLIG3ME
 tuMx9Z3c1zc/xTyopDRkRLcN7t5UTXJMrCcDyHLRyuVCa99kcKYhX7pfTHYP2aoPFp+z
 gP6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Z2ehdJwTg//k76wOiQFxYa7TSjOY+fUe32PPFRAEB40=;
 b=TQFv0ESqpodknoekrND6kJ7zga4rexLnRtwnzcef2V+ANzB4UopB6rE6yepm1GzajD
 iZ8AUQQmtjvmkJUDlak1dgA8xGZ6z7kgRDynQ8gYNOVfTKz1byJmTbTCsV4D2H/qsBTm
 joOEzELo6b3u5N6Nf/N9lZal3oJ343bdHC3a4W1Q4eJLCM75Ig4s7frOtjCHWi7hauxV
 bDHrk9vaEhif6UGySR4BcAgpmguTPZOH8Uq6Xl2OxbFs0+Y2UFv6DwutgWs1SDBigNQa
 acBfGqXF8u6VamVCS8Gq3oMHh4s3O+51Feu5x0DJLwxI4dNlQWXoUW0KHbmiWgAp4Sgw
 OvKQ==
X-Gm-Message-State: AOAM532udLJyPoyugCCugYVfPPJCxZOyHMNn/JK6UoaWRh3PEmRJNzWE
 CqQHfASbF3HC97lCPcvmMnlK7qvYDE07dQ==
X-Google-Smtp-Source: ABdhPJzK4DtJhq4rllF1jMZgn6R2vGmQSbmXkAuBOZxqQ/CRxfj+erIK5UhpPfxHIFEWfKcPVuBMUQ==
X-Received: by 2002:a63:c34b:: with SMTP id e11mr240955pgd.25.1601058883674;
 Fri, 25 Sep 2020 11:34:43 -0700 (PDT)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id r16sm2554546pjo.19.2020.09.25.11.34.38
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 25 Sep 2020 11:34:43 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: gregkh@linuxfoundation.org, mchehab@kernel.org, hverkuil@xs4all.nl,
 laurent.pinchart@ideasonboard.com
Subject: [PATCH RFT/RFC v2 35/47] staging: media: zoran: Add more check for
 compliance
Date: Fri, 25 Sep 2020 18:30:45 +0000
Message-Id: <1601058657-14042-36-git-send-email-clabbe@baylibre.com>
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

The zoran driver miss some sanity checks, and this made v4l compliance
happy.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/staging/media/zoran/zoran_driver.c | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/drivers/staging/media/zoran/zoran_driver.c b/drivers/staging/media/zoran/zoran_driver.c
index 60bbc8235cff..5ac832eca501 100644
--- a/drivers/staging/media/zoran/zoran_driver.c
+++ b/drivers/staging/media/zoran/zoran_driver.c
@@ -1092,6 +1092,11 @@ static int zoran_enum_fmt(struct zoran *zr, struct v4l2_fmtdesc *fmt, int flag)
 {
 	unsigned int num, i;
 
+	if (fmt->index >= ARRAY_SIZE(zoran_formats))
+		return -EINVAL;
+	if (fmt->type != V4L2_BUF_TYPE_VIDEO_CAPTURE)
+		return -EINVAL;
+
 	for (num = i = 0; i < NUM_FORMATS; i++) {
 		if (zoran_formats[i].flags & flag && num++ == fmt->index) {
 			strscpy(fmt->description, zoran_formats[i].name,
@@ -1255,6 +1260,12 @@ static int zoran_try_fmt_vid_cap(struct file *file, void *__fh,
 	if (i == NUM_FORMATS)
 		return -EINVAL;
 
+	fmt->fmt.pix.colorspace = zoran_formats[i].colorspace;
+	if (BUZ_MAX_HEIGHT < (fmt->fmt.pix.height * 2))
+		fmt->fmt.pix.field = V4L2_FIELD_INTERLACED;
+	else
+		fmt->fmt.pix.field = V4L2_FIELD_TOP;
+
 	bpp = DIV_ROUND_UP(zoran_formats[i].depth, 8);
 	v4l_bound_align_image(&fmt->fmt.pix.width, BUZ_MIN_WIDTH, BUZ_MAX_WIDTH, bpp == 2 ? 1 : 2,
 		&fmt->fmt.pix.height, BUZ_MIN_HEIGHT, BUZ_MAX_HEIGHT, 0, 0);
@@ -1283,6 +1294,9 @@ static int zoran_s_fmt_vid_out(struct file *file, void *__fh,
 		return res;
 	}
 
+	if (!fmt->fmt.pix.height || !fmt->fmt.pix.width)
+		return -EINVAL;
+
 	settings = zr->jpg_settings;
 
 	/* we actually need to set 'real' parameters now */
@@ -1872,6 +1886,9 @@ static int zoran_s_selection(struct file *file, void *__fh, struct v4l2_selectio
 	    sel->type != V4L2_BUF_TYPE_VIDEO_CAPTURE)
 		return -EINVAL;
 
+	if (!sel->r.width || !sel->r.height)
+		return -EINVAL;
+
 	if (sel->target != V4L2_SEL_TGT_CROP)
 		return -EINVAL;
 
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
