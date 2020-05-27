Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E0BE1E39EF
	for <lists+driverdev-devel@lfdr.de>; Wed, 27 May 2020 09:12:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3A9CB88648;
	Wed, 27 May 2020 07:12:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SZB002LfTn0f; Wed, 27 May 2020 07:12:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id A7472883CA;
	Wed, 27 May 2020 07:12:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8A9DE1BF423
 for <devel@linuxdriverproject.org>; Wed, 27 May 2020 07:12:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8785886B02
 for <devel@linuxdriverproject.org>; Wed, 27 May 2020 07:12:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HkdbaX2_lMyq for <devel@linuxdriverproject.org>;
 Wed, 27 May 2020 07:12:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 493CB869C0
 for <devel@driverdev.osuosl.org>; Wed, 27 May 2020 07:12:13 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id v63so11431152pfb.10
 for <devel@driverdev.osuosl.org>; Wed, 27 May 2020 00:12:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Qw/QOLBu9d2B+96STuqYNI0AftO5l6SG5yefrjTDHdQ=;
 b=rAvssvWz49+fXzXPapINBcDmFBTZ01RO2hMId+vgCJN3AG63BmjX55x7SQCy71kRyl
 Aq0VWotduyCwmPny7lrc0pWTiCgpE0weYmufy41TJVpo1hIV/C2GkMOzqcQzhjRhKz1+
 r/3q1R8nKhc3wAdHpKSCi/CO48ZFFlGTCM2OUa+PNJbGUpzypAhFiqxYq7rnduqbTk4j
 PJz2M1SmoOlh5WLkVTvtL/NyMWz2pHepmil5fNaJhItpgj4fT/Zb4biKCGcYNTRp32lA
 tR+jWjuGDJ+jG9ggkd6y1wPjtHhMpR0j8LjE7SWvY/P4Xf3NvfZ4WG+bPRHcSt04qoZr
 86SA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Qw/QOLBu9d2B+96STuqYNI0AftO5l6SG5yefrjTDHdQ=;
 b=YH/GhfE3kyMkpcLdrzZ67SC0JFB8aLZrTu+iotaErWqccilHr5g31qzCpFqPrRyzpc
 yNVM6yYFghRMrcktFofEZdDPAkn4P6R9nML4Sk1yfG2GDzSyKY2HVRcihmc8y8Ueg3c6
 eZg2LUo69quQvuM/5PuuXqtJTraKxYYvL+CZIz6WGIneLbB6l3pf2NqEip+1T72LYE/v
 d4tfgedx5aNKD1hxnFueTC7azk0mt7kT9axTdM0d0j88J+7iaT3kq3+BHVz2KNxUkJEI
 G875kmsnfCH4QKUHx3FD/8Rt8GxxRLJn+a1j9+UwXVl9upArJLbDqeA9Xdqzov/QPRai
 VBDQ==
X-Gm-Message-State: AOAM533WSEHH40O66QYYyCSx7aSsQ++xxPmysKTk4ubrui+5oYSj2hf7
 PeIDNSKUQtnvbLK3OLD5CWI=
X-Google-Smtp-Source: ABdhPJwiMdlTneuDy4qlJ6WknGzBgbOnwG5sxxkqaefuDqkk6jhGJu9u7DEVNg4VjcPowgRDxL0hMg==
X-Received: by 2002:a63:3c0a:: with SMTP id j10mr2734873pga.35.1590563532903; 
 Wed, 27 May 2020 00:12:12 -0700 (PDT)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
 by smtp.gmail.com with ESMTPSA id 10sm1306431pfx.138.2020.05.27.00.12.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 May 2020 00:12:12 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [PATCH 2/7] media: atomisp: Remove second increment of count in
 atomisp_subdev_probe
Date: Wed, 27 May 2020 00:11:45 -0700
Message-Id: <20200527071150.3381228-3-natechancellor@gmail.com>
X-Mailer: git-send-email 2.27.0.rc0
In-Reply-To: <20200527071150.3381228-1-natechancellor@gmail.com>
References: <20200527071150.3381228-1-natechancellor@gmail.com>
MIME-Version: 1.0
X-Patchwork-Bot: notify
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Nathan Chancellor <natechancellor@gmail.com>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Clang warns:

../drivers/staging/media/atomisp/pci/atomisp_v4l2.c:1097:3: warning:
variable 'count' is incremented both in the loop header and in the loop
body [-Wfor-loop-analysis]
                count++;
                ^

This was probably unintentional, remove it.

Link: https://github.com/ClangBuiltLinux/linux/issues/1036
Reported-by: kbuild test robot <lkp@intel.com>
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 drivers/staging/media/atomisp/pci/atomisp_v4l2.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp_v4l2.c b/drivers/staging/media/atomisp/pci/atomisp_v4l2.c
index 694268d133c0..c42999a55303 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_v4l2.c
+++ b/drivers/staging/media/atomisp/pci/atomisp_v4l2.c
@@ -1094,7 +1094,6 @@ static int atomisp_subdev_probe(struct atomisp_device *isp)
 		if (camera_count)
 			break;
 		msleep(SUBDEV_WAIT_TIMEOUT);
-		count++;
 	}
 	/* Wait more time to give more time for subdev init code to finish */
 	msleep(5 * SUBDEV_WAIT_TIMEOUT);
-- 
2.27.0.rc0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
