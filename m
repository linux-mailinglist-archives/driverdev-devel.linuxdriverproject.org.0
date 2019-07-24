Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1255B72482
	for <lists+driverdev-devel@lfdr.de>; Wed, 24 Jul 2019 04:24:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id AE3CE20785;
	Wed, 24 Jul 2019 02:24:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dxVnRgGxVcMh; Wed, 24 Jul 2019 02:24:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id BB7A720512;
	Wed, 24 Jul 2019 02:24:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3547F1BF3BA
 for <devel@linuxdriverproject.org>; Wed, 24 Jul 2019 02:24:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 328B984499
 for <devel@linuxdriverproject.org>; Wed, 24 Jul 2019 02:24:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1fvfH53ncuZd for <devel@linuxdriverproject.org>;
 Wed, 24 Jul 2019 02:24:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
 [209.85.215.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D55B584497
 for <devel@driverdev.osuosl.org>; Wed, 24 Jul 2019 02:24:38 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id o13so20351242pgp.12
 for <devel@driverdev.osuosl.org>; Tue, 23 Jul 2019 19:24:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=mO5yzYTK0OikuwQh1fctNZKRgBsKpNZRnMm6UHcIdsc=;
 b=PM7WMUGD0Zm5EYKAT2FZehgSo3nHuCCm010NH5blFSwGt50UaYE3tY0t1I8q1doV+T
 SCwKhItuY+fdM6Q2tfYnJLCSw1xRh2fwlooIcMKUu1yQ6de8+/k5Z5Ace6eHhpTI3E/W
 OdP/7elMQsAjsymSpQmIsW+kORZrlZdGheH1kQqhwVkyn2W5JfPWHZ088ObKkHwvorW3
 FLfRi231oLr6OXRz/svLrVotKcWYtQ0K4tLc0+c0jJ9KnG7fTUA5J+Wz0bGTgW7kRQ71
 io8MrjK0c5TTJsrDoWZEDwI/rkYBdp+geYhyQqVjWO3mvQUE+0AA2pHXjvAEyD8k1ocZ
 FSYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=mO5yzYTK0OikuwQh1fctNZKRgBsKpNZRnMm6UHcIdsc=;
 b=RXjYoNKFUBJ/xxGxLi4PomM03UNrX4vt+y94Rv4HXgFf2QhDioPxnS8Ge4qN6d6NAP
 AdSKHZi97EhFpaycH+nxN7Og3ry1X49iNI61Bo1HFdPdBxvsTCGdobSD7fQFxhbMP5+v
 HE5kICOksc6t4l+Wof4RA0lYAJSL7PhHy3Qkve7H0uExjubksGBDp5QidTte9OwrMTYM
 EKWsVjRil2hIunezxJcQEgK+IGe7lQbHKrDXSZnzv7pA5RK/QhxwXdEPJkheuDntF4T7
 u6V/wUktg5PFdgGjJ0yqq2+V0pO2jL5FeUd+WVjMPAft6Er7Wu8+1eAH3tBcc+o8TJ1f
 qijw==
X-Gm-Message-State: APjAAAX8aCs9d17wJpk55gVsFIeArM5B344QZe3qcaFxT9JkfP62UowK
 TP2eWJZk5gZ4ZCpHv157mlDDct1aneo=
X-Google-Smtp-Source: APXvYqyeINHHSz7n8kuFhtvdR14nRpqDfPdaNiyjuNzgOwgnrlotu7pdrNeNYXP5dQPGAWV5RKdn9Q==
X-Received: by 2002:a63:9e56:: with SMTP id r22mr22259903pgo.221.1563935078503; 
 Tue, 23 Jul 2019 19:24:38 -0700 (PDT)
Received: from guoguo-omen-lan.lan ([107.151.139.128])
 by smtp.gmail.com with ESMTPSA id s185sm63468029pgs.67.2019.07.23.19.24.33
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 23 Jul 2019 19:24:37 -0700 (PDT)
From: Chuanhong Guo <gch981213@gmail.com>
To: linux-clk@vger.kernel.org (open list:COMMON CLK FRAMEWORK),
 devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE
 BINDINGS), linux-kernel@vger.kernel.org (open list),
 linux-mips@vger.kernel.org (open list:MIPS),
 devel@driverdev.osuosl.org (open list:STAGING SUBSYSTEM)
Subject: [PATCH v2 5/6] staging: mt7621-dts: fix register range of memc node
 in mt7621.dtsi
Date: Wed, 24 Jul 2019 10:23:09 +0800
Message-Id: <20190724022310.28010-6-gch981213@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190724022310.28010-1-gch981213@gmail.com>
References: <20190724022310.28010-1-gch981213@gmail.com>
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
Cc: Mark Rutland <mark.rutland@arm.com>, Weijie Gao <hackpascal@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Stephen Boyd <sboyd@kernel.org>, James Hogan <jhogan@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Ralf Baechle <ralf@linux-mips.org>, Paul Burton <paul.burton@mips.com>,
 Rob Herring <robh+dt@kernel.org>, John Crispin <john@phrozen.org>,
 NeilBrown <neil@brown.name>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The memc node from mt7621.dtsi has incorrect register resource.
Fix it according to the programming guide.

Signed-off-by: Weijie Gao <hackpascal@gmail.com>
Signed-off-by: Chuanhong Guo <gch981213@gmail.com>
---

Change since v1: None.

 drivers/staging/mt7621-dts/mt7621.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/mt7621-dts/mt7621.dtsi b/drivers/staging/mt7621-dts/mt7621.dtsi
index a4c08110094b..d89d68ffa7bc 100644
--- a/drivers/staging/mt7621-dts/mt7621.dtsi
+++ b/drivers/staging/mt7621-dts/mt7621.dtsi
@@ -138,7 +138,7 @@
 
 		memc: memc@5000 {
 			compatible = "mtk,mt7621-memc";
-			reg = <0x300 0x100>;
+			reg = <0x5000 0x1000>;
 		};
 
 		cpc: cpc@1fbf0000 {
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
