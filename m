Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BEA51320BEC
	for <lists+driverdev-devel@lfdr.de>; Sun, 21 Feb 2021 18:06:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2093983339
	for <lists+driverdev-devel@lfdr.de>; Sun, 21 Feb 2021 17:06:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VUKwNxNT17qA for <lists+driverdev-devel@lfdr.de>;
	Sun, 21 Feb 2021 17:06:45 +0000 (UTC)
Received: by smtp1.osuosl.org (Postfix, from userid 1001)
	id EB823837AC; Sun, 21 Feb 2021 17:06:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4F58383372;
	Sun, 21 Feb 2021 17:06:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7A0D91BF2F4
 for <devel@linuxdriverproject.org>; Sun, 21 Feb 2021 17:06:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 65A71600CB
 for <devel@linuxdriverproject.org>; Sun, 21 Feb 2021 17:06:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 45b2XqynjAe4 for <devel@linuxdriverproject.org>;
 Sun, 21 Feb 2021 17:06:14 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id C4FA56F478; Sun, 21 Feb 2021 17:06:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com
 [209.85.128.48])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 86102600CB
 for <devel@driverdev.osuosl.org>; Sun, 21 Feb 2021 17:06:13 +0000 (UTC)
Received: by mail-wm1-f48.google.com with SMTP id o10so6439724wmc.1
 for <devel@driverdev.osuosl.org>; Sun, 21 Feb 2021 09:06:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=SqoxfJrGmgz3BkYUjwDxf/FRTw/eO/VPz2DolP71aQ0=;
 b=W/LCltHTxD0IWeB9P8fMcI7r2dxXK0Vmu1t6PnU0S3GRAx5V4xr3AHMH7YLeBj6rM+
 bxYhFs5mWyROmg2V1pa/jgqU2xaP8Ymtqnejbn+i3IyCprKPCPou2CR9yDx3H7zz/kbI
 3gOQ/ebPGZ0ItGlxh8c6WsUuwn0xIAUg1/8hlBCll9E+FetnHySrtPnXdI3Ndd2rMsmu
 TPOF/heCVD/YTxXaHKlW2m5McnwiyZrRo5KsQ4BgyftGNie0N0nQGQEzluPkMNArbag0
 dfGGren7oyyBGadlMNV1vPbnR2yGwNB2X6IaoWgkeo71mL+9ojkcq1jIEdAlbDlSikAR
 uACA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=SqoxfJrGmgz3BkYUjwDxf/FRTw/eO/VPz2DolP71aQ0=;
 b=I4UHxB4gLTUWWZxx77/HsZg2X1zinEER1wGM1it5pRPu8Qe3bW6jgncYncbAwZQpm2
 Vz8mD0zDtH2opyzbNhJR4bhmtUtscHVqhie3WA8vDPq/k5da1sCbhn+BBosdTIA/vT7S
 2ANGi1GxpZZnoJWTuqQ0acbMJHR+0ikJKVWC8tFFxm1tHV1Bl4hG3DGqZ+C20xLJj1Tc
 qS0yMqvhwGyxaoaAuiANUhod26I/Zxw03IWVigxFvH6ai9VLPKnAIT4JRJxrrFWH/wW+
 qMAKiyCqnzO2AQmj5J95fk6Wvsxvee7OFq1D+ogT1Lj/PyeGDdcjKiJfbFat88Fu8Pa1
 S0Qw==
X-Gm-Message-State: AOAM533hTLk0nnyYe8kFVlszkrTNWQs0dhWkNOtoP2dYqD8sXPtnJETY
 rmV5k6QfJdBQsHrtvnL/ASg=
X-Google-Smtp-Source: ABdhPJwpQR5HD0wA70e9uWkv5nB2QHYnJO64OXGLLkMdL18YlSRl1Kjwx6avWB1ZAGgLwaQMEiAgjw==
X-Received: by 2002:a05:600c:4642:: with SMTP id
 n2mr17350424wmo.49.1613927171548; 
 Sun, 21 Feb 2021 09:06:11 -0800 (PST)
Received: from localhost.localdomain ([2a02:587:8026:d57e:9a17:dcb6:4dc6:8083])
 by smtp.googlemail.com with ESMTPSA id q140sm28112340wme.0.2021.02.21.09.06.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 21 Feb 2021 09:06:11 -0800 (PST)
From: George Xanthakis <kompiouterakias@gmail.com>
To: gregkh@linuxfoundation.org, arve@android.com, tkjos@android.com,
 maco@android.com, joel@joelfernandes.org, christian@brauner.io,
 hridya@google.com, surenb@google.com, viresh.kumar@linaro.org,
 mani@kernel.org, daniel.vetter@ffwll.ch, dbueso@suse.de,
 dianders@chromium.org, loic.poulain@linaro.org, daniel.thompson@linaro.org,
 akpm@linux-foundation.org
Subject: [PATCH] staging: android: Remove filename reference from file
Date: Sun, 21 Feb 2021 19:05:42 +0200
Message-Id: <20210221170542.45309-1-kompiouterakias@gmail.com>
X-Mailer: git-send-email 2.30.1
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This commit fixes a checkpatch warning that references the filename in
the the file comments.

Signed-off-by: George Xanthakis <kompiouterakias@gmail.com>
---
 drivers/staging/android/uapi/ashmem.h | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/android/uapi/ashmem.h b/drivers/staging/android/uapi/ashmem.h
index 5442e0019..134efacb3 100644
--- a/drivers/staging/android/uapi/ashmem.h
+++ b/drivers/staging/android/uapi/ashmem.h
@@ -1,7 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0 OR Apache-2.0 */
 /*
- * drivers/staging/android/uapi/ashmem.h
- *
  * Copyright 2008 Google Inc.
  * Author: Robert Love
  */
-- 
2.30.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
