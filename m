Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 92F7113F9C
	for <lists+driverdev-devel@lfdr.de>; Sun,  5 May 2019 15:19:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5355F232F2;
	Sun,  5 May 2019 13:18:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vD393Dcr+SHU; Sun,  5 May 2019 13:18:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 1237A226B3;
	Sun,  5 May 2019 13:18:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 17E2D1BF48B
 for <devel@linuxdriverproject.org>; Sun,  5 May 2019 13:18:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 148BF8789D
 for <devel@linuxdriverproject.org>; Sun,  5 May 2019 13:18:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LoPdFTMfWc0y for <devel@linuxdriverproject.org>;
 Sun,  5 May 2019 13:18:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
 [209.85.215.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6402A87872
 for <devel@driverdev.osuosl.org>; Sun,  5 May 2019 13:18:52 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id p6so5075832pgh.9
 for <devel@driverdev.osuosl.org>; Sun, 05 May 2019 06:18:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=/nwncARJEE19W+SwxCr4yhfXabdWKcWPT1319XAhwgI=;
 b=YO0185amDDkouf7GkxgJcauWqHzczdutOU7rgLkAXXPB34r9scPO+P0ZSs5766FTUx
 csjnEjMK0H0SMbHc6fo2aV/7q9Ziv/V4fbpFU1qBPQ0LEnb9wGnR+RJEctT48RsZZzgX
 TJXWGJhsj5JbfL2SExn8O0DIyAWEojN4rV9cX/Rs+/dbhP8cqDPKIJ7K8JZMo1+89v+D
 kCm8Cdg/D5nPAVqocvE8ltx7eGNVGmhkMMtRqsFjanZmazetiWxKkss/641mB4pOvBm8
 lYnxGCDh8o1lhPWWhP2ctdmp51+gLyRnk/IDrt4t3pCfoKgE8JkcnaZ5hK0dQdQ+IfGH
 Qk7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=/nwncARJEE19W+SwxCr4yhfXabdWKcWPT1319XAhwgI=;
 b=Rctmh2ntF/R4p8A0lIKq8nBPd4ua7k17Ui0UjFNnSzcdAfGJ7mbLTsmQiwrUpqiwCd
 HKfdxFFLWRiJzOxr43nIh/mQAbESPzxtqZeLeq0jgFusqP9azAOwmt5VQlZ+GeaT6hWA
 4Yh3mB58qtFU2E7ChR22ChL0cQ1SY/Tx47guJUHmiwD3thNpBUBPfztUg4k7tlujt++9
 XLCs7vjGsZDa5tVJTP0Y7H0JC3rjjo78KJHBW3RWycx7ANY83y2gtLFM2pZEzvpVLTcd
 tcBIA+jwg5cJGRsvpyKQO+Ak9KfWiJqhtVkqPmDEYFOeO3+3kY4n4TcjZpa/vPhRejFr
 Jumw==
X-Gm-Message-State: APjAAAUPW66OEEm5mB2DcD8Qqk8S3IdZoauRhm9D3ygM2ZVwjz+MrrqT
 wgDXyXeO8V1LMUOtzZBNyBA=
X-Google-Smtp-Source: APXvYqylr0vki0C89HqYRYVMQD6gzOE8pdrYiz98igigvgZzwJ2uuaAaXkzWVhbac0+ACGsqvSgaow==
X-Received: by 2002:a62:14d6:: with SMTP id 205mr25686207pfu.4.1557062331978; 
 Sun, 05 May 2019 06:18:51 -0700 (PDT)
Received: from localhost.localdomain ([103.87.56.229])
 by smtp.gmail.com with ESMTPSA id k14sm23556582pfj.171.2019.05.05.06.18.48
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 05 May 2019 06:18:51 -0700 (PDT)
From: Vatsala Narang <vatsalanarang@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2 0/6] staging: rtl8723bs: core: Fix checkpatch warnings.
Date: Sun,  5 May 2019 18:48:34 +0530
Message-Id: <20190505131834.4166-1-vatsalanarang@gmail.com>
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
Cc: devel@driverdev.osuosl.org, julia.lawall@lip6.fr,
 linux-kernel@vger.kernel.org, hdegoede@redhat.com, hadess@hadess.net,
 Vatsala Narang <vatsalanarang@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This series fix the following warnings:
-Remove multiple blank lines.
-Replace NULL comparison.
-Remove unncessary parentheses.
-Remove braces from single if statement.
-Fix variable constant comparison.
-Move logical operator to previous line.

Changes in v2:
-Dropped one patch from the series as it had some compilatin error.

Vatsala Narang (6):
  staging: rtl8723bs: core: Remove blank line.
  staging: rtl8723bs: core: Replace NULL comparisons.
  staging: rtl8723bs: core: Remove unnecessary parentheses.
  staging: rtl8723bs: core: Remove braces from single if statement.
  staging: rtl8723bs: core: Fix variable constant comparisons.
  staging: rtl8723bs: core: Move logical operator to previous line.

 drivers/staging/rtl8723bs/core/rtw_mlme_ext.c | 69 ++++++++-----------
 1 file changed, 30 insertions(+), 39 deletions(-)

-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
