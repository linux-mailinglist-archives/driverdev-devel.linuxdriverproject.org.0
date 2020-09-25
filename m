Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B7BF2790D0
	for <lists+driverdev-devel@lfdr.de>; Fri, 25 Sep 2020 20:38:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3B67886E55;
	Fri, 25 Sep 2020 18:38:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7NrlSoBSd-9K; Fri, 25 Sep 2020 18:38:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7520286E59;
	Fri, 25 Sep 2020 18:38:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D5B421BF330
 for <devel@linuxdriverproject.org>; Fri, 25 Sep 2020 18:38:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id CF8D38763C
 for <devel@linuxdriverproject.org>; Fri, 25 Sep 2020 18:38:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MJ3WTkoNKEMX for <devel@linuxdriverproject.org>;
 Fri, 25 Sep 2020 18:38:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-il1-f195.google.com (mail-il1-f195.google.com
 [209.85.166.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 57B3487598
 for <devel@driverdev.osuosl.org>; Fri, 25 Sep 2020 18:38:09 +0000 (UTC)
Received: by mail-il1-f195.google.com with SMTP id x18so3292200ila.7
 for <devel@driverdev.osuosl.org>; Fri, 25 Sep 2020 11:38:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=ni9H5s6lxVysOmGHLIY+1loUeP0ntGh2bLjI55hkPSU=;
 b=p0/0MtqLxzqxOW14ixw7GaBTJjATN+e+GLL1347olTxePReRnfh1tj6bsa0ZhF+XgO
 G9PYqPZYFJj6KRpD2bEvZ4eu9CJq/rNeJQco5f1bJ1OirK2ZMYqOJMK11Wpx76/m0neU
 NdQOmaeRTuJj1gLLgi1P0lfrHImPZxOptzVpIy35dgtA6We12gdKGXEodCyTctYQnhYn
 kVTLpXF7mHPqIiW9g3fnHCTICUUmiJ/A/xyY1V9cOEFy8VA+88Yy57UA7IogGu4+lxzn
 1aYG6Px3+cSPAF4VaI4hXHIvztRtl4vliyEa84cj15a7zwE2h4cP8vvS9YE8ONVjlqlS
 fiYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=ni9H5s6lxVysOmGHLIY+1loUeP0ntGh2bLjI55hkPSU=;
 b=lCTCsP0kpYe0RKXEIWyWnQ4p68vfXV7Q4ZF2ec0CYs5V9woU2+aUemWDzvjnxVXwrE
 dEA+M0RdyaRVWwF74EjfoCHJUBbZoFJ2TTPGc46spYv1U9Lcok+ElOByW48/wK8Nw0Oh
 ch4YcHwplg54yHRYlQRKrnnX2HBcIu+WU/cAN0oqlHHExkjgz6pYM6iozVMqNPG0XooN
 eOGgUHolcYBiB8oHOpgds3LvORNOI3+TbEVYKxiiHRcMFeJvOeuvFwEb7Su2cm+0OPnR
 RxfOVjCtET6dI7oL++DrWYQFYi084Ji4siKZavZXEZATWzKsEZWH0HZlV/89+souF6sC
 cdJw==
X-Gm-Message-State: AOAM531ibPwTBB9x0b4qChQ+f3R+fLPYd40WkTlNj1NBz7YvySLBrHE3
 IhukhfwptctwnKUd3pGg87i0xm4I06kJWw==
X-Google-Smtp-Source: ABdhPJwHuivyD+GJ9o1HaKo+iLk9tCzpRj85MBSaa9JVJGl0b1r0krrJw+eVCwpsa9BsOGPTCgEWCA==
X-Received: by 2002:a63:fe03:: with SMTP id p3mr249218pgh.100.1601058754979;
 Fri, 25 Sep 2020 11:32:34 -0700 (PDT)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id r16sm2554546pjo.19.2020.09.25.11.32.29
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 25 Sep 2020 11:32:34 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: gregkh@linuxfoundation.org, mchehab@kernel.org, hverkuil@xs4all.nl,
 laurent.pinchart@ideasonboard.com
Subject: [PATCH RFT/RFC v2 13/47] staging: media: zoran: use VFL_TYPE_VIDEO
Date: Fri, 25 Sep 2020 18:30:23 +0000
Message-Id: <1601058657-14042-14-git-send-email-clabbe@baylibre.com>
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

The VFL_TYPE_GRABBER type was removed, so let's use the new type.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/staging/media/zoran/zoran_card.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/zoran/zoran_card.c b/drivers/staging/media/zoran/zoran_card.c
index 93a0817a3936..55315f67b3b9 100644
--- a/drivers/staging/media/zoran/zoran_card.c
+++ b/drivers/staging/media/zoran/zoran_card.c
@@ -962,7 +962,7 @@ static int zr36057_init(struct zoran *zr)
 	 * another day.
 	 */
 	zr->video_dev->vfl_dir = VFL_DIR_M2M;
-	err = video_register_device(zr->video_dev, VFL_TYPE_GRABBER, video_nr[zr->id]);
+	err = video_register_device(zr->video_dev, VFL_TYPE_VIDEO, video_nr[zr->id]);
 	if (err < 0)
 		goto exit_free;
 	video_set_drvdata(zr->video_dev, zr);
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
