Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3217914A1A5
	for <lists+driverdev-devel@lfdr.de>; Mon, 27 Jan 2020 11:15:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id BC765878F7;
	Mon, 27 Jan 2020 10:15:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 59OZbVavufYS; Mon, 27 Jan 2020 10:15:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0797D878C8;
	Mon, 27 Jan 2020 10:15:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EC16C1BF294
 for <devel@linuxdriverproject.org>; Mon, 27 Jan 2020 10:15:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E8FAE85660
 for <devel@linuxdriverproject.org>; Mon, 27 Jan 2020 10:15:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eruC6PoLP6xk for <devel@linuxdriverproject.org>;
 Mon, 27 Jan 2020 10:15:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 910B685657
 for <devel@driverdev.osuosl.org>; Mon, 27 Jan 2020 10:15:07 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id u131so4900833pgc.10
 for <devel@driverdev.osuosl.org>; Mon, 27 Jan 2020 02:15:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=tfqT994o6hFKwC+NJH5VhBNOIvQ5NHGDSHAgoN5IQQg=;
 b=PYxFSJCOp4tSt1yqQ1Non9MhjGXhvzz0Q0c6Eo4PnLRd2QoSjU2mUZ0Tnf/q7M52U2
 EdBAxOQv+vy4khjwtzDYTucIWnVb09U3ZhooncfWRE1z9ZjPpNnOKjzIF3iB6zHcDGLj
 9aHheSTFbL6ikPdph8gkwdt6pC8nVe4KjRNMsAPXNVtg8KtMcxhdare/0u8JJgKMOlUM
 cwMCYNwU0WYnZ69l8tOmYSwQhr1dnRbQdnolfL2dxQXIXovbYJhBTxO5wRnIainm7gNc
 mnhy+XSfDs9MciGvm0VsKBo3KNB1/LBQRCyt/SYGrNrrUvGSefn/y1q8Mc+ZtxHYk3Fw
 Hi2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=tfqT994o6hFKwC+NJH5VhBNOIvQ5NHGDSHAgoN5IQQg=;
 b=d0bv5/07IKkn3ALQI8ifdbcdEcZ61sprXZ1xnG+D719ZqYF0ezOIOR1bjtsw3g1Uoc
 IDW6zT8Ls9TnqTqGGJOBfaqTywdrCwPL97g17RZ9ZX7xN2B4F5luyFN7Jmd1NFCnKRPu
 3GJs7ApE4WsfmJIQ4QI5GvZOG4Z8vyZD+PpC/IpFFaTEDAVwyKCXCcb/c01WGRK/Quoy
 VMDJU5qvv6BVHtM8Ol7BgEOwoqGoDnXcb8blAlAWA/N13GyC7IQ1I9lL1lgpxuVai3ND
 alO8VOCwNnReA1GKFLKV2gZ3C/o9DaP0jpLMPfJAqzLEw/6+ZRP8pq9YUEnaURn/3J9Y
 QPBg==
X-Gm-Message-State: APjAAAWDsvF9Jfi4c85f9mGXSACFvPOYO2uekWcD98YPFWcxL9+R2p8u
 NldTfIDWIRPu+OUhkAjJEN4=
X-Google-Smtp-Source: APXvYqwnlc/BTVD+zB2gkJ9TRRoZAjk4QyN2K+bRR20xZDRzGaJ5+E5yNuABM4OXiSgvvZwiMtkkaA==
X-Received: by 2002:a62:7696:: with SMTP id
 r144mr15571402pfc.177.1580120107229; 
 Mon, 27 Jan 2020 02:15:07 -0800 (PST)
Received: from localhost.localdomain ([2405:205:c902:a5e9:3956:8df2:aee5:9cf6])
 by smtp.gmail.com with ESMTPSA id s15sm15504138pgq.4.2020.01.27.02.15.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 27 Jan 2020 02:15:06 -0800 (PST)
From: Pragat Pandya <pragat.pandya@gmail.com>
To: valdis.kletnieks@vt.edu,
	gregkh@linuxfoundation.org
Subject: [PATCH 09/22] staging: exfat: Rename variable "Size" to "size"
Date: Mon, 27 Jan 2020 15:43:30 +0530
Message-Id: <20200127101343.20415-10-pragat.pandya@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200127101343.20415-1-pragat.pandya@gmail.com>
References: <20200127101343.20415-1-pragat.pandya@gmail.com>
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
 skhan@linuxfoundation.org, linux-fsdevel@vger.kernel.org,
 linux-kernel-mentees@lists.linuxfoundation.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Change all the occurences of "Size" to "size" in exfat.

Signed-off-by: Pragat Pandya <pragat.pandya@gmail.com>
---
 drivers/staging/exfat/exfat.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/exfat/exfat.h b/drivers/staging/exfat/exfat.h
index 52f314d50b91..a228350acdb4 100644
--- a/drivers/staging/exfat/exfat.h
+++ b/drivers/staging/exfat/exfat.h
@@ -233,7 +233,7 @@ struct date_time_t {
 
 struct part_info_t {
 	u32      offset;    /* start sector number of the partition */
-	u32      Size;      /* in sectors */
+	u32      size;      /* in sectors */
 };
 
 struct dev_info_t {
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
