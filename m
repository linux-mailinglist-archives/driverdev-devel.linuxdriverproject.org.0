Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20D91221CE
	for <lists+driverdev-devel@lfdr.de>; Sat, 18 May 2019 08:34:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id BF08D88934;
	Sat, 18 May 2019 06:34:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vCW02eFQnGtC; Sat, 18 May 2019 06:34:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 59B91884F7;
	Sat, 18 May 2019 06:34:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DCFDD1BF405
 for <devel@linuxdriverproject.org>; Sat, 18 May 2019 06:34:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id DA8EC88458
 for <devel@linuxdriverproject.org>; Sat, 18 May 2019 06:34:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id juIfdZWqGTj6 for <devel@linuxdriverproject.org>;
 Sat, 18 May 2019 06:34:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
 [209.85.215.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6F96E8844C
 for <devel@driverdev.osuosl.org>; Sat, 18 May 2019 06:34:44 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id i21so4297169pgi.12
 for <devel@driverdev.osuosl.org>; Fri, 17 May 2019 23:34:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=K0RkBKBSAGCnpFcKILpVOgzIRW/m7dsAxctpIh7X+yo=;
 b=HnoLarijvVvlAxglikknWASEnm3kilfMpvNkN5e7PwpgpeEyk1QXovfa1eEnoRcCyc
 ecO78LxHCkDaHQQ1goUfaHbSeZa74wCtXmpQ2vdjTbm/IWBjJactwpVUIKOSUFfGQ++z
 dWBi09MdNtekUp0f4zm1QbONjSlZUO3VFbll+iidqYZWYQxRLPoJRWpYhgaARaI+A2US
 DEiP2NdOQdbA7+5qInPJKXucZ9rcXXi7FhylNZ3XAb4vuWj3SRGHeIkED6+05nMl2q5K
 eKJ4RbBVdJtvgVqJmLyDxJTauWsQ1ohHNb89jFMpyYis6VCQ/yyhNcmc4TIuOjmBBu62
 Hx/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=K0RkBKBSAGCnpFcKILpVOgzIRW/m7dsAxctpIh7X+yo=;
 b=cEKpAm1dkTMBJa3qsx79SU4/a6HZUVfS5ITIDvDk+uH6WPdC/++EhASMwLXkj1jFTZ
 +Qs+NGsW2Pbzu3F9qS+Fbd6iWFNAJil4zUy20V3bqlzDCLEmzPkiHYbR8mpsvjJRkf3M
 WpU85r8hbRnMgUggWAKFJbt0otL/s631aWQCf9kXE0tz1+oD0VXjF6hWltIIvEBs8gQ3
 yUM/YF8Gus8b7BN/c7VUGGzH68KdxSBzcmdr+OPzROujMo84vEGeYgj4Lw//SjSGP2rk
 gZaZn3AElo38eSTsA3MWn1u1zLR37VGvmH7nb+HU8wyJVaCsmCMx+lXDbJeUWe7giejX
 XZUw==
X-Gm-Message-State: APjAAAXZyD9AHQ+gMk5McYfONWuN+eAx+H7r12/IhD76AAu6xzHs0dbu
 OPw6aWpwndWkEtGtmO9KFb8=
X-Google-Smtp-Source: APXvYqxj5IQslagNyOzjXphME0wdgCZfHpdO+UuiT8WRXZL6twJSfa2PppVZJc9fQ/rcnqjDFCnUjQ==
X-Received: by 2002:a62:2687:: with SMTP id
 m129mr67165162pfm.204.1558161284011; 
 Fri, 17 May 2019 23:34:44 -0700 (PDT)
Received: from localhost.localdomain ([103.227.98.84])
 by smtp.googlemail.com with ESMTPSA id h26sm14347874pgh.26.2019.05.17.23.34.39
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 17 May 2019 23:34:43 -0700 (PDT)
From: Moses Christopher <moseschristopherb@gmail.com>
To: gregkh@linuxfoundation.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1 2/6] staging: most: use help instead of ---help--- in
 Kconfig
Date: Sat, 18 May 2019 12:03:37 +0530
Message-Id: <20190518063341.11178-3-moseschristopherb@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190518063341.11178-1-moseschristopherb@gmail.com>
References: <20190518063341.11178-1-moseschristopherb@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Moses Christopher <moseschristopherb@gmail.com>,
 arnd@arndb.de, insafonov@gmail.com, sparmaintainer@unisys.com,
 hdegoede@redhat.com, forest@alittletooquiet.net, yangbo.lu@nxp.com,
 christian.gromm@microchip.com, davem@davemloft.net, Larry.Finger@lwfinger.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

  - Resolve the following warning from the Kconfig,
    "WARNING: prefer 'help' over '---help---' for new help texts

Signed-off-by: Moses Christopher <moseschristopherb@gmail.com>
---
 drivers/staging/most/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/most/Kconfig b/drivers/staging/most/Kconfig
index db32ea7d1743..8948d5246409 100644
--- a/drivers/staging/most/Kconfig
+++ b/drivers/staging/most/Kconfig
@@ -3,7 +3,7 @@ menuconfig MOST
         tristate "MOST support"
 	depends on HAS_DMA && CONFIGFS_FS
         default n
-        ---help---
+        help
 	  Say Y here if you want to enable MOST support.
 	  This driver needs at least one additional component to enable the
 	  desired access from userspace (e.g. character devices) and one that
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
