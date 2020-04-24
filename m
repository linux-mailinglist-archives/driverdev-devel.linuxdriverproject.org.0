Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A2BE51B7B8B
	for <lists+driverdev-devel@lfdr.de>; Fri, 24 Apr 2020 18:26:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B2C1A84E9A;
	Fri, 24 Apr 2020 16:26:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KDIUqcPK_gT4; Fri, 24 Apr 2020 16:26:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8B23584B6F;
	Fri, 24 Apr 2020 16:26:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AF4701BF303
 for <devel@linuxdriverproject.org>; Fri, 24 Apr 2020 16:26:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id AB7878648E
 for <devel@linuxdriverproject.org>; Fri, 24 Apr 2020 16:26:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6Wf-y2mC-OgZ for <devel@linuxdriverproject.org>;
 Fri, 24 Apr 2020 16:26:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
 [209.85.214.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 2AF90811F1
 for <devel@driverdev.osuosl.org>; Fri, 24 Apr 2020 16:26:16 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id k18so3914422pll.6
 for <devel@driverdev.osuosl.org>; Fri, 24 Apr 2020 09:26:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=EgBWy1HLcd1MAJXrjt7QLeFcYasZU+blULqEiHH/gSA=;
 b=BVk0U1gZ8daBY2GHLjGxN2DKxIZ6bvn0aKuyA5NfD/f28XV3ZHi1yKkK/2cY1tMj/1
 CIDOnr5TKyZ9yvP0aeJEjsJXx3yqJng+3s6i1q0LD31Uz/cHmTq9TmPCIAa5zc70gZWW
 ybEKTM8EDyHXZUUiGPcmvJizmRcvnRFl1V5UJ+i+ayhA/NCnoLfoBBcVa4Q4eNAgGlKU
 ui+dvjOmTGjuAnIQU+QUA2HIeSG7XVbd/ORaGTZnCNKTBaJBkO4kEHDTPyvKLWHTc9Lq
 qrPAgeCcqCfnysVxoYBbR2Y1G5OPI5ZstYQAmaxD3TKjctJGyBl0W0gDgmGHxZLFOIKm
 gAtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=EgBWy1HLcd1MAJXrjt7QLeFcYasZU+blULqEiHH/gSA=;
 b=ha+Xsao6ErRODmwCPuBW8e3qXqmVFPjVDM4oH8+z4BTC/umPaWzcR7of/Ap5kC9Liu
 yZtl5Z2B1AgsjokMb+WB+d1x0HpfjDMZscgn2c1nn8YxFbPZXhEuRKEjF/p2Cjvc5nDh
 O5dEvp5O8RJFqqVhMO3lQtdTShFI/+ZZDQGPuheE4sJ+bo/WHrowxwaBl0qoJxTGDv1D
 56+yJVFTBwwDYc7l7PLLi0i6ekzgDo95Ac1RYJRCDBq5Sbp58FkIWsebGblN4EpU0LEI
 wfGiPFB4AXcubwz7PM0XyaKP9e0gn96NXiWk4y08/S4NQg62ejapQUs3TOYobsXs75Mz
 MpuA==
X-Gm-Message-State: AGi0PuaX2Ce0W/MzGCaqwsx2PmR0vzhJNAIGEvXaMLCYkCdCIHX3iHR4
 Idh6gELiuLDPd4VbgJtPwHd6LHi5O3I/iw==
X-Google-Smtp-Source: APiQypLHJhhGK20fJhp+dzUjcZJV9qT42iEijDulCjgcz8nIcmXVCz2q/+vU0pBM5B96HC91WoZxhQ==
X-Received: by 2002:a17:90a:d3cc:: with SMTP id
 d12mr7056398pjw.158.1587745575266; 
 Fri, 24 Apr 2020 09:26:15 -0700 (PDT)
Received: from koo-Z370-HD3 ([143.248.230.14])
 by smtp.gmail.com with ESMTPSA id j6sm2714595pgc.84.2020.04.24.09.26.13
 for <devel@driverdev.osuosl.org>
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 24 Apr 2020 09:26:14 -0700 (PDT)
Date: Sat, 25 Apr 2020 01:26:10 +0900
From: kyoungho koo <rnrudgh@gmail.com>
To: devel@driverdev.osuosl.org
Subject: [PATCH] staging: gasket: fix typo in gasket_page_table.c comments.
Message-ID: <20200424162606.GA8341@koo-Z370-HD3>
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

I have found double typed comments "the the". So i modified it to
one "the".

Signed-off-by: kyoungho koo <rnrudgh@gmail.com>
---
 drivers/staging/gasket/gasket_page_table.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/gasket/gasket_page_table.c b/drivers/staging/gasket/gasket_page_table.c
index f6d715787da8..f3dbe0fe2a67 100644
--- a/drivers/staging/gasket/gasket_page_table.c
+++ b/drivers/staging/gasket/gasket_page_table.c
@@ -898,7 +898,7 @@ static int gasket_alloc_extended_subtable(struct gasket_page_table *pg_tbl,
  *
  * Note that memory for second level page tables is allocated as needed, but
  * that memory is only freed on the final close	of the device file, when the
- * page tables are repartitioned, or the the device is removed.  If there is an
+ * page tables are repartitioned, or the device is removed.  If there is an
  * error or if the full range of slots is not available, any memory
  * allocated for second level page tables remains allocated until final close,
  * repartition, or device removal.
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
