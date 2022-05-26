Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 17D085355E5
	for <lists+driverdev-devel@lfdr.de>; Fri, 27 May 2022 00:00:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D50BD6155B;
	Thu, 26 May 2022 22:00:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vy2eojx1qLrT; Thu, 26 May 2022 22:00:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8761561552;
	Thu, 26 May 2022 22:00:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AB9AF1BF30E
 for <devel@linuxdriverproject.org>; Thu, 26 May 2022 22:00:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 99D8342711
 for <devel@linuxdriverproject.org>; Thu, 26 May 2022 22:00:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=chromium.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yPMUERXx6Rva for <devel@linuxdriverproject.org>;
 Thu, 26 May 2022 22:00:23 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pl1-x62d.google.com (mail-pl1-x62d.google.com
 [IPv6:2607:f8b0:4864:20::62d])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 60931426E6
 for <devel@driverdev.osuosl.org>; Thu, 26 May 2022 22:00:23 +0000 (UTC)
Received: by mail-pl1-x62d.google.com with SMTP id n18so2558607plg.5
 for <devel@driverdev.osuosl.org>; Thu, 26 May 2022 15:00:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=L13M0F9NxiPHveFjyllGolTcp/lf7VfViNUmkBL3NJ4=;
 b=fxMVfzAma/2UFbX6F1qGIb1S1cQQL4VJIyvgH8veXhWk0USTVuf66u3uaYwgP5ruEt
 Y3ci3u3oDbv7zjFtf22escAhE63im+kHFjlI4om/p8hcFuK2QKsY5SRbqQbZ6VxbvATv
 Y72ub3RthKUis/RR8bgyynD7eF2ybhIYjmDE8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=L13M0F9NxiPHveFjyllGolTcp/lf7VfViNUmkBL3NJ4=;
 b=wYutP51CVUXgq4I1uZCr8r89CKnx9pXXibV3BC9lor59J7Ep+cUmN2LyKP9ZKb3OHO
 tcbaSE2FAPzLxZ7CkbfYWM5JTmBaeMfYBSSNebOl1Wj7oY49IowoMXyeIiixLhIlUJ8q
 F3Dd4miek/77upFGbY8dVwKuMiNpUfm9E1R8Abo/c15+xLY6R4WXZJjfwTO0S+hHq8JQ
 0CtCujCOHNKVxPCftEajLngqeFu+ruJkaXZsYDurMP52bmS5ZeG/HPV4t2HnKmXt7aCY
 +HUd3xTNB9czQONeRp/ZGRBrcbqlZjRpMace2hEmdSNa/dnApTZxB6IRBuUpO+hksaj/
 z2Pw==
X-Gm-Message-State: AOAM5308xhszfKYbdQ1Gy98qUq4pLxpp9Q2Lv8BKAbDp2zODHrsuuzaG
 3wKoyORPxf4qAWmiwHT3UFGGVA==
X-Google-Smtp-Source: ABdhPJzl2g7FolrIOk1zz8wkb91x2ngGdzB1+xPref5V3e98KigQ18H0nesZ8aP4aB+RMO4QZEH2DQ==
X-Received: by 2002:a17:90b:4c4c:b0:1df:bab5:4f56 with SMTP id
 np12-20020a17090b4c4c00b001dfbab54f56mr4765771pjb.202.1653602422718; 
 Thu, 26 May 2022 15:00:22 -0700 (PDT)
Received: from li-cloudtop.c.googlers.com.com
 (132.111.125.34.bc.googleusercontent.com. [34.125.111.132])
 by smtp.gmail.com with ESMTPSA id
 t17-20020a17090ad51100b001e269bb6bedsm127225pju.38.2022.05.26.15.00.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 May 2022 15:00:22 -0700 (PDT)
From: Li Li <dualli@chromium.org>
To: dualli@google.com, tkjos@google.com, gregkh@linuxfoundation.org,
 christian@brauner.io, arve@android.com, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, maco@google.com, hridya@google.com,
 surenb@google.com
Subject: [RESEND PATCH v3 0/1] Binder: add TF_UPDATE_TXN to replace outdated
 txn
Date: Thu, 26 May 2022 15:00:17 -0700
Message-Id: <20220526220018.3334775-1-dualli@chromium.org>
X-Mailer: git-send-email 2.36.1.124.g0e6072fb45-goog
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
Cc: joel@joelfernandes.org, kernel-team@android.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Li Li <dualli@google.com>

Resend [Patch v3] with cover letter in case my previous email failed
to reach the maillist (no comments for 2 weeks).

The previous comments of the old patch can be found at the following link:
https://lore.kernel.org/lkml/CANBPYPjkNWsO94nuG1TkR1DgK2W2kBxiJTriyVB7S3czHTZ1Yg@mail.gmail.com/

I copy and paste the key information here for your convenience.

* Question #1

Note, your subject does not say what TF_UPDATE_TXN is, so it's a bit
hard to determine what is happening here.  Can you clean that up a bit
and sumarize what this new addition does?
How was this tested?

* Answer #1 ===

A more descriptive summary has been added to the new version of patch.

*  Question #2

How was this tested?

* Answer #2

Old kernel: without this TF_UPDATE_TXN patch
New kernel: with this TF_UPDATE_TXN patch
Old apps: without setting TF_UPDATE_TXN
New apps: if (flags & TF_ONE_WAY) flags |= TF_UPDATE_TXN;

1. Compatibility: New kernel + Old apps, to verify the original
behavior doesn't change;

2. Compatibility: Old kernel + New apps, to verify the original
behavior doesn't change;

3. Unit test: New kernel + New apps, to verify the outdated oneway
binder transaction is actually superseded by the latest one (by
enabling BINDER_DEBUG logs);

4. Stress test: New kernel + New apps sending oneway binder
transactions repeatedly, to verify the size of the available async
binder buffer over time, and if the transactions fail as before
(due to async buffer running out).

* Question #3

Did checkpatch pass this?  Please always use --strict and fix up all the
issues that it reports as this is not a normal kernel coding style.

* Answer #3

Yes, the latest version has passed "./scripts/checkpatch.pl --strict"

* Changelog

v3:
  - Add this changelog required by "The canonical patch format"
v2:
  - Fix alignment warnings reported by checkpatch --strict
  - Add descriptive summary in patch subject

Li Li (1):
  Binder: add TF_UPDATE_TXN to replace outdated txn

 drivers/android/binder.c            | 85 ++++++++++++++++++++++++++++-
 drivers/android/binder_trace.h      |  4 ++
 include/uapi/linux/android/binder.h |  1 +
 3 files changed, 87 insertions(+), 3 deletions(-)

-- 
2.36.1.124.g0e6072fb45-goog

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
