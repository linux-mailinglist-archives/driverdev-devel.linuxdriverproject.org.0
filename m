Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C02D291268
	for <lists+driverdev-devel@lfdr.de>; Sat, 17 Oct 2020 16:29:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E73F5876D5;
	Sat, 17 Oct 2020 14:29:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PehfoBBvrRC5; Sat, 17 Oct 2020 14:29:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B8E27876CF;
	Sat, 17 Oct 2020 14:29:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E92FC1BF35A
 for <devel@linuxdriverproject.org>; Sat, 17 Oct 2020 14:29:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E4F7687813
 for <devel@linuxdriverproject.org>; Sat, 17 Oct 2020 14:29:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9I+kmnIRbD0I for <devel@linuxdriverproject.org>;
 Sat, 17 Oct 2020 14:29:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
 [209.85.128.66])
 by whitealder.osuosl.org (Postfix) with ESMTPS id EB292877FC
 for <devel@driverdev.osuosl.org>; Sat, 17 Oct 2020 14:29:35 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id d81so6193920wmc.1
 for <devel@driverdev.osuosl.org>; Sat, 17 Oct 2020 07:29:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=AhTAkXNg8my5roVt3jSaeXHe7VJ9U3uXiwwvjKdguwI=;
 b=u3bVkEeryu4yoyRBIK95E6ZpRNKQMDD3Dpa+7It6UOZs0KJtv1xLfLRcgEgwOHLRA+
 LeyVS5aCQ5QbUuHaJTQHgEKRFq+3AlSq7+XqB8tQoiaVrVZH7v7zbDmSmc/a0kZ2Rf4V
 19G7iMvIhTPaesN2/Obun7YkHweSRY3U6TybzDNz99CD0KvMl1t9AXn/7Lwi2Y+Lm/n4
 RycmodJiDE5PEExd0I/AJqrXP3WMWlPi1pOLplkT+YXKfUkOSn2rL2btGDWG6sqf0qRB
 qhQ+LGMa2LgULoz/3fe2XJ1VVQ10RA2pcDinSjeak0NEyO6g3qiwbM8uHMgoVsNvEeBb
 Lnwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=AhTAkXNg8my5roVt3jSaeXHe7VJ9U3uXiwwvjKdguwI=;
 b=APW/e+AeP39mWsJH43I/SEpE09ZEZQdazV3KqaU7bhFkA0Uso8VRcfgyJLbyGlXuDd
 vxgy5mvoYZ8Il+nzZV1OD4NJ/FQDKL1uKiqxo5cDUf5+FwvjZDJsGqFu+RIO3G7DO7Ph
 Fcq0R67+zzCSKV6O23/nNzMRE5U2N1cLW0o2QKVE3frSAM4GeUw7aHMH3n/Qlq3WZ4d/
 kYaoB1FpdcB3Plm6WcCh6JCXA5o6hV3S1TA2V20XoIO1PLOtPUg48YHlqqjfo2Am6rvV
 jvjqFQjwWj6Hs76LXskjntkqNgJh3ad7SNPMJPoDmwcle56L6eq0sl0CnBR2fCTgEX0z
 hEog==
X-Gm-Message-State: AOAM531E82KWdFAXU+x3pu/Yeql6k2MRu4yXZ8Je7n2ME8MQ+bnOwc5b
 eAcUYrSz4tpwWp15+rK0tHk=
X-Google-Smtp-Source: ABdhPJz7VD1SHo2gupIa60LiZ1qC0cDQgbYIUx7544d4vuszHNvQtgGANWf8aQkMLhtN7iPJI960nw==
X-Received: by 2002:a05:600c:230a:: with SMTP id
 10mr9050861wmo.151.1602944974299; 
 Sat, 17 Oct 2020 07:29:34 -0700 (PDT)
Received: from localhost.localdomain
 (cpc83661-brig20-2-0-cust443.3-3.cable.virginm.net. [82.28.105.188])
 by smtp.gmail.com with ESMTPSA id n5sm9020860wrm.2.2020.10.17.07.29.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 17 Oct 2020 07:29:33 -0700 (PDT)
From: Alex Dewar <alex.dewar90@gmail.com>
To: 
Subject: [PATCH 1/2] staging: media: atomisp: Remove unnecessary if statement
Date: Sat, 17 Oct 2020 15:28:02 +0100
Message-Id: <20201017142810.26967-2-alex.dewar90@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201017142810.26967-1-alex.dewar90@gmail.com>
References: <20201017142810.26967-1-alex.dewar90@gmail.com>
MIME-Version: 1.0
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
Cc: devel@driverdev.osuosl.org,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Alex Dewar <alex.dewar90@gmail.com>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The bodies of the if and else sections are the same, so just remove the
check.

Signed-off-by: Alex Dewar <alex.dewar90@gmail.com>
---
 .../staging/media/atomisp/pci/atomisp_cmd.c   | 27 +++++--------------
 1 file changed, 6 insertions(+), 21 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp_cmd.c b/drivers/staging/media/atomisp/pci/atomisp_cmd.c
index 592ea990d4ca..92ddce409d04 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_cmd.c
+++ b/drivers/staging/media/atomisp/pci/atomisp_cmd.c
@@ -5407,27 +5407,12 @@ static int atomisp_set_fmt_to_isp(struct video_device *vdev,
 		return -EINVAL;
 	}
 
-	if (asd->continuous_mode->val &&
-	    (configure_pp_input == atomisp_css_preview_configure_pp_input ||
-	     configure_pp_input == atomisp_css_video_configure_pp_input)) {
-		/* for isp 2.2, configure pp input is available for continuous
-		 * mode */
-		ret = configure_pp_input(asd, isp_sink_crop->width,
-					 isp_sink_crop->height);
-		if (ret) {
-			dev_err(isp->dev, "configure_pp_input %ux%u\n",
-				isp_sink_crop->width,
-				isp_sink_crop->height);
-			return -EINVAL;
-		}
-	} else {
-		ret = configure_pp_input(asd, isp_sink_crop->width,
-					 isp_sink_crop->height);
-		if (ret) {
-			dev_err(isp->dev, "configure_pp_input %ux%u\n",
-				isp_sink_crop->width, isp_sink_crop->height);
-			return -EINVAL;
-		}
+	ret = configure_pp_input(asd, isp_sink_crop->width, isp_sink_crop->height);
+	if (ret) {
+		dev_err(isp->dev, "configure_pp_input %ux%u\n",
+			isp_sink_crop->width,
+			isp_sink_crop->height);
+		return -EINVAL;
 	}
 	if (asd->copy_mode)
 		ret = atomisp_css_copy_get_output_frame_info(asd, stream_index,
-- 
2.28.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
