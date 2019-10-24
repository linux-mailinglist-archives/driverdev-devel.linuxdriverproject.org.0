Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id EDF03E3731
	for <lists+driverdev-devel@lfdr.de>; Thu, 24 Oct 2019 17:55:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7219B882F8;
	Thu, 24 Oct 2019 15:55:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id T-tjIotdL3oh; Thu, 24 Oct 2019 15:55:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C5077882EB;
	Thu, 24 Oct 2019 15:55:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E74501BF297
 for <devel@linuxdriverproject.org>; Thu, 24 Oct 2019 15:55:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E4982869BB
 for <devel@linuxdriverproject.org>; Thu, 24 Oct 2019 15:55:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id o-75CyGc6Rjq for <devel@linuxdriverproject.org>;
 Thu, 24 Oct 2019 15:55:04 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from omr1.cc.vt.edu (outbound.smtp.vt.edu [198.82.183.121])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B83E2869AC
 for <devel@driverdev.osuosl.org>; Thu, 24 Oct 2019 15:55:04 +0000 (UTC)
Received: from mr6.cc.vt.edu (mr6.cc.vt.edu
 [IPv6:2607:b400:92:8500:0:af:2d00:4488])
 by omr1.cc.vt.edu (8.14.4/8.14.4) with ESMTP id x9OFt3hP010667
 for <devel@driverdev.osuosl.org>; Thu, 24 Oct 2019 11:55:03 -0400
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com
 [209.85.222.198])
 by mr6.cc.vt.edu (8.14.7/8.14.7) with ESMTP id x9OFsw1S022410
 for <devel@driverdev.osuosl.org>; Thu, 24 Oct 2019 11:55:03 -0400
Received: by mail-qk1-f198.google.com with SMTP id x186so23867617qke.13
 for <devel@driverdev.osuosl.org>; Thu, 24 Oct 2019 08:55:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=SyOobOpZYzTvdZYs3cH/N6hV2wYmIbDFbQPOWl3B3yA=;
 b=UmZWfU0W3SQD1594vKv6eDHUzrsy8cMbioclliMWbV5q3avVFMdUmmyRar3Ni2zznf
 uvKMudml+Ve7Fuwbfz1KiwqqBbQzAapez3pU9N6eWX9wPT4LWRJVZLX5lCNH3E0KT044
 GLiRyJySi7V72KULHHuTvNobJ8uWi76KyBUCxXfPCUvcxut95SYOe3OSOSk4w0brTYq3
 jgdm0Vjo3ANJHXzqPw4t6NmIsHaH0Zish6mkk60Ot6EVw+jjHCGLie3nLRV02LW3QsJV
 eLULtOoNhZ7k01BT+fsvn03lPEa4g+3xfRiYUQdsNDQAT/2APHLjN9OjkNdNjHWpFBBk
 ClNA==
X-Gm-Message-State: APjAAAXhGDBsS1ntO4Tdi8Tl43+1oo8bbjNgbbqh7eV+i9UvhUcpFwiZ
 jJR2wtm6lv0lvb85SRdtHzdA+R9Pi+/l+0PWgZVwuGbb9w46amh/vu/W/FZJoktJWyyz9TOd+57
 c2Cad7rgJY6lTAVNnCJ0KS66xwlcnGBYk
X-Received: by 2002:ae9:eb17:: with SMTP id b23mr14409860qkg.260.1571932498714; 
 Thu, 24 Oct 2019 08:54:58 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyGt4F+8h9pUy2WBpBQilCq7fwxiOziIP1Emg5SoFQw6Gfam/UCq8V3j8x1vTs9jK1ywgMmwQ==
X-Received: by 2002:ae9:eb17:: with SMTP id b23mr14409840qkg.260.1571932498453; 
 Thu, 24 Oct 2019 08:54:58 -0700 (PDT)
Received: from turing-police.lan ([2601:5c0:c001:c9e1::359])
 by smtp.gmail.com with ESMTPSA id x133sm12693274qka.44.2019.10.24.08.54.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 24 Oct 2019 08:54:57 -0700 (PDT)
From: Valdis Kletnieks <valdis.kletnieks@vt.edu>
X-Google-Original-From: Valdis Kletnieks <Valdis.Kletnieks@vt.edu>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 14/15] staging: exfat: Clean up return codes - remove unused
 codes
Date: Thu, 24 Oct 2019 11:53:25 -0400
Message-Id: <20191024155327.1095907-15-Valdis.Kletnieks@vt.edu>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191024155327.1095907-1-Valdis.Kletnieks@vt.edu>
References: <20191024155327.1095907-1-Valdis.Kletnieks@vt.edu>
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
 Valdis Kletnieks <valdis.kletnieks@vt.edu>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

There are 6 FFS_* error values not used at all. Remove them.

Signed-off-by: Valdis Kletnieks <Valdis.Kletnieks@vt.edu>
---
 drivers/staging/exfat/exfat.h | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/drivers/staging/exfat/exfat.h b/drivers/staging/exfat/exfat.h
index 2ca2710601ae..819a21d72c67 100644
--- a/drivers/staging/exfat/exfat.h
+++ b/drivers/staging/exfat/exfat.h
@@ -210,12 +210,6 @@ static inline u16 get_row_index(u16 i)
 
 /* return values */
 #define FFS_SUCCESS             0
-#define FFS_MOUNTED             3
-#define FFS_NOTMOUNTED          4
-#define FFS_ALIGNMENTERR        5
-#define FFS_SEMAPHOREERR        6
-#define FFS_NOTOPENED           12
-#define FFS_MAXOPENED           13
 
 #define NUM_UPCASE              2918
 
-- 
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
