Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ECE52790F2
	for <lists+driverdev-devel@lfdr.de>; Fri, 25 Sep 2020 20:42:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id AD8E686E61;
	Fri, 25 Sep 2020 18:42:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id L+vmgYMlvCdA; Fri, 25 Sep 2020 18:42:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9AE7B86E5A;
	Fri, 25 Sep 2020 18:42:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7D6791BF330
 for <devel@linuxdriverproject.org>; Fri, 25 Sep 2020 18:41:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 79FA986FC8
 for <devel@linuxdriverproject.org>; Fri, 25 Sep 2020 18:41:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aUk08cFpAKuA for <devel@linuxdriverproject.org>;
 Fri, 25 Sep 2020 18:41:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E4A4E873CE
 for <devel@driverdev.osuosl.org>; Fri, 25 Sep 2020 18:41:54 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id k8so4051131pfk.2
 for <devel@driverdev.osuosl.org>; Fri, 25 Sep 2020 11:41:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=E8mcvDoFTnrMID+Fg59QVFWhzXBawhWWjxD4oYrXL74=;
 b=0hNEIyH5dmP1qakbjwXSklloUzFSwF+rC8pVJg0etfvQj3TpibAoXghjD7h8r4opgl
 QZW9uazz2VbmkmNtOVY0ovmbLSqfk7w6uz437D/PwNC/9AN6eSyKcHjhrDRDnMTWDDBg
 hGObD6ZUaFbv7fZ7A63oDtRPz732rB1mmxeyDL7FK5YyryNymFhkm4VAVtuqRxhSiXVf
 5nB8haGUYzaerHL6jjHOZZRGvxuNb8SwxE48hzhVeh7Z0yZa4S2DI8KaOSbHM7cClmB5
 sSoF8ZATsHnKjjMe7GyV6nWLLWJGE49MBTB7w1zqlFWTzX9nwAu+YeJeo62/9b25D4Hm
 XHbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=E8mcvDoFTnrMID+Fg59QVFWhzXBawhWWjxD4oYrXL74=;
 b=NB9NezeFWOOvalmGIr5LBozWI78zrSvc7Fk0zw/nDMJvHcFOyXwwN4Mr1KcfVU2thL
 86NKdc9gVrhW+m0MFAUbVPn0WdtTwzZdYAounxTccdEXtWkVl0KAKxj9bCooolA/w9N7
 q+NMBPCSG0bhddFADUEhiwdsnBsVScZ3hzkSqUgYloshYr2tUlLKBrU9GE2d7wdJ4fVB
 LpTyKCCrbu5inIh1XL4QT/qFcJ/kvEswFe8ljC3qF8QAq7SeNJuF5aAzAxWgXcwHJqZL
 3qPT0nEYsLP6NHz1c2rZANzEcL8+r3JAIVMah9H+VhDiCoydl70hqcqOdeE+Q3+23Uhq
 eTBQ==
X-Gm-Message-State: AOAM532x+CGNLUNJdXoX8Lb6SGFXO/FUiJME/sp83e8zheid+iRDa5hs
 lujt6ODuQ1tZTp/awO22ShbL/sM7pS96zw==
X-Google-Smtp-Source: ABdhPJxkzGi9CvfwcloQIjaxYHzTc/wVwB9aCNk6ULy9jfhgQ2ldNr3DIN9/z+l2AoYxonOI/zWxlA==
X-Received: by 2002:a17:902:b682:b029:d2:4ca:281e with SMTP id
 c2-20020a170902b682b02900d204ca281emr719884pls.13.1601058936939; 
 Fri, 25 Sep 2020 11:35:36 -0700 (PDT)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id r16sm2554546pjo.19.2020.09.25.11.35.31
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 25 Sep 2020 11:35:36 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: gregkh@linuxfoundation.org, mchehab@kernel.org, hverkuil@xs4all.nl,
 laurent.pinchart@ideasonboard.com
Subject: [PATCH RFT/RFC v2 44/47] staging: media: zoran: fix some compliance
 test
Date: Fri, 25 Sep 2020 18:30:54 +0000
Message-Id: <1601058657-14042-45-git-send-email-clabbe@baylibre.com>
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

Add TODO for "TRY_FMT cannot handle an invalid pixelformat"

We need to set pixelformat in some case.
We should also handle some minimum requirement.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/staging/media/zoran/zoran_driver.c | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/media/zoran/zoran_driver.c b/drivers/staging/media/zoran/zoran_driver.c
index 021073ba08e6..ab9eec50abad 100644
--- a/drivers/staging/media/zoran/zoran_driver.c
+++ b/drivers/staging/media/zoran/zoran_driver.c
@@ -1217,9 +1217,12 @@ static int zoran_try_fmt_vid_cap(struct file *file, void *__fh,
 		if (zoran_formats[i].fourcc == fmt->fmt.pix.pixelformat)
 			break;
 
-	if (i == NUM_FORMATS)
+	if (i == NUM_FORMATS) {
+		/* TODO do not return here to fix the TRY_FMT cannot handle an invalid pixelformat*/
 		return -EINVAL;
+	}
 
+	fmt->fmt.pix.pixelformat = zoran_formats[i].fourcc;
 	fmt->fmt.pix.colorspace = zoran_formats[i].colorspace;
 	if (BUZ_MAX_HEIGHT < (fmt->fmt.pix.height * 2))
 		fmt->fmt.pix.field = V4L2_FIELD_INTERLACED;
@@ -1332,6 +1335,7 @@ static int zoran_s_fmt_vid_cap(struct file *file, void *__fh,
 	if (i == NUM_FORMATS) {
 		pci_err(zr->pci_dev, "VIDIOC_S_FMT - unknown/unsupported format 0x%x\n",
 			fmt->fmt.pix.pixelformat);
+		/* TODO do not return here to fix the TRY_FMT cannot handle an invalid pixelformat*/
 		return -EINVAL;
 	}
 
@@ -1341,10 +1345,16 @@ static int zoran_s_fmt_vid_cap(struct file *file, void *__fh,
 		res = -EBUSY;
 		return res;
 	}
+
+	fmt->fmt.pix.pixelformat = zoran_formats[i].fourcc;
 	if (fmt->fmt.pix.height > BUZ_MAX_HEIGHT)
 		fmt->fmt.pix.height = BUZ_MAX_HEIGHT;
 	if (fmt->fmt.pix.width > BUZ_MAX_WIDTH)
 		fmt->fmt.pix.width = BUZ_MAX_WIDTH;
+	if (fmt->fmt.pix.height < BUZ_MIN_HEIGHT)
+		fmt->fmt.pix.height = BUZ_MIN_HEIGHT;
+	if (fmt->fmt.pix.width < BUZ_MIN_WIDTH)
+		fmt->fmt.pix.width = BUZ_MIN_WIDTH;
 
 	map_mode_raw(fh);
 
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
