Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1954922B564
	for <lists+driverdev-devel@lfdr.de>; Thu, 23 Jul 2020 20:07:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1625E84E8C;
	Thu, 23 Jul 2020 18:07:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bn9-DCClZyTz; Thu, 23 Jul 2020 18:07:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2C13884B1C;
	Thu, 23 Jul 2020 18:07:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C4CFE1BF3C2
 for <devel@linuxdriverproject.org>; Thu, 23 Jul 2020 18:07:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id AF7162040B
 for <devel@linuxdriverproject.org>; Thu, 23 Jul 2020 18:07:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FMyHhCungr5f for <devel@linuxdriverproject.org>;
 Thu, 23 Jul 2020 18:07:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by silver.osuosl.org (Postfix) with ESMTPS id 9CDDF203A8
 for <devel@driverdev.osuosl.org>; Thu, 23 Jul 2020 18:07:31 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id o2so6042512wmh.2
 for <devel@driverdev.osuosl.org>; Thu, 23 Jul 2020 11:07:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=wBJkfvCOZyc81ojTqQT3ESIFT3XyYfjTfodi1aPt+nE=;
 b=vBWC4BFWxoQ3LrcjrDvJrZH7UWrLeHoqpZB96XyLvMPGCtVpHsoNpuIbJnXnjq4yWm
 vo6uZ3g+z9vMmWdau9QLisc2cyK3UxBb7jbodkxuUjHPZgOFUtq5gH4IvoEHZjQFfz97
 AnbnPvxHOryRiQ50xW55yVT+WWzMxinoJurb8aceqADrGP5sFZsaeR0Sd3TnjeuGhpsn
 XJsxnoBI/9gV+dc9zVWA7hFBlnhJrjVlQTklVAw1d2htgctWIAN0P4vczHJEYMX/HChY
 AAz4OpnATOr/UFu5HySHp4gxxFuwRLqDDmj3++ducAOukaUb3rSSJY7R48l6hq5NFrye
 fftQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=wBJkfvCOZyc81ojTqQT3ESIFT3XyYfjTfodi1aPt+nE=;
 b=Jl1j1cSr7MiYHCCr4pbH3jaq3SmKAZUMnJeVlHHZcXO4sjvMuk5TwiHEq+8JVU5bMP
 a7Qxcjz57t2NsyvFrIwEsmDRLA2ahE6waUEujtVxIuVXp0wI8a0cBJhbvmtNj119j6Ml
 TJ2GzOpiUFKd2Dyg0MEnOvI7ywLrC6MKMb4dZ8zsunYzHnzNv/CXse+elbR0LNNL9lPM
 cF4IlbkW/6n3jAAS1W93q6+BNebNq0gQdE6xDDSFmpEJM+Q0oYeA7gL4rIddQude1U+R
 SJJipiBHdxjzp2r1ZGSc9+rwDs17br2Eb/fLtaFTKmi+X6fiFgo9aZ7BQkjxQuDt87Gv
 jd3A==
X-Gm-Message-State: AOAM532QOangRNUbV2ZTWiUDu5svpD/AIJw4H//miMPbiKnmm77Qf0xe
 E1/3R3V2mu9S/hZwgafsHe0=
X-Google-Smtp-Source: ABdhPJykbDyBx5oqb8XWMu/eo8SzcwM1HastQpYeTmCY46cuigp/qUVDVoBkJTbZCRoy49cV9QYARQ==
X-Received: by 2002:a1c:770f:: with SMTP id t15mr5103654wmi.22.1595527649969; 
 Thu, 23 Jul 2020 11:07:29 -0700 (PDT)
Received: from musamaanjum ([111.119.187.25])
 by smtp.gmail.com with ESMTPSA id p15sm1568184wrj.61.2020.07.23.11.07.26
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 23 Jul 2020 11:07:29 -0700 (PDT)
Date: Thu, 23 Jul 2020 23:07:23 +0500
From: Muhammad Usama Anjum <musamaanjum@gmail.com>
To: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v3] staging: octeon: Add the license identifier
Message-ID: <20200723180723.GA30699@musamaanjum>
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
Cc: musamaanjum@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch fixes the checkpatch.pl warning:
WARNING: Missing or malformed SPDX-License-Identifier tag

Add a the SPDX-License-Identifier tag on line 1

Other files in this folder have GPL-2.0 license. So this file should
have the same license which was missing before and checkpatch.pl was
giving the warning.

Signed-off-by: Muhammad Usama Anjum <musamaanjum@gmail.com>
---
Changes in v3:
  - Removed an empty line which I had added in v1
  - Updated the commit message to include why this patch is needed

 drivers/staging/octeon/octeon-stubs.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/octeon/octeon-stubs.h b/drivers/staging/octeon/octeon-stubs.h
index d06743504f2b..3f8e5713b8a8 100644
--- a/drivers/staging/octeon/octeon-stubs.h
+++ b/drivers/staging/octeon/octeon-stubs.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 #define CONFIG_CAVIUM_OCTEON_CVMSEG_SIZE	512
 
 #ifndef XKPHYS_TO_PHYS
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
