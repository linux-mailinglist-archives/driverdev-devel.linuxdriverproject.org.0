Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF13B279130
	for <lists+driverdev-devel@lfdr.de>; Fri, 25 Sep 2020 20:55:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7DC9F87657;
	Fri, 25 Sep 2020 18:55:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FcAcDPJEgk8y; Fri, 25 Sep 2020 18:55:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 154D08764C;
	Fri, 25 Sep 2020 18:55:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8BDB41BF330
 for <devel@linuxdriverproject.org>; Fri, 25 Sep 2020 18:55:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 8873C8764A
 for <devel@linuxdriverproject.org>; Fri, 25 Sep 2020 18:55:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VVw5eYgQaX4x for <devel@linuxdriverproject.org>;
 Fri, 25 Sep 2020 18:55:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f194.google.com (mail-oi1-f194.google.com
 [209.85.167.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2126487648
 for <devel@driverdev.osuosl.org>; Fri, 25 Sep 2020 18:55:38 +0000 (UTC)
Received: by mail-oi1-f194.google.com with SMTP id w16so3853234oia.2
 for <devel@driverdev.osuosl.org>; Fri, 25 Sep 2020 11:55:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=FAfzGDJNkDiJ14AHNIUhDwhIpLlD543otONzFuTYMfQ=;
 b=a0nLcuL75ChtFYJRhumN1ud76X649BDWTKq7M0Gd+BIpr2RNTd5o4jWo19EmWG1JBm
 gz3NV6y8tPX4RQzO4bPJXXsX+b9LpGfEY4c9pmEKHWizMlcv+jD2UVZsbQpukekJTgEQ
 vGCScSxH2phHiGslb5eLX8xG0ZN62WZuMlto6N/RvygkecpgWfCt7t661H9ILknclCjf
 WC88KZ/qf7gEDn7SwjQGyy9UI6Jpl0hU7LTcQjYp2aZdI1VerBdZlkXZ24rVdtftE35u
 Vqsop8YbVd1b1XzkSFbApLryX5n1EDosG9uwizKMDf9/xouhSvp7a71yCo8EL4f5/D3F
 jniQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=FAfzGDJNkDiJ14AHNIUhDwhIpLlD543otONzFuTYMfQ=;
 b=M9qJmHHTve7CTctlxhbECDZI6dOmW20mwDXYp1mVKJpyRbDpISRgi7CvZBbG+ifcj1
 1/xA2U6V62UVoETUIAjY2/9XunxsUqbX5nxx9MtQMNtLs1cZ2u1wo2S4M1ENPPpbzizD
 pe5ErwDG8eca95K8+nXfacXIYFnP4F/nf7ngCgA3oPMgCUP5Z3suovxVAoqx0vnw0yif
 DSxPTzPIL6rEu42ahl0yV35BgA6yoxe8oZEMFLD/7kP4Po3C8dy4tKygUqYz0foF5SDo
 FhTERkNWoU9DNxA1/d7MQ9st18fgWmrR2jAjopK7ibV8F75Lu6wyzhCW1sFJEHpxTb/r
 Hs0w==
X-Gm-Message-State: AOAM530IwxJVY4OfX52tRPWr6MbOV66tS4g9z2TcJp7k35hoI0warpG5
 EwtvXMhXivhCXX8hD9VDFAs/0WgQiyx6oQ==
X-Google-Smtp-Source: ABdhPJwkZ34moCQNFBf05TKwjoZbj7U936pTmdEFEjouvN6MxvXP/fKEn3S1UUhCffOvcSLabV7bNA==
X-Received: by 2002:a17:90b:164e:: with SMTP id
 il14mr776001pjb.5.1601058689432; 
 Fri, 25 Sep 2020 11:31:29 -0700 (PDT)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id r16sm2554546pjo.19.2020.09.25.11.31.24
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 25 Sep 2020 11:31:28 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: gregkh@linuxfoundation.org, mchehab@kernel.org, hverkuil@xs4all.nl,
 laurent.pinchart@ideasonboard.com
Subject: [PATCH RFT/RFC v2 02/47] MAINTAINERS: change maintainer of the zoran
 driver
Date: Fri, 25 Sep 2020 18:30:12 +0000
Message-Id: <1601058657-14042-3-git-send-email-clabbe@baylibre.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1601058657-14042-1-git-send-email-clabbe@baylibre.com>
References: <1601058657-14042-1-git-send-email-clabbe@baylibre.com>
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
Cc: devel@driverdev.osuosl.org, Corentin Labbe <clabbe@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Add myself as maintainer.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 Documentation/media/v4l-drivers/zoran.rst  | 22 +++++++---------------
 MAINTAINERS                                | 10 ++++++++++
 drivers/staging/media/zoran/zoran_card.c   |  5 -----
 drivers/staging/media/zoran/zoran_card.h   |  5 -----
 drivers/staging/media/zoran/zoran_device.c |  5 -----
 drivers/staging/media/zoran/zoran_device.h |  5 -----
 6 files changed, 17 insertions(+), 35 deletions(-)

diff --git a/Documentation/media/v4l-drivers/zoran.rst b/Documentation/media/v4l-drivers/zoran.rst
index d2724a863d1d..a0586514cd8a 100644
--- a/Documentation/media/v4l-drivers/zoran.rst
+++ b/Documentation/media/v4l-drivers/zoran.rst
@@ -549,21 +549,13 @@ at high verbosity. See 'Contacting' on how to contact the developers.
 Maintainers/Contacting
 ----------------------
 
-The driver is currently maintained by Laurent Pinchart and Ronald Bultje
-(<laurent.pinchart@skynet.be> and <rbultje@ronald.bitfreak.net>). For bug
-reports or questions, please contact the mailinglist instead of the developers
-individually. For user questions (i.e. bug reports or how-to questions), send
-an email to <mjpeg-users@lists.sf.net>, for developers (i.e. if you want to
-help programming), send an email to <mjpeg-developer@lists.sf.net>. See
-http://www.sf.net/projects/mjpeg/ for subscription information.
-
-For bug reports, be sure to include all the information as described in
-the section 'It hangs/crashes/fails/whatevers! Help!'. Please make sure
-you're using the latest version (http://mjpeg.sf.net/driver-zoran/).
-
-Previous maintainers/developers of this driver include Serguei Miridonov
-<mirsev@cicese.mx>, Wolfgang Scherr <scherr@net4you.net>, Dave Perks
-<dperks@ibm.net> and Rainer Johanni <Rainer@Johanni.de>.
+Previous maintainers/developers of this driver are
+- Laurent Pinchart <laurent.pinchart@skynet.be>
+- Ronald Bultje rbultje@ronald.bitfreak.net
+- Serguei Miridonov <mirsev@cicese.mx>
+- Wolfgang Scherr <scherr@net4you.net>
+- Dave Perks <dperks@ibm.net>
+- Rainer Johanni <Rainer@Johanni.de>
 
 Driver's License
 ----------------
diff --git a/MAINTAINERS b/MAINTAINERS
index d3126fc2cca2..f2ece9826be3 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -19233,6 +19233,16 @@ T:	git git://git.kernel.org/pub/scm/linux/kernel/git/dlemoal/zonefs.git
 F:	Documentation/filesystems/zonefs.rst
 F:	fs/zonefs/
 
+ZR36067 VIDEO FOR LINUX DRIVER
+M:	Corentin Labbe <clabbe@baylibre.com>
+L:	mjpeg-users@lists.sourceforge.net
+L:	linux-media@vger.kernel.org
+S:	Maintained
+W:	http://mjpeg.sourceforge.net/driver-zoran/
+Q:	https://patchwork.linuxtv.org/project/linux-media/list/
+F:	drivers/staging/media/zoran/
+F:	Documentation/media/v4l-drivers/zoran.rst
+
 ZPOOL COMPRESSED PAGE STORAGE API
 M:	Dan Streetman <ddstreet@ieee.org>
 L:	linux-mm@kvack.org
diff --git a/drivers/staging/media/zoran/zoran_card.c b/drivers/staging/media/zoran/zoran_card.c
index ea10523194e8..d2f82894e8ee 100644
--- a/drivers/staging/media/zoran/zoran_card.c
+++ b/drivers/staging/media/zoran/zoran_card.c
@@ -7,11 +7,6 @@
  *
  * Copyright (C) 2000 Serguei Miridonov <mirsev@cicese.mx>
  *
- * Currently maintained by:
- *   Ronald Bultje    <rbultje@ronald.bitfreak.net>
- *   Laurent Pinchart <laurent.pinchart@skynet.be>
- *   Mailinglist      <mjpeg-users@lists.sf.net>
- *
  * This program is free software; you can redistribute it and/or modify
  * it under the terms of the GNU General Public License as published by
  * the Free Software Foundation; either version 2 of the License, or
diff --git a/drivers/staging/media/zoran/zoran_card.h b/drivers/staging/media/zoran/zoran_card.h
index 0cdb7d34926d..53ed511ce546 100644
--- a/drivers/staging/media/zoran/zoran_card.h
+++ b/drivers/staging/media/zoran/zoran_card.h
@@ -7,11 +7,6 @@
  *
  * Copyright (C) 2000 Serguei Miridonov <mirsev@cicese.mx>
  *
- * Currently maintained by:
- *   Ronald Bultje    <rbultje@ronald.bitfreak.net>
- *   Laurent Pinchart <laurent.pinchart@skynet.be>
- *   Mailinglist      <mjpeg-users@lists.sf.net>
- *
  * This program is free software; you can redistribute it and/or modify
  * it under the terms of the GNU General Public License as published by
  * the Free Software Foundation; either version 2 of the License, or
diff --git a/drivers/staging/media/zoran/zoran_device.c b/drivers/staging/media/zoran/zoran_device.c
index 22b27632762d..04162be80420 100644
--- a/drivers/staging/media/zoran/zoran_device.c
+++ b/drivers/staging/media/zoran/zoran_device.c
@@ -7,11 +7,6 @@
  *
  * Copyright (C) 2000 Serguei Miridonov <mirsev@cicese.mx>
  *
- * Currently maintained by:
- *   Ronald Bultje    <rbultje@ronald.bitfreak.net>
- *   Laurent Pinchart <laurent.pinchart@skynet.be>
- *   Mailinglist      <mjpeg-users@lists.sf.net>
- *
  * This program is free software; you can redistribute it and/or modify
  * it under the terms of the GNU General Public License as published by
  * the Free Software Foundation; either version 2 of the License, or
diff --git a/drivers/staging/media/zoran/zoran_device.h b/drivers/staging/media/zoran/zoran_device.h
index a507aaad4ebb..816d48b09be9 100644
--- a/drivers/staging/media/zoran/zoran_device.h
+++ b/drivers/staging/media/zoran/zoran_device.h
@@ -7,11 +7,6 @@
  *
  * Copyright (C) 2000 Serguei Miridonov <mirsev@cicese.mx>
  *
- * Currently maintained by:
- *   Ronald Bultje    <rbultje@ronald.bitfreak.net>
- *   Laurent Pinchart <laurent.pinchart@skynet.be>
- *   Mailinglist      <mjpeg-users@lists.sf.net>
- *
  * This program is free software; you can redistribute it and/or modify
  * it under the terms of the GNU General Public License as published by
  * the Free Software Foundation; either version 2 of the License, or
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
