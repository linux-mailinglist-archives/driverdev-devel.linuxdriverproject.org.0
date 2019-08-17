Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 035C69135D
	for <lists+driverdev-devel@lfdr.de>; Sat, 17 Aug 2019 23:40:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id DF8B38753D;
	Sat, 17 Aug 2019 21:40:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zbsEi0tULn0C; Sat, 17 Aug 2019 21:40:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 505C987526;
	Sat, 17 Aug 2019 21:40:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B0DBC1BF5A2
 for <devel@linuxdriverproject.org>; Sat, 17 Aug 2019 21:40:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 89CFA203CA
 for <devel@linuxdriverproject.org>; Sat, 17 Aug 2019 21:40:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Mste2bfv4nAP for <devel@linuxdriverproject.org>;
 Sat, 17 Aug 2019 21:40:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f68.google.com (mail-io1-f68.google.com
 [209.85.166.68])
 by silver.osuosl.org (Postfix) with ESMTPS id D56CC20369
 for <devel@driverdev.osuosl.org>; Sat, 17 Aug 2019 21:40:41 +0000 (UTC)
Received: by mail-io1-f68.google.com with SMTP id s21so13298376ioa.1
 for <devel@driverdev.osuosl.org>; Sat, 17 Aug 2019 14:40:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=lePJrhb5SnzKA5WSaJlz+iYROUPd5EvqinElChCrM0E=;
 b=Fu0OTliYdI8kpEGlcz/UItlI3Gi83l47C0v4BSzP3Lhp/KK+lqXHNuLPUHj/p1bBu1
 eqmVK1Ic87blM5injxL2Atlp5NOt5TzLaYfUqnf8wNRuvU2U48RQNPtoXC2lEYxp6WlT
 ZtofkdAkMckP7maoNnQTSXlV21RczIPwedXKtwkydspxZREQ+DfzGCPuLVOqKHMXfg6P
 5vFCD4wcH7jeF2vQ8U7FwwElmWx6aP8XVTZf+GG00/OORYK4gf04hePjjfaZfCfm0o/Y
 x8YnUC5Hc7vR96bXjLk2p4mZI6kLowJDr/AIcV3Tl7If8ODeq8X65IPbY40LRvvLmf+q
 aO6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=lePJrhb5SnzKA5WSaJlz+iYROUPd5EvqinElChCrM0E=;
 b=KSVsoxScLO/R3kYV+cmFnyzps04tWMQ+WExkBwTB8y6VlqAtdVfTBymFKOg+XYDcIG
 jMnfaUI+rZMPy7KcKvwUNqUHkpKg4E29gAVCYq4D6KcnlJtWMmzFR/V+o1PUSkdtruG3
 ciZxJ96YveMwCUPBv2VR34BCbyf3ctQ9S/bZUW4inU2HA5jM29k4e5/TRUsT2awMWVDV
 MTsVeP26ej7ma2NxjCNE93arTZ5BPbygVKmPO2fpCtXzZXVU6rPGIjXV5d11RK9Ys06h
 Do42uezVTym2XyWN9RFPnCNt+IH4PxLGAwUDS+XNz1HwYVvfHU3QXsR1dOuyt7QU31yo
 qs2w==
X-Gm-Message-State: APjAAAWGOhQsmk3fCrx3/l/SIFqGUTcUIFtrc6/htfCyBxmby8WbblWo
 5gHGsPD7t+wFVAi1aPGRR8Q=
X-Google-Smtp-Source: APXvYqxNG9be4IixeXXuPfzi2AMUOZDG5fNkJycIYg6zLSyXTb+lu/AtjNiX7KzuAvBuyjoYTf2I7w==
X-Received: by 2002:a5d:9ec6:: with SMTP id a6mr4534622ioe.256.1566078041174; 
 Sat, 17 Aug 2019 14:40:41 -0700 (PDT)
Received: from localhost.localdomain ([2607:fea8:7a60:20d::10])
 by smtp.gmail.com with ESMTPSA id f1sm11924679ioh.73.2019.08.17.14.40.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 17 Aug 2019 14:40:40 -0700 (PDT)
From: Donald Yandt <donald.yandt@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: android: Remove ion device tree bindings from the
 TODO
Date: Sat, 17 Aug 2019 17:37:58 -0400
Message-Id: <20190817213758.5868-1-donald.yandt@gmail.com>
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

This patch removes the todo for the ion chunk and
carveout device tree bindings.

Signed-off-by: Donald Yandt <donald.yandt@gmail.com>
---
 drivers/staging/android/TODO | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/android/TODO b/drivers/staging/android/TODO
index fbf015cc6..767dd98fd 100644
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
