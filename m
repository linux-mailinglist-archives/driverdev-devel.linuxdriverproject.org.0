Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D1BA406FDF
	for <lists+driverdev-devel@lfdr.de>; Fri, 10 Sep 2021 18:42:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1036E84A0B;
	Fri, 10 Sep 2021 16:42:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FLMxkbaoMBAG; Fri, 10 Sep 2021 16:42:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 659918249C;
	Fri, 10 Sep 2021 16:42:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A21661BF2C7
 for <devel@linuxdriverproject.org>; Fri, 10 Sep 2021 16:42:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 915698249C
 for <devel@linuxdriverproject.org>; Fri, 10 Sep 2021 16:42:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EtjhF6mCHwwn for <devel@linuxdriverproject.org>;
 Fri, 10 Sep 2021 16:42:13 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-x1034.google.com (mail-pj1-x1034.google.com
 [IPv6:2607:f8b0:4864:20::1034])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8135681D7D
 for <devel@driverdev.osuosl.org>; Fri, 10 Sep 2021 16:42:13 +0000 (UTC)
Received: by mail-pj1-x1034.google.com with SMTP id
 f11-20020a17090aa78b00b0018e98a7cddaso1839184pjq.4
 for <devel@driverdev.osuosl.org>; Fri, 10 Sep 2021 09:42:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=gH9PCnmmRLDSeHx7CODLzybPcjKbfpx0PJGF4nx5AtE=;
 b=VuXBIiHvWZMVYdy+nxX1UYmqvg4eRX4J9JI89Sxxk85LRBH+ZWgCtH92Zsss4ZxfBR
 WdP1UOg07RvH0DbLue3XVYp90uQXz3BLxghXK8mNw2XBVFHbtpeH9ZMDN4yfTwtMjP3f
 HQFQHLwa/QzVIsC5BVRiGm27GSlLhVYNocaFI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=gH9PCnmmRLDSeHx7CODLzybPcjKbfpx0PJGF4nx5AtE=;
 b=oFMg5ezZmhLH4bsSSF3yDX+9o08k62uqmXbqSsJBu4yyfjEPzbveAl3Bo8fzFJKYuP
 vGm7naSqPdhToC+NMHZX6e4U7xv/XamYCDRWdke5QIIHvz44xHXfoHmQxAgMx+cdJQbl
 4m6u7QCHrjFlBNuDJCf3NCKUdGGtCjyMeeV5atCjiRpfL/23VcJ6uyUFfC+xeukNKjGC
 sG2+fIck/emJnGRFaYjzNmy8bdojODzKKdjNLMMpSewZZNU3G2ScN8z76UnDSd4uc5zf
 gd1dYMJ+40IB27Y0zFXwuvy00Ay/vNpvwMBOLWHZzhYGHBFNdKC5Xs7JV2KwqWw0Q5Yp
 KPWQ==
X-Gm-Message-State: AOAM532Q80UYTdGwyYWH4GCY57kV8X5PogJUOqgcxJtwTatyIEJyUl00
 n9fiBTT0IDU3z4i1VLKzW7BBPA==
X-Google-Smtp-Source: ABdhPJx2cyb/4Eq9vTyyM54/KILnc4gLkPY8JbGxn/eLx2mnuCMq6izXgWwC6JFiVzNKeCEojAaVqA==
X-Received: by 2002:a17:90b:4f8f:: with SMTP id
 qe15mr10490067pjb.126.1631292132925; 
 Fri, 10 Sep 2021 09:42:12 -0700 (PDT)
Received: from li-cloudtop.c.googlers.com.com
 (254.80.82.34.bc.googleusercontent.com. [34.82.80.254])
 by smtp.gmail.com with ESMTPSA id c133sm5546948pfb.39.2021.09.10.09.42.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 Sep 2021 09:42:12 -0700 (PDT)
From: Li Li <dualli@chromium.org>
To: dualli@google.com, tkjos@google.com, gregkh@linuxfoundation.org,
 christian@brauner.io, arve@android.com, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, maco@google.com, hridya@google.com,
 surenb@google.com
Subject: [PATCH v3 0/1] binder: fix freeze race
Date: Fri, 10 Sep 2021 09:42:09 -0700
Message-Id: <20210910164210.2282716-1-dualli@chromium.org>
X-Mailer: git-send-email 2.33.0.309.g3052b89438-goog
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

As there isn't an atomic operation to freeze the main thread and binder
interface together, it's possible the main thread initiates a new binder
transaction while the binder interfaces are already frozen. This race issue
will result in failed binder transaction and unexpectedly crash the app.

This patch allows a post-froze rollback mechanism by checking if there's
any new pending binder transaction waiting for response. At the same time,
it treats the response transaction like an oneway transaction so that the
response can successfully reach the frozen process.

Changes in v2:
1. Improve commit msg, adding "Fixes";
2. Adding missing "_ilocked" suffix to binder_txns_pending();
3. Document bit assignment of struct binder_frozen_status_info in binder.h.

Changes in v3:
1. Make function binder_txns_pending() bool;
2. Remove redundant outstanding_txns check in binder_ioctl_freeze;
3. Change local variable txns_pending from int to __u32 for alignment;
4. Clarify uapi backward compatibility in commit msg.

Li Li (1):
  binder: fix freeze race

 drivers/android/binder.c            | 35 ++++++++++++++++++++++++-----
 drivers/android/binder_internal.h   |  2 ++
 include/uapi/linux/android/binder.h |  7 ++++++
 3 files changed, 38 insertions(+), 6 deletions(-)

-- 
2.33.0.309.g3052b89438-goog

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
