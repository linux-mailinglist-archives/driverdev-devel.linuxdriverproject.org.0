Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 96F3F229BA3
	for <lists+driverdev-devel@lfdr.de>; Wed, 22 Jul 2020 17:40:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4851E86A94;
	Wed, 22 Jul 2020 15:40:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QyUgZe7VrMEA; Wed, 22 Jul 2020 15:40:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9B28286A32;
	Wed, 22 Jul 2020 15:40:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4B3DD1BF360
 for <devel@linuxdriverproject.org>; Wed, 22 Jul 2020 15:40:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 47FF787A33
 for <devel@linuxdriverproject.org>; Wed, 22 Jul 2020 15:40:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SVQjTc1RxIFQ for <devel@linuxdriverproject.org>;
 Wed, 22 Jul 2020 15:40:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 6E3AB861CD
 for <devel@driverdev.osuosl.org>; Wed, 22 Jul 2020 15:40:00 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id z15so2342812wrl.8
 for <devel@driverdev.osuosl.org>; Wed, 22 Jul 2020 08:40:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=RnJUfvdhHEXCtn6kTDVL1C13ap2rftP42dOu9oQ/bio=;
 b=U8tGaHMw3sVHJOhPvWUGfPQCTMd+v4FqzJoqbZOZvGebiwLOJzxV/y7SlbUZ7KqqsT
 ui+rmggO7FzpGhD0LBjMmU2FBe/pXNoInQcorXS8zGnN1DbZjOb/+kTv/zH2WMpv4Tkp
 VBTQVzpyp1Nr1RahFRIWqQnhHrdaRG+otqWfln3odJ6PKrs6lfLcyvLbiBkog0SBK+Y3
 HobOtzjuyPivVD0GYsBbn3KwlsiF9liuAVVQafQaJT+AQeFDfvUyG78S6WedSFGFM36F
 K88R2pNnHx/qkxwkRu9lPlCWaIx5WGZqE5mXvTMnYtEPqlrZUqbOBUzqzdjGl40PTp0E
 /3+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=RnJUfvdhHEXCtn6kTDVL1C13ap2rftP42dOu9oQ/bio=;
 b=dtAEMpUa6jHFzVJBahCU4Zkvbkmc0MCblSCPShCcNmwVctV3mp7DLhZlXNLNjgOhDb
 Gr61xvg9f2igbzvlNNkBvstKupIMso08QPyujun6+dFbLCJ07JRGSjCWv+B/fPK0Jb4z
 35xf41DJEXEvulTLPB5LBhIRkk33wri4XJ31ZSwCk3JiYyEydB/L9x4wdid8rlnkfY7b
 WOoaFpBrdsQYXXxMlj8afE9syiP1ST1KCqa7NV58pNMIf9Vc7tRWbWIeIh2hl5GDDArs
 AHpVxeaqTaFyupivVGNMQdlc69JVSAGBSA+6DmFrudVbP9XC0k5pzarXhdS9gtMxrpEi
 37jg==
X-Gm-Message-State: AOAM531HwG7WTctij3RjISQRbCAAnr9jVBR9m+PWbeHEWpDNnHJtfgvd
 vfGdarJd/lSptgjk0nZ57Hk=
X-Google-Smtp-Source: ABdhPJwkfzSUd2XNGj/U2C/eIFBS5lLSgW43ml7nh/uCSidVClcpc8NCaPXetMuDL4FVco272+wNRQ==
X-Received: by 2002:adf:bb14:: with SMTP id r20mr156893wrg.366.1595432398746; 
 Wed, 22 Jul 2020 08:39:58 -0700 (PDT)
Received: from PKL-UANJUM-LT.pkl.mentorg.com ([103.150.154.211])
 by smtp.gmail.com with ESMTPSA id u20sm70453wmc.42.2020.07.22.08.39.56
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 22 Jul 2020 08:39:58 -0700 (PDT)
Date: Wed, 22 Jul 2020 20:39:53 +0500
From: Muhammad Usama Anjum <musamaanjum@gmail.com>
To: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] staging: octeon: Add the license identifier
Message-ID: <20200722153953.GA8148@PKL-UANJUM-LT.pkl.mentorg.com>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
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

This patch fixes the checkpatch.pl warning:
WARNING: Missing or malformed SPDX-License-Identifier tag

Add a the SPDX-License-Identifier tag on line 1

Signed-off-by: Muhammad Usama Anjum <musamaanjum@gmail.com>
---
 drivers/staging/octeon/octeon-stubs.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/staging/octeon/octeon-stubs.h b/drivers/staging/octeon/octeon-stubs.h
index d06743504f2b..889b7c80666d 100644
--- a/drivers/staging/octeon/octeon-stubs.h
+++ b/drivers/staging/octeon/octeon-stubs.h
@@ -1,3 +1,5 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+
 #define CONFIG_CAVIUM_OCTEON_CVMSEG_SIZE	512
 
 #ifndef XKPHYS_TO_PHYS
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
