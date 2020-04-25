Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B04B51B8378
	for <lists+driverdev-devel@lfdr.de>; Sat, 25 Apr 2020 05:33:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5926C87475;
	Sat, 25 Apr 2020 03:33:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5I1WFPiMoSUq; Sat, 25 Apr 2020 03:33:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1806B875EA;
	Sat, 25 Apr 2020 03:33:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 366C71BF2FE
 for <devel@linuxdriverproject.org>; Sat, 25 Apr 2020 03:32:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 306A5204AA
 for <devel@linuxdriverproject.org>; Sat, 25 Apr 2020 03:32:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id flvzV8WhE1RV for <devel@linuxdriverproject.org>;
 Sat, 25 Apr 2020 03:32:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by silver.osuosl.org (Postfix) with ESMTPS id 5500B20431
 for <devel@driverdev.osuosl.org>; Sat, 25 Apr 2020 03:32:57 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id 145so5754153pfw.13
 for <devel@driverdev.osuosl.org>; Fri, 24 Apr 2020 20:32:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=VunhqMRWJInTR0tPW5Ya/YSScMH/rdCbR4hywvIa2g0=;
 b=JP4/cliWGwYyZ1hlyo2qlEYOi5cdi/fwhWVyqwWEE7qdMu/IH1ukEWTeuk5FlqcQSm
 66VWs2D4LdoITbuEzdhCOncErxXNSHgDkgk03T2nDwwiiXsnjRaHsGpE8/02TiIx4ffh
 y5YV2p1zQUwKlquB+SD6YZyVy2OklISHuMtoD7WlcimLxYr09ABUP91IQ+tbgcgA0gm3
 LFwqgFyjQWA0zIVDpGFl9/ULizwsDmm4umUb1AOzMsBY8HMgvPPMb1atBwF9JCtxo5Hp
 GmsF4LzS+W/MiMwVXDOHcoEiQr2BiS7uSjLt6+MXiJ7NQE+qJ4OVRCp/gtPeFQJrhTWk
 7yqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=VunhqMRWJInTR0tPW5Ya/YSScMH/rdCbR4hywvIa2g0=;
 b=nxxjfYQPylzdzLgbckDBb0dfgS56+vcQDBpPRSpbpyWrrnVeFY3G3Ub/Nr7cHlNe5u
 QSGNtk3OHrEtDc/Iy0P+G3DnMULupcTiWdBIc9ptPnhksmRAWIAIGMNhMU8c668MCY2g
 7UOuQwExPbGSj3YnCAfBog++K09Fm+x6ShnuwvuefdvHvNO159/qWZ3oR6TiBFuf+fmU
 pZZyJGZPS5n/wxob0x6z4FaVO7IRCvxKpbkM73Lezio5uwyNJWm073Cx50vRcXZwy/KE
 9NaQKh9/W3hnx0W0BVnKyXjCsLaRuX1uZc0cONahWtrtwv+55dIYHh3Vxq59Co3cidvF
 t3qQ==
X-Gm-Message-State: AGi0PuZpIEJSERdkkxOaIhOq59vdZh3IGK2rogSyMeqItP9U/dBWqftQ
 PJ7KRI+yTceA4d08UBBoz2/HOHMY8pL2Uk8u
X-Google-Smtp-Source: APiQypJ7VPo+Wj7nhLYdQspSQHWOumuq3MWIwY3HdecE9zSmOnzgTir4uFvRJ8UQL7jmLxGkYazj0w==
X-Received: by 2002:a63:6543:: with SMTP id z64mr12641908pgb.260.1587785576311; 
 Fri, 24 Apr 2020 20:32:56 -0700 (PDT)
Received: from koo-Z370-HD3 ([143.248.230.14])
 by smtp.gmail.com with ESMTPSA id 3sm7361491pfo.27.2020.04.24.20.32.54
 for <devel@driverdev.osuosl.org>
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 24 Apr 2020 20:32:55 -0700 (PDT)
Date: Sat, 25 Apr 2020 12:32:51 +0900
From: Kyoungho Koo <rnrudgh@gmail.com>
To: devel@driverdev.osuosl.org
Subject: [PATCH v2] Staging: gasket: fix typo in gasket_page_table.c comments.
Message-ID: <20200425033247.GA15604@koo-Z370-HD3>
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

Signed-off-by: Kyoungho Koo <rnrudgh@gmail.com>
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
