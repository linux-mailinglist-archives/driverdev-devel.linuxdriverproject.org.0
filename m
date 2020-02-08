Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7940815636F
	for <lists+driverdev-devel@lfdr.de>; Sat,  8 Feb 2020 09:36:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 90A9B88035;
	Sat,  8 Feb 2020 08:36:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7OvRFDK9pnIV; Sat,  8 Feb 2020 08:36:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C069087F12;
	Sat,  8 Feb 2020 08:36:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DD25A1BF46A
 for <devel@linuxdriverproject.org>; Sat,  8 Feb 2020 08:36:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D567786637
 for <devel@linuxdriverproject.org>; Sat,  8 Feb 2020 08:36:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PfPyXnG21RwH for <devel@linuxdriverproject.org>;
 Sat,  8 Feb 2020 08:36:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f67.google.com (mail-pj1-f67.google.com
 [209.85.216.67])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 099C686599
 for <devel@driverdev.osuosl.org>; Sat,  8 Feb 2020 08:36:32 +0000 (UTC)
Received: by mail-pj1-f67.google.com with SMTP id e9so1945030pjr.4
 for <devel@driverdev.osuosl.org>; Sat, 08 Feb 2020 00:36:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=0drD/VYgyxbEPwlFZ/4hraIRVmOTV1BqlQFDN4+1nYI=;
 b=fU456ijMc4tAo0eogyAfCt0BxsHuaT4ZN7yyucvK9CUndZqjyu6l5iioNa6lQfZ2G2
 AhVAwXUkR3jDKMSHMJc9+rBYNUc1zsvrxXwCeCqH2/a9yfgds5hHFonuxkZNJywp7+wt
 Z51D1jK9N+tVM3l/bK2O/p/MwAffL7hJ471CbXzOc1Up+GVOhZLxmiQn36NtXNVBFQTz
 yKyhV305cqY7SH/az2MjCu9Pqtbqyc5/MMui6aziyw5in4p5+UnqpkyffR+XgYmWmfn1
 dYx6V86I8AMyTq3Z02CVXp0Ykz8WVr7gdDlMkTZVU/2mfl+nUn+23bwu9UpuGiPXdASX
 sU3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=0drD/VYgyxbEPwlFZ/4hraIRVmOTV1BqlQFDN4+1nYI=;
 b=MNYcS+mkm8ilqK0yRtiWd1DOjD/BNIotyc66+9Jb/0H8eASGuHklT6dli+3S9PkAHQ
 EwSKBrDC29LLIhjN/YgHmsn+TYS/LVcbw8qM8QFsntkdVn4nQraY4l4FTfh0jPXpNIuB
 qmXteH4Ef5PpX62Rrfpfou/XdhF74HvvDH8aU4WiMaeEONU2oKaD2iZExlD4w3pnBtFL
 OsmtlnaJS0yyJLZqeIi93W/tqpZ6EDCsT8XQQL2+E2NK+/p+Tib3hL02BGbDZm+m7o+x
 WDnkqSTDhh/PiaXAfoBpUVCb/P7kPltjNvw5GwsaB0WXZ8X3w5yA+hs/Y/Zc1aIDQMdE
 hziA==
X-Gm-Message-State: APjAAAXwhgbWZqgeLmbD1tLTgicx6+3X4uU/bIt3viblltLYRH3MMu18
 PhuNq41fnRD2CbLjmpbZQYEORpwrz8LD4w==
X-Google-Smtp-Source: APXvYqzD9cf+gdedofOd466S6KUlWEFLkOQi4jjdzt017+C5NMBY12oqrSyDxOcz2nKTMASov8IPpw==
X-Received: by 2002:a17:90a:7d07:: with SMTP id
 g7mr9197302pjl.17.1581150991504; 
 Sat, 08 Feb 2020 00:36:31 -0800 (PST)
Received: from nishad ([106.51.232.103])
 by smtp.gmail.com with ESMTPSA id q29sm5503450pgc.15.2020.02.08.00.36.29
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 08 Feb 2020 00:36:31 -0800 (PST)
Date: Sat, 8 Feb 2020 14:06:25 +0530
From: Nishad Kamdar <nishadkamdar@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Joe Perches <joe@perches.com>,
 Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Subject: [PATCH] staging: pi433: Use the correct style for SPDX License
 Identifier
Message-ID: <20200208083621.GA3797@nishad>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch corrects the SPDX License Identifier style in
header files related to pi433 radio module drivers.
It assigns explicit block comment to the SPDX License Identifier.

Changes made by using a script provided by Joe Perches here:
https://lkml.org/lkml/2019/2/7/46.

Suggested-by: Joe Perches <joe@perches.com>
Signed-off-by: Nishad Kamdar <nishadkamdar@gmail.com>
---
 drivers/staging/pi433/pi433_if.h       | 4 ++--
 drivers/staging/pi433/rf69.h           | 4 ++--
 drivers/staging/pi433/rf69_enum.h      | 4 ++--
 drivers/staging/pi433/rf69_registers.h | 4 ++--
 4 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/pi433/pi433_if.h b/drivers/staging/pi433/pi433_if.h
index 9feb95c431cb..16c5b7fba249 100644
--- a/drivers/staging/pi433/pi433_if.h
+++ b/drivers/staging/pi433/pi433_if.h
@@ -1,5 +1,5 @@
-/* SPDX-License-Identifier: GPL-2.0+
- *
+/* SPDX-License-Identifier: GPL-2.0+ */
+/*
  * include/linux/TODO
  *
  * userspace interface for pi433 radio module
diff --git a/drivers/staging/pi433/rf69.h b/drivers/staging/pi433/rf69.h
index d43a8d87d5d3..b648ba5fff89 100644
--- a/drivers/staging/pi433/rf69.h
+++ b/drivers/staging/pi433/rf69.h
@@ -1,5 +1,5 @@
-/* SPDX-License-Identifier: GPL-2.0+
- *
+/* SPDX-License-Identifier: GPL-2.0+ */
+/*
  * hardware abstraction/register access for HopeRf rf69 radio module
  *
  * Copyright (C) 2016 Wolf-Entwicklungen
diff --git a/drivers/staging/pi433/rf69_enum.h b/drivers/staging/pi433/rf69_enum.h
index 3ee1952245c2..fbf56fcf5fe8 100644
--- a/drivers/staging/pi433/rf69_enum.h
+++ b/drivers/staging/pi433/rf69_enum.h
@@ -1,5 +1,5 @@
-/* SPDX-License-Identifier: GPL-2.0+
- *
+/* SPDX-License-Identifier: GPL-2.0+ */
+/*
  * enumerations for HopeRf rf69 radio module
  *
  * Copyright (C) 2016 Wolf-Entwicklungen
diff --git a/drivers/staging/pi433/rf69_registers.h b/drivers/staging/pi433/rf69_registers.h
index be5497cdace0..a170c66c3d5b 100644
--- a/drivers/staging/pi433/rf69_registers.h
+++ b/drivers/staging/pi433/rf69_registers.h
@@ -1,5 +1,5 @@
-/* SPDX-License-Identifier: GPL-2.0+
- *
+/* SPDX-License-Identifier: GPL-2.0+ */
+/*
  * register description for HopeRf rf69 radio module
  *
  * Copyright (C) 2016 Wolf-Entwicklungen
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
