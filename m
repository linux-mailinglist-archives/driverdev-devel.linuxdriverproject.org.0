Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 43E27279149
	for <lists+driverdev-devel@lfdr.de>; Fri, 25 Sep 2020 21:03:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C2FBC86B1F;
	Fri, 25 Sep 2020 19:03:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id X6vqAvDHniIu; Fri, 25 Sep 2020 19:03:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id ADD7D86C1C;
	Fri, 25 Sep 2020 19:03:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id F12A11BF330
 for <devel@linuxdriverproject.org>; Fri, 25 Sep 2020 19:03:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D8C032E178
 for <devel@linuxdriverproject.org>; Fri, 25 Sep 2020 19:03:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NQDbcSe495OG for <devel@linuxdriverproject.org>;
 Fri, 25 Sep 2020 19:03:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f194.google.com (mail-oi1-f194.google.com
 [209.85.167.194])
 by silver.osuosl.org (Postfix) with ESMTPS id B2AA12E176
 for <devel@driverdev.osuosl.org>; Fri, 25 Sep 2020 19:03:37 +0000 (UTC)
Received: by mail-oi1-f194.google.com with SMTP id c13so3853491oiy.6
 for <devel@driverdev.osuosl.org>; Fri, 25 Sep 2020 12:03:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=z3aAxPMl4vXGO6SQG5uOhkRvPzoZ7Ff2bs8SM/RvFA4=;
 b=gpDRDw5C0YiK25MSEqsXxy3no9XMDsRhptDJTUFc6XaXxK0+tJIYoIIhzlBjQNARQa
 m78mhqSgDjB8zPTFTQ8ivqNprTMg8hb/iJwy6BWdj+fCi+kGQ01r4HjiaIhoOA+GKZqy
 y2OA5c1fkAnYt/avmNUHA3DmWRlKLK/HvmsCVZGKf2xE7C4pwKRpaEt85EKRkYQNaJqh
 LR4faHgXxTiDHHx5dWcUf08EuKteVEE9inINjKKP8MOBC0C4Saf7NqAhjGKy+FuOI7f9
 zIaHOMYb43uml+OSfJKlBmstylb5voz44T8Qtv7B8RKapmtJ59tNcxKOejv7Q/x0RjPe
 GWwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=z3aAxPMl4vXGO6SQG5uOhkRvPzoZ7Ff2bs8SM/RvFA4=;
 b=iw0bZXR5Fw5DY9nvTvsHjX0wB3tGzv6G2u2y+GdrxKfL5HKPJwUjUAzUo/q/XIo19R
 cMqt8xy1Y+bLmiJP6tSrvnndazpAo+QAG5fSn+3OoAWnxalKIP+Z7VAoFmAE9kGq1dOQ
 5W+GaVHq0e4JhEr2X4OgzNW21o2vdm4JTsw9UXrXwGrI6josK2Z01d1baMgBVfpXy+ik
 buFT2ziF5eK31ppj4hnRvgf1s7lHFha4hlr8xBNVx5MCHHFcmclGpatdJzcF47udhZ+X
 kZOBTk0MX1dVD892H4+ehhfy0cGNqS2MSKrcxmJXbpVoHHKewgWkHGhSTh185vEfJLDr
 NViQ==
X-Gm-Message-State: AOAM533JdGz3h94Fw7rNIu7S9//2RCdmYWKUO8H1i7b9D3o/PKI9/X/J
 IPv77P6BGk+3eS11aSwvjCfiW0eGj+fCkg==
X-Google-Smtp-Source: ABdhPJxSiNc6igRsZSi+sSwsmRMZbrWk5a0Qvj/50ImCNIuOapDp8w29AOIdNNMtiXNgMT0gPV7h7A==
X-Received: by 2002:a17:90a:6741:: with SMTP id c1mr824105pjm.6.1601058825347; 
 Fri, 25 Sep 2020 11:33:45 -0700 (PDT)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id r16sm2554546pjo.19.2020.09.25.11.33.40
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 25 Sep 2020 11:33:44 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: gregkh@linuxfoundation.org, mchehab@kernel.org, hverkuil@xs4all.nl,
 laurent.pinchart@ideasonboard.com
Subject: [PATCH RFT/RFC v2 25/47] staging: media: zoran: zoran does not
 support STD_ALL
Date: Fri, 25 Sep 2020 18:30:35 +0000
Message-Id: <1601058657-14042-26-git-send-email-clabbe@baylibre.com>
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

In fact, zoran does not support V4L2_STD_ALL, so let's enumerate what we
support.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/staging/media/zoran/zoran_driver.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/zoran/zoran_driver.c b/drivers/staging/media/zoran/zoran_driver.c
index 858e0910884c..60bbc8235cff 100644
--- a/drivers/staging/media/zoran/zoran_driver.c
+++ b/drivers/staging/media/zoran/zoran_driver.c
@@ -1765,7 +1765,7 @@ static int zoran_enum_input(struct file *file, void *__fh,
 
 	strscpy(inp->name, zr->card.input[inp->index].name, sizeof(inp->name));
 	inp->type = V4L2_INPUT_TYPE_CAMERA;
-	inp->std = V4L2_STD_ALL;
+	inp->std = V4L2_STD_NTSC | V4L2_STD_PAL | V4L2_STD_SECAM;
 
 	/* Get status of video decoder */
 	decoder_call(zr, video, g_input_status, &inp->status);
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
