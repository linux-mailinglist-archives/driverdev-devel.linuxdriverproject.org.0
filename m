Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DACF666FB
	for <lists+driverdev-devel@lfdr.de>; Fri, 12 Jul 2019 08:28:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id DA53A882F7;
	Fri, 12 Jul 2019 06:28:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6ZhupyZInma9; Fri, 12 Jul 2019 06:28:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0E7AA85EA5;
	Fri, 12 Jul 2019 06:28:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 71AB81BF44C
 for <devel@linuxdriverproject.org>; Fri, 12 Jul 2019 06:28:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 6D572203D4
 for <devel@linuxdriverproject.org>; Fri, 12 Jul 2019 06:28:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kplOvwH94-HQ for <devel@linuxdriverproject.org>;
 Fri, 12 Jul 2019 06:28:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by silver.osuosl.org (Postfix) with ESMTPS id 7ADF622773
 for <devel@driverdev.osuosl.org>; Fri, 12 Jul 2019 06:28:29 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id m4so4077716pgk.0
 for <devel@driverdev.osuosl.org>; Thu, 11 Jul 2019 23:28:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=KvoseR1uHmj7cd3nGhn5DdPUphZDI7hf1/cV5tkhB2g=;
 b=OmYkFV1OfxXM26VV5Nz/Rck8TdAoG716qP7dIY6HgamNToswzzheg03hsf7jY3cSqb
 K3BH14/UW91b6xbB0QEiLrwNwXxn1b5V17JCePSBV0Z4Y7KdDUyY8exMw9w4JMsdI7vX
 R8nchxOoUM+s8nCcIb59XdPViehiENSZlrBO18GKaoAA+dDNEZPhkvEdA9P9Ajk/TJxZ
 cOkpKvFhVOca1sxr5MIYsQhYMEUHgJV7rrcMPPvXfmGnEDPbZ8zzmkg40x4Bd+vuxW8W
 x68mQlHZxorJeOhuSLcWforIkvJg9Ug1XbdOpDRcMi++mXNkxIu00GKv86nCbTPXExyy
 hURg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=KvoseR1uHmj7cd3nGhn5DdPUphZDI7hf1/cV5tkhB2g=;
 b=fdBHiPXI1vYw/d3vozPgaYRuZhM0xjG1Y3NQGSYb5HvU/In5cb7YA51kHU3eVAfX6n
 drwqNMwXR+Gz2G8/IjKEYB/27cf061bHQDpLYh+NbmEZo6aBLJjmveXdCBMqf7CtZMHr
 Hv17qzymmtd4RbzoQS5MZA9tVAt30+qugSLiTntcye3yZMs+2A3T/SU3WJGbDX2e64QK
 jRDigvb/SA0QayIhcayP76vH3C3l4B677SVq9Gmo2ChBO2Jv5XTcDHIUNa3R+KGS2LJx
 UD4s35Qhdm64qMK9DdEQ5EO97KoTPVy1nTStvvttjMWbQChF67j0Q3X0HbkjOoT7ty7m
 3dkw==
X-Gm-Message-State: APjAAAVD+F3rprld3HBkrac5loOI6BZWu7c19TqJF2avsuvWmsoBZX6B
 qVWSu2JvXvG/kA2PcBHYx3U=
X-Google-Smtp-Source: APXvYqxoJ1xGeuSlo0/fB6lnkjpOHzeQI3XRPW79PBcxcLy6JSsg4jONYukLxA6EadR0noY2APLoTA==
X-Received: by 2002:a63:5048:: with SMTP id q8mr8778355pgl.446.1562912909182; 
 Thu, 11 Jul 2019 23:28:29 -0700 (PDT)
Received: from localhost.localdomain ([110.227.64.207])
 by smtp.gmail.com with ESMTPSA id p1sm8830629pff.74.2019.07.11.23.28.27
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 11 Jul 2019 23:28:28 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org
Subject: [PATCH 04/10] staging: wlan-ng: Remove unused function
 hfa384x_dorrid_async()
Date: Fri, 12 Jul 2019 11:58:01 +0530
Message-Id: <20190712062807.9361-4-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190712062807.9361-1-nishkadg.linux@gmail.com>
References: <20190712062807.9361-1-nishkadg.linux@gmail.com>
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
Cc: Nishka Dasgupta <nishkadg.linux@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove unused function hfa384x_dorrid_async.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/wlan-ng/hfa384x_usb.c | 11 -----------
 1 file changed, 11 deletions(-)

diff --git a/drivers/staging/wlan-ng/hfa384x_usb.c b/drivers/staging/wlan-ng/hfa384x_usb.c
index 732ffb6aab0b..c1a315bf5a81 100644
--- a/drivers/staging/wlan-ng/hfa384x_usb.c
+++ b/drivers/staging/wlan-ng/hfa384x_usb.c
@@ -834,17 +834,6 @@ hfa384x_docmd_async(struct hfa384x *hw,
 	return hfa384x_docmd(hw, DOASYNC, cmd, cmdcb, usercb, usercb_data);
 }
 
-static inline int
-hfa384x_dorrid_async(struct hfa384x *hw,
-		     u16 rid, void *riddata, unsigned int riddatalen,
-		     ctlx_cmdcb_t cmdcb,
-		     ctlx_usercb_t usercb, void *usercb_data)
-{
-	return hfa384x_dorrid(hw, DOASYNC,
-			      rid, riddata, riddatalen,
-			      cmdcb, usercb, usercb_data);
-}
-
 static inline int
 hfa384x_dormem_wait(struct hfa384x *hw,
 		    u16 page, u16 offset, void *data, unsigned int len)
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
