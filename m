Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0657627201F
	for <lists+driverdev-devel@lfdr.de>; Mon, 21 Sep 2020 12:20:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 251F42051B;
	Mon, 21 Sep 2020 10:20:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SlQWCFmbaBW1; Mon, 21 Sep 2020 10:20:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 0EA672050C;
	Mon, 21 Sep 2020 10:20:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C3F8B1BF3F4
 for <devel@linuxdriverproject.org>; Mon, 21 Sep 2020 10:20:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C0A8E86819
 for <devel@linuxdriverproject.org>; Mon, 21 Sep 2020 10:20:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0Oca-T8nH0j6 for <devel@linuxdriverproject.org>;
 Mon, 21 Sep 2020 10:20:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by whitealder.osuosl.org (Postfix) with ESMTPS id AD2F586818
 for <devel@driverdev.osuosl.org>; Mon, 21 Sep 2020 10:20:35 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id o5so12104097wrn.13
 for <devel@driverdev.osuosl.org>; Mon, 21 Sep 2020 03:20:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=FAfzGDJNkDiJ14AHNIUhDwhIpLlD543otONzFuTYMfQ=;
 b=ERaArSVnusIZhh3BpFKhA0YH7Rj3lF6LCWbq+jqxKQnP+9MFEZh1E4yg5l15aO/SH0
 e5e9FkbM8T+nBXr70hn4TRSMMkyAqrK2EvTVKzFR6BFdaN0pykgjpnAQvlhD3xx7Smjm
 hHNyTpdVIwexCovVJDNdKDXac0xAD8tfA2ThaDvsIr8VLhW+AyAV/B58n3MG/w0CLP9D
 hWlyEyXqjFnM8M6wGw9DzDPsAe2pupXq7BeOJ2DJ8T/DnDWEJT7zChK5qPyK0uEcOjGo
 65DikEPIE+20NVDUZpV0wcsHFQ/WVol4ufFxvbz3uaRjLfnIF/qoKTe3uvuaqssVIQnu
 o3Gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=FAfzGDJNkDiJ14AHNIUhDwhIpLlD543otONzFuTYMfQ=;
 b=LkCVYdPz8ZwgAOlbQbicig72EJJLrnFgCWWoFp8vn5zLPzslzGm/HvZ0OBSzCjOaK4
 Gxqb0YCmLeM66GE/k7i1yZi3rkOniXR5JEX1XevLgUzVvXTPzFEfzRwciAILd9lcZjnh
 oXpHPMwNsdSAcMDoJCmvCCck0NjKxWvUoeiqcx2dkXw17/gbQNm+dTjbVWLlX3gppz+X
 hhNLqLG9GGyd3zY73Wl7HGdXa37o3a0N6HoPA53KvEvrYiJaQU87XeyThlvfCMnjbvZr
 Ch/NLA1BLvxrJnEde0QMYap1IBj5fm8cFMQMvMrBKxgUJHHHhaEiR8ZWZanH9lErILUS
 adtw==
X-Gm-Message-State: AOAM532tfb7P/HAncRmEPgTjPjrYQEehL9hLfLuUB4gbAvSQpI5UoStm
 dQFeukGKpKSPTPB7ujYXC6oo7gxr1hpJhQ==
X-Google-Smtp-Source: ABdhPJwRp8fa0HmGYgcCS7nKvEdN1zyxKC4UrtLKMKxQZ5icXeLaTxukOPBl8Aw2G4MO2Lu2ST4EHg==
X-Received: by 2002:adf:f852:: with SMTP id d18mr51733075wrq.245.1600683634013; 
 Mon, 21 Sep 2020 03:20:34 -0700 (PDT)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id l17sm18804629wme.11.2020.09.21.03.20.33
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 21 Sep 2020 03:20:33 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: gregkh@linuxfoundation.org, laurent.pinchart@skynet.be, mchehab@kernel.org
Subject: [PATCH RFT/RFC 02/49] MAINTAINERS: change maintainer of the zoran
 driver
Date: Mon, 21 Sep 2020 10:19:37 +0000
Message-Id: <1600683624-5863-3-git-send-email-clabbe@baylibre.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1600683624-5863-1-git-send-email-clabbe@baylibre.com>
References: <1600683624-5863-1-git-send-email-clabbe@baylibre.com>
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
