Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 697721BD37E
	for <lists+driverdev-devel@lfdr.de>; Wed, 29 Apr 2020 06:21:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6EB9A868D0;
	Wed, 29 Apr 2020 04:21:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IgWz4Z2gi8Ku; Wed, 29 Apr 2020 04:21:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 27C8C864D6;
	Wed, 29 Apr 2020 04:21:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BBFD71BF3A6
 for <devel@linuxdriverproject.org>; Wed, 29 Apr 2020 04:21:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B61C886EC0
 for <devel@linuxdriverproject.org>; Wed, 29 Apr 2020 04:21:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id o-vwJyGjWy9V for <devel@linuxdriverproject.org>;
 Wed, 29 Apr 2020 04:21:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 32D1486DA5
 for <devel@driverdev.osuosl.org>; Wed, 29 Apr 2020 04:21:43 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id d15so817069wrx.3
 for <devel@driverdev.osuosl.org>; Tue, 28 Apr 2020 21:21:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=mCtLbL6Zr88D4dLaHGj83fov+fdvmqInAbjfmiya5zo=;
 b=KcCq3sClZpqJ+2xt78xBXZ2HjIAMNDO9niYhUn/bcXUsDen5XtDase8Ia/KrNMEauM
 s7/M9EiQBCHZmekYkS6aMFhwUA59/7+vV2Eu57BotW9DRWB/4dnvhDQ2FrnNlqj7wz4z
 n3X15y2VRcuo0NXNM044Q2+KSEl94m5XamGtRFzpzcq3XlfKBGxhAsJ+BUzSAtKMDQaz
 QHtM+sNfE0ggxsEaamQmf+YmMBCK9j9cbz2T0QxduqEGJXxG7xZwVbEU5L0edwPIF4sz
 CS1xhppM3/KnbXJxBemdcHj0Jv+B4TiXpCjPvIyJZzqYZStoOVsJ0BMG85Sr3NHOLpk7
 FTWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=mCtLbL6Zr88D4dLaHGj83fov+fdvmqInAbjfmiya5zo=;
 b=AKA++KFC9iBtumkUgG1Yy5M0yo0c+d58ab/JatD31MUlGtLbnaSkouSfq76INZEUaO
 zu/8K/6Ocuf0MubNJmDUgNBNGiiN7MqmPHnrkGTl1y5CDcgY7GU3avkziFP0Uns0nhKN
 xcMykRoQ9syAX9dzEQ0+6AhNVRuGbuVfVLc1a6x+mH8VdsLLrKva5G7Nvg9Qo7a1E9r6
 RdUWtgGK/QTfqrDqL3Z1XDP0jKMUJ6fToNhbLqohLZUfpj+E0VbQXpX0rZDBhtLmfHBA
 V0EIIYZh+2a84CSWFBvzk/AXgp5HXjjyAs8a0tOa4iNVOlwK7yBA24ADyegWtfJGFqGz
 WJ2g==
X-Gm-Message-State: AGi0PuY+b3Dff4gNmPNlVh1cWgXGPoeC1KUHo8ui7zKVYHT7IRk5DffX
 yZSVUVQET247ykIbCPFUzIg=
X-Google-Smtp-Source: APiQypIsyheNKE+yUYPn7h7Lh02qj284R2B2KtXNfFSBoHmveI6gKwv0q4UjlWp33+buDZ1Wr5yXuA==
X-Received: by 2002:adf:f604:: with SMTP id t4mr37208925wrp.399.1588134101564; 
 Tue, 28 Apr 2020 21:21:41 -0700 (PDT)
Received: from felia.fritz.box ([2001:16b8:2d97:3d00:e147:2f5e:e04:2e01])
 by smtp.gmail.com with ESMTPSA id z1sm5958897wmf.15.2020.04.28.21.21.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 28 Apr 2020 21:21:40 -0700 (PDT)
From: Lukas Bulwahn <lukas.bulwahn@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH RESEND] MAINTAINERS: remove entry after hp100 driver removal
Date: Wed, 29 Apr 2020 06:21:16 +0200
Message-Id: <20200429042116.29126-1-lukas.bulwahn@gmail.com>
X-Mailer: git-send-email 2.17.1
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
Cc: devel@driverdev.osuosl.org, Joe Perches <joe@perches.com>,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 Lukas Bulwahn <lukas.bulwahn@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Commit a10079c66290 ("staging: remove hp100 driver") removed all files
from ./drivers/staging/hp/, but missed to adjust MAINTAINERS.

Since then, ./scripts/get_maintainer.pl --self-test=patterns complains:

  warning: no file matches F: drivers/staging/hp/hp100.*

So, drop HP100 Driver entry in MAINTAINERS now.

Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>
---
Greg, here is a minor non-urgent patch for staging.

applies cleanly on v5.7-rc3, current master and next-20200428

 MAINTAINERS | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index 26f281d9f32a..41e2b577488f 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -7746,11 +7746,6 @@ L:	platform-driver-x86@vger.kernel.org
 S:	Orphan
 F:	drivers/platform/x86/tc1100-wmi.c
 
-HP100:	Driver for HP 10/100 Mbit/s Voice Grade Network Adapter Series
-M:	Jaroslav Kysela <perex@perex.cz>
-S:	Obsolete
-F:	drivers/staging/hp/hp100.*
-
 HPET:	High Precision Event Timers driver
 M:	Clemens Ladisch <clemens@ladisch.de>
 S:	Maintained
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
