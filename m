Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BEB419177C
	for <lists+driverdev-devel@lfdr.de>; Sun, 18 Aug 2019 17:21:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id E1829204C4;
	Sun, 18 Aug 2019 15:21:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id y2CPx-qMfbqZ; Sun, 18 Aug 2019 15:21:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 7E62A20482;
	Sun, 18 Aug 2019 15:21:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A3AA71BF3D1
 for <devel@linuxdriverproject.org>; Sun, 18 Aug 2019 15:21:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9EDA085722
 for <devel@linuxdriverproject.org>; Sun, 18 Aug 2019 15:21:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id T4Gu0j1MooVG for <devel@linuxdriverproject.org>;
 Sun, 18 Aug 2019 15:21:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f67.google.com (mail-io1-f67.google.com
 [209.85.166.67])
 by whitealder.osuosl.org (Postfix) with ESMTPS id EE4A68568D
 for <devel@driverdev.osuosl.org>; Sun, 18 Aug 2019 15:21:05 +0000 (UTC)
Received: by mail-io1-f67.google.com with SMTP id s21so15618944ioa.1
 for <devel@driverdev.osuosl.org>; Sun, 18 Aug 2019 08:21:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=J7fPfB4NOFjj+0lwTkAH+mRK1JzZdb5Bqg7OlEHxdtA=;
 b=R0EFZvYvIKc5JmdcGmlQ0FqqbB1So/mF4Rcwe8FX/LzTCDRNODTjaQTrlW0yPW/K1U
 k2WHQ81LGx8F5VYGGReoUNFkC/iY7ccsaebFectXl9u1Bd5NY338oQDwMZm8vmFRkMA/
 N+Vq7ArXnhDomHyFG7i7nHxWM4FVN+xtbECWlclV0W4I/ocdCyw+ck0F/JwHBtkoM1/C
 JRoGG0uzVvwuAJw/ahM1DUQRVStblHzktrJAAKRpl33oRUlq3RHSRUgWFy61KA7EGIef
 yeAjYFsCWO+wePkIRi/AVeDN43Lov/qEjGQENisj6y4LAKUOKDw+JDJay8kw8u2kGm16
 KFgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=J7fPfB4NOFjj+0lwTkAH+mRK1JzZdb5Bqg7OlEHxdtA=;
 b=BGh72ILVBS5Owm9DQq0lI3qGUUu5KPg8acw64DK6RMEhmnD/utpQOBi6RTBiNVFGHN
 nGOrcK2ZFMcHu8aB+uXEyLvplNgzp8S64y61tAlvFuhYihD3fLP2blcPjSfxwaVCIh0A
 yCbN5FORA2+Mqg5ZPG/Xi3oVbJPGRrNiUC0AMhw8+IXeSNH0mNWa5+pqV0L/lH15oEfE
 ++c/9ijIHvXejzGAMkLXgWzMZ0M9mh263Qs3FYu9umoytnFcA26GsOCfRCdWOKJ4mmGs
 NIVnr+ocoWKOuj8PIYaGuWqTiDGV6GCJCp2MXjqLUkmzcj1umALRxYHmAL5yv0pyaWP1
 T8gQ==
X-Gm-Message-State: APjAAAW/agiKMx6KkZw1xn4nQ0TxUeFFbuOtr7rfqmfRZ3aMtgzG0RGZ
 BTO4DAm7aikVp+BHFOV8T4s=
X-Google-Smtp-Source: APXvYqzc1d8/aSCCYWyQWiFJB7Ea07frOjKD3EnuRhKWbAM7xuBi2VnCJgfYD5ehDNrof5I9CTIFvQ==
X-Received: by 2002:a5d:8249:: with SMTP id n9mr20876179ioo.14.1566141665127; 
 Sun, 18 Aug 2019 08:21:05 -0700 (PDT)
Received: from localhost.localdomain ([2607:fea8:7a60:20d::10])
 by smtp.gmail.com with ESMTPSA id i9sm9138681ioe.35.2019.08.18.08.21.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 18 Aug 2019 08:21:04 -0700 (PDT)
From: Donald Yandt <donald.yandt@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2] staging: android: Remove ion device tree bindings from the
 TODO
Date: Sun, 18 Aug 2019 11:20:23 -0400
Message-Id: <20190818152023.891-1-donald.yandt@gmail.com>
X-Mailer: git-send-email 2.21.0
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
Cc: devel@driverdev.osuosl.org, tkjos@android.com, linux-kernel@vger.kernel.org,
 arve@android.com, Donald Yandt <donald.yandt@gmail.com>,
 joel@joelfernandes.org, maco@android.com, christian@brauner.io
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Commit 23a4388f24f5 ("staging: android: ion: Remove file ion_chunk_heap.c")
and eadbf7a34e44 ("staging: android: ion: Remove file ion_carveout_heap.c")
removed the chunk and carveout heaps from ion but left behind the device
tree bindings for them in the TODO, this patch removes it.

Signed-off-by: Donald Yandt <donald.yandt@gmail.com>
---
Changes in v2:
- Referenced previous commits and described the commit in greater detail.
---
 drivers/staging/android/TODO | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/android/TODO b/drivers/staging/android/TODO
index fbf015cc6d62..767dd98fd92d 100644
--- a/drivers/staging/android/TODO
+++ b/drivers/staging/android/TODO
@@ -6,8 +6,6 @@ TODO:
 
 
 ion/
- - Add dt-bindings for remaining heaps (chunk and carveout heaps). This would
-   involve putting appropriate bindings in a memory node for Ion to find.
  - Split /dev/ion up into multiple nodes (e.g. /dev/ion/heap0)
  - Better test framework (integration with VGEM was suggested)
 
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
