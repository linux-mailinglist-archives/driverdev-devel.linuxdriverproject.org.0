Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60570E45F7
	for <lists+driverdev-devel@lfdr.de>; Fri, 25 Oct 2019 10:42:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 06F4D88391;
	Fri, 25 Oct 2019 08:42:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ii9Q95eBV1du; Fri, 25 Oct 2019 08:42:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0321E87553;
	Fri, 25 Oct 2019 08:42:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 955D51BF2B7
 for <devel@linuxdriverproject.org>; Fri, 25 Oct 2019 08:41:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 92086204C9
 for <devel@linuxdriverproject.org>; Fri, 25 Oct 2019 08:41:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eQyMm2JkDvwO for <devel@linuxdriverproject.org>;
 Fri, 25 Oct 2019 08:41:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by silver.osuosl.org (Postfix) with ESMTPS id C2D8D20373
 for <devel@driverdev.osuosl.org>; Fri, 25 Oct 2019 08:41:36 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id a11so1312389wra.6
 for <devel@driverdev.osuosl.org>; Fri, 25 Oct 2019 01:41:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=PY6b2z5P9QoaoZCAGimZtE7w/jH/Qk8RrWQNl3pgncs=;
 b=qw6l78oj61sRZlr9GHz6USo/TMhFMo/GTZqc/9ghI+w10SNBN9clNIR8OMj9tkAydJ
 h/kkcj0XPu9wpje9qotLkpaeSBDD93Wf742XyLHGFg7w+Mur+EDuc+H9vr9glfxBB6MD
 bhkwCdyTGF4xY2XLa+0OgpmRtYuD8ua5XnjJ2fgSBP3/jPGWnVe3ftCWL/ZRJjOZnCQb
 VmhHe7DFMJWoMYkNm4D67w9w/QPiHGpkC6DrYJh9dWA41Y18ySs6qZHYZ3dRca87SEf2
 0rbnSbbJ+uUvYYkg3qzAHPa0xPHhDiB+Fz0YBDwIHUIr/3mxgXScvSRfI1FiSVBqhFew
 sBvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=PY6b2z5P9QoaoZCAGimZtE7w/jH/Qk8RrWQNl3pgncs=;
 b=t9YoYWk/J+FgRGhCY+MDoyy4LICkgoNRt7ssfGox+W4Zna9APGSFwPpnrOAiFLTQcL
 cmU/nRjtwztQB3+jmrx2ZmOKJXEijW7ugUSbh6j3rorXnkh/J4t+KYHHlEr+TgdIjVlX
 FiqDf39b6MsOxMuqsR3PHOuj2B1I4Tc4JqG9YMdKrhUFvLMpB8rUWwihSqofExg+Q6E9
 aDacmpYgtvg57UoQDwt4VFzdQUU53XSCBYX26eCQjy84Dk4pu1yfAGLa1M1oNyJ3FwYR
 raAgpNqOJwnklklRNA4c+9fV0nNOcTcJYE78ndctdgQyiOsXjWreBktzth41wjMwfYhh
 t0YA==
X-Gm-Message-State: APjAAAUA1OhK/paG4BDX3hVkrIFohe26Esjr8zrEav1aPFZvg9T8tuhC
 Fe8NY57cznIaQWGYcNCOQm7BgBcI
X-Google-Smtp-Source: APXvYqxAvExvwvs5NL9y15jYdH1lT/GdASLp1lWbi3Onw9dBb7b5keaSxYoKA2DVd7LHedECUCR+uA==
X-Received: by 2002:a5d:55c2:: with SMTP id i2mr1847866wrw.176.1571992895357; 
 Fri, 25 Oct 2019 01:41:35 -0700 (PDT)
Received: from meriadoc.middleearth ([80.2.21.148])
 by smtp.gmail.com with ESMTPSA id 200sm2257986wme.32.2019.10.25.01.41.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Oct 2019 01:41:34 -0700 (PDT)
From: Tim Collier <osdevtc@gmail.com>
To: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org
Subject: [PATCH 4/5] staging: wlan-ng: fix compilation for USB debugging
Date: Fri, 25 Oct 2019 09:41:25 +0100
Message-Id: <20191025084126.9181-5-osdevtc@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191025084126.9181-1-osdevtc@gmail.com>
References: <20191025084126.9181-1-osdevtc@gmail.com>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix compilation errors (remove references to 2 undefined fields in the
URB struct) when DEBUG_USB is defined for the wlan-ng driver.

Signed-off-by: Tim Collier <osdevtc@gmail.com>
---
 drivers/staging/wlan-ng/hfa384x_usb.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/wlan-ng/hfa384x_usb.c b/drivers/staging/wlan-ng/hfa384x_usb.c
index 28d372a0663a..b71756ab0394 100644
--- a/drivers/staging/wlan-ng/hfa384x_usb.c
+++ b/drivers/staging/wlan-ng/hfa384x_usb.c
@@ -293,13 +293,11 @@ void dbprint_urb(struct urb *urb)
 	pr_debug("urb->transfer_buffer_length=0x%08x\n",
 		 urb->transfer_buffer_length);
 	pr_debug("urb->actual_length=0x%08x\n", urb->actual_length);
-	pr_debug("urb->bandwidth=0x%08x\n", urb->bandwidth);
 	pr_debug("urb->setup_packet(ctl)=0x%08x\n",
 		 (unsigned int)urb->setup_packet);
 	pr_debug("urb->start_frame(iso/irq)=0x%08x\n", urb->start_frame);
 	pr_debug("urb->interval(irq)=0x%08x\n", urb->interval);
 	pr_debug("urb->error_count(iso)=0x%08x\n", urb->error_count);
-	pr_debug("urb->timeout=0x%08x\n", urb->timeout);
 	pr_debug("urb->context=0x%08x\n", (unsigned int)urb->context);
 	pr_debug("urb->complete=0x%08x\n", (unsigned int)urb->complete);
 }
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
