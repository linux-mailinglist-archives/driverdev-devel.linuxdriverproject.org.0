Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AA14B2790E2
	for <lists+driverdev-devel@lfdr.de>; Fri, 25 Sep 2020 20:39:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2A3062E189;
	Fri, 25 Sep 2020 18:39:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id J-1+klH3QYhl; Fri, 25 Sep 2020 18:39:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 6263B2E17B;
	Fri, 25 Sep 2020 18:39:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 979751BF330
 for <devel@linuxdriverproject.org>; Fri, 25 Sep 2020 18:39:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 93DF02E176
 for <devel@linuxdriverproject.org>; Fri, 25 Sep 2020 18:39:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sHyuIL75e18P for <devel@linuxdriverproject.org>;
 Fri, 25 Sep 2020 18:39:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by silver.osuosl.org (Postfix) with ESMTPS id 556BB2E165
 for <devel@driverdev.osuosl.org>; Fri, 25 Sep 2020 18:39:50 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id k13so4044742pfg.1
 for <devel@driverdev.osuosl.org>; Fri, 25 Sep 2020 11:39:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=lKdrItijlZnmGeseIFi2VkKxHr1iShcVRw2+QbxzHmw=;
 b=gOvfZcx12dq41X1Rm1set4/1fqU/R/no1spPF14GnvJn/Em2ZGHjAQEksNrfx47rd1
 p5ELKy9GLseLoBi2GhcC3MwO2kRH3Kd5bk9p037F2ARKlaphxz1fDLO+CAAH225VfsxW
 84kmBVsUO2f6+4N7Glq2I1FhxUkq9kbeLMQcL4KykolqR2YMS5hd06yAOWInBYnI7w3u
 Ijq5q1VJC0ynOHaumO5FE+Db4aoOeJEZfBzX/EgEzaZ/usovIql38kkWXb5kC25ZCljk
 HdA8RvSEe+BdJ8uHCcT8LLb3FgHJdliSaCSLIDExE+9k5SYJYiLLirls705GX67hARLq
 RqrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=lKdrItijlZnmGeseIFi2VkKxHr1iShcVRw2+QbxzHmw=;
 b=Jrd3VC/1+YNwD9guhHxsA0+65qjq2AzTfxsGNXRJAn9sTa5bVQROknlN39XsW9GBa1
 ioskfoOuqc6C+zelQ/8Hhpevi4NwaZ8lznAqV4EK2z7CrQHts7RBKf6XIb3maXAuInRB
 1GjfQOEdcQACrH+UO0KiXpw/GBsW0789AwvCoNyXJBYxTyU720WUooccNXhzblWjtaJZ
 4FT9qgphp3S2l5lkrZMCR3x2vZrROVckht1g3a/ffqeMC6Vf/9c7HgK/y30ywgfDfuxO
 oyDlgUB0JBNy5qwt8gU1m4lKmf9j3Cb5EjVsmqk4Y/sYYozefrmzDgg34frj33DJZ2+/
 /0YQ==
X-Gm-Message-State: AOAM531HJe/ldqsi7+sYmz+UOdYhPSdsxPcjsMhS4tkUyD3gtUdMtodK
 wry3IXKXKCdGrceO1KCZLdu5O0lkwVfNfw==
X-Google-Smtp-Source: ABdhPJzpAN76YvWnZ5z1/F/5gwsjI/ni6RnJnTr8rUTsp+CuErYBZQfwWtgeTTWUdV/TYZXaudzjzQ==
X-Received: by 2002:a17:902:1:b029:d2:5631:d975 with SMTP id
 1-20020a1709020001b02900d25631d975mr746279pla.20.1601058801734; 
 Fri, 25 Sep 2020 11:33:21 -0700 (PDT)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id r16sm2554546pjo.19.2020.09.25.11.33.16
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 25 Sep 2020 11:33:21 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: gregkh@linuxfoundation.org, mchehab@kernel.org, hverkuil@xs4all.nl,
 laurent.pinchart@ideasonboard.com
Subject: [PATCH RFT/RFC v2 21/47] staging: media: zoran: Change
 zoran_v4l_set_format parameter from zoran_fh to zoran
Date: Fri, 25 Sep 2020 18:30:31 +0000
Message-Id: <1601058657-14042-22-git-send-email-clabbe@baylibre.com>
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

We need to get rid of zoran_fh, so let's change function arguments.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/staging/media/zoran/zoran_driver.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/media/zoran/zoran_driver.c b/drivers/staging/media/zoran/zoran_driver.c
index 518ba19e1e0a..db85978a2893 100644
--- a/drivers/staging/media/zoran/zoran_driver.c
+++ b/drivers/staging/media/zoran/zoran_driver.c
@@ -401,11 +401,9 @@ static void jpg_fbuffer_free(struct zoran_fh *fh)
 /*
  *   V4L Buffer grabbing
  */
-
-static int zoran_v4l_set_format(struct zoran_fh *fh, int width, int height,
+static int zoran_v4l_set_format(struct zoran *zr, int width, int height,
 				const struct zoran_format *format)
 {
-	struct zoran *zr = fh->zr;
 	int bpp;
 
 	/* Check size and format of the grab wanted */
@@ -1671,7 +1669,7 @@ static int zoran_s_fmt_vid_cap(struct file *file, void *__fh,
 
 	map_mode_raw(fh);
 
-	res = zoran_v4l_set_format(fh, fmt->fmt.pix.width, fmt->fmt.pix.height,
+	res = zoran_v4l_set_format(zr, fmt->fmt.pix.width, fmt->fmt.pix.height,
 				   &zoran_formats[i]);
 	if (res)
 		return res;
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
