Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8390E1193
	for <lists+driverdev-devel@lfdr.de>; Wed, 23 Oct 2019 07:28:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 853F487FC3;
	Wed, 23 Oct 2019 05:28:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fomYyLbd7YrC; Wed, 23 Oct 2019 05:28:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7EB2C87EB5;
	Wed, 23 Oct 2019 05:28:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D9C2C1BF863
 for <devel@linuxdriverproject.org>; Wed, 23 Oct 2019 05:28:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id CA1A78575E
 for <devel@linuxdriverproject.org>; Wed, 23 Oct 2019 05:28:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Awr00kXMiipm for <devel@linuxdriverproject.org>;
 Wed, 23 Oct 2019 05:28:15 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from omr1.cc.vt.edu (outbound.smtp.vt.edu [198.82.183.121])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 26E3885758
 for <devel@driverdev.osuosl.org>; Wed, 23 Oct 2019 05:28:14 +0000 (UTC)
Received: from mr4.cc.vt.edu (junk.cc.ipv6.vt.edu
 [IPv6:2607:b400:92:9:0:9d:8fcb:4116])
 by omr1.cc.vt.edu (8.14.4/8.14.4) with ESMTP id x9N5SDC3003396
 for <devel@driverdev.osuosl.org>; Wed, 23 Oct 2019 01:28:13 -0400
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com
 [209.85.222.200])
 by mr4.cc.vt.edu (8.14.7/8.14.7) with ESMTP id x9N5S8i7021285
 for <devel@driverdev.osuosl.org>; Wed, 23 Oct 2019 01:28:13 -0400
Received: by mail-qk1-f200.google.com with SMTP id x186so19117853qke.13
 for <devel@driverdev.osuosl.org>; Tue, 22 Oct 2019 22:28:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :mime-version:content-transfer-encoding;
 bh=+w/YtafmCjkVTaV1t79Q7P7YHkL5rcu2d28rELl4BA0=;
 b=GD5SO+L9KOFwwCSBran0GUS2OdkCgNjBW6L9YMvNYxnirwbN8AmrZm6cKUrDRJSW6M
 KvabevT/kmrvh9E4o0PesrIbBTpPIp5fowOHcJNPygT5wzZIWaWarC2Kpa6tyQZtAtRY
 LJWYkPVnogNbTB3EKcuRmDosZabaDhZmjcVIXY2FfU9dT4kxpL/jd8xxOhJiQYiqWexQ
 HEh+PVxAoFJmWgUNyPZgYuMcZszmFfs84W3/Q39B2tvqJa6MbJedOiwfFHBYHkfpc43C
 3h0IEhczI3TcnCohJK3QpOT9SBE2DVx52C6LBHGNmwwIPiExoibna+H3eTJIgDfGzA2K
 Rh0A==
X-Gm-Message-State: APjAAAUFE4UX8KKqRQX1TE0zJQpSBKf45bl3cpOPikWo0kQfNnWg01Ze
 EY1hSlex7Stkj2+QXpMsleseYeF1o3THTHyCzToa/zFDKJk8/e+qJ3AcRgM7rWjwtFFR0hW1eUR
 ZyZA+7LF2CJ12hvQx80PACywECkr3doMZ
X-Received: by 2002:ac8:1e83:: with SMTP id c3mr7528639qtm.294.1571808488378; 
 Tue, 22 Oct 2019 22:28:08 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwDqHBy9d1YKwCS40iPK8tZA+H6zvvizqpSJgYTel6JiwsGP45ceVjDnEdShCt44bWn7FAAaw==
X-Received: by 2002:ac8:1e83:: with SMTP id c3mr7528625qtm.294.1571808488144; 
 Tue, 22 Oct 2019 22:28:08 -0700 (PDT)
Received: from turing-police.lan ([2601:5c0:c001:c9e1::359])
 by smtp.gmail.com with ESMTPSA id 14sm10397445qtb.54.2019.10.22.22.28.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Oct 2019 22:28:07 -0700 (PDT)
From: Valdis Kletnieks <valdis.kletnieks@vt.edu>
X-Google-Original-From: Valdis Kletnieks <Valdis.Kletnieks@vt.edu>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Valdis.Kletnieks@vt.edu
Subject: [PATCH 0/8] staging: exfat: Code cleanups
Date: Wed, 23 Oct 2019 01:27:43 -0400
Message-Id: <20191023052752.693689-1-Valdis.Kletnieks@vt.edu>
X-Mailer: git-send-email 2.23.0
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
Cc: linux-fsdevel@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Two main goals here - remove the code to mount FAT and VFAT filesystes,
and make a lot of functions static to reduce namespace pollution.

Valdis Kletnieks (8):
  staging: exfat: Clean up namespace pollution, part 1
  staging: exfat: Remove FAT/VFAT mount support, part 1
  staging: exfat: Remove FAT/VFAT mount support, part 2
  staging: exfat: Cleanup static entries in exfat.h
  staging: exfat: Clean up static definitions in exfat_cache.c
  staging: exfat: More static cleanups for exfat_core.c
  staging: exfat: Finished code movement for static cleanups in exfat_core.c
  staging: exfat: Update TODO

 drivers/staging/exfat/Kconfig       |    9 -
 drivers/staging/exfat/TODO          |   20 +-
 drivers/staging/exfat/exfat.h       |  122 +-
 drivers/staging/exfat/exfat_cache.c |   94 +-
 drivers/staging/exfat/exfat_core.c  | 2162 ++++++++-------------------
 drivers/staging/exfat/exfat_super.c |    8 +-
 6 files changed, 690 insertions(+), 1725 deletions(-)

-- 
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
