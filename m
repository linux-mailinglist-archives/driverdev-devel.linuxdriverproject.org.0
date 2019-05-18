Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D420B221D6
	for <lists+driverdev-devel@lfdr.de>; Sat, 18 May 2019 08:35:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 1B3D4228AC;
	Sat, 18 May 2019 06:35:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id U+wLdx8stKN2; Sat, 18 May 2019 06:35:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 6536F228AE;
	Sat, 18 May 2019 06:35:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 565751BF405
 for <devel@linuxdriverproject.org>; Sat, 18 May 2019 06:35:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4E71186A98
 for <devel@linuxdriverproject.org>; Sat, 18 May 2019 06:35:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PwTkOoNysbhY for <devel@linuxdriverproject.org>;
 Sat, 18 May 2019 06:35:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B6CBE86BB3
 for <devel@driverdev.osuosl.org>; Sat, 18 May 2019 06:35:06 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id v80so4742431pfa.3
 for <devel@driverdev.osuosl.org>; Fri, 17 May 2019 23:35:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=5mnk+Z+ykkkxx1iqAG4OvYzZ3Yw4zSRGNz5ufCwke+I=;
 b=Oec2a1TpHwupRsO7p1zgG7T0646zlZ4BtWnC62LOFlWhSgXO4ralnDDEGmu7Dul600
 YKvXWol+sEJm6ef+ezLzngP1hJLSNUWIbNcRDz5hoMyLCtiY9Co5WwVcyeFvjzxUAcg3
 l/61AIet0sn535etImCbm1lQ1dxIUc2pJzPqi5oldmZc7q0dR8Ko+Le2M+nc3kSi4gtA
 fXsT6RDBTjC7KVFvZtYRL9IrXRnItn4SAYfAtd54/oiUd8HW9BMYEf0Lpr1lgwqmczm1
 hotOdAa7z3HXAN/J4bNCQyhGbx0OWpG+S8sGqxjdMTHLwLxTglmQzowsfh5mcSFw09bM
 xuJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=5mnk+Z+ykkkxx1iqAG4OvYzZ3Yw4zSRGNz5ufCwke+I=;
 b=lLcEyAV+X1Iwp4L+j3kNEUqXnz+4ALPew8Y0ypJHmIJiQHiDOrlL7vdRisuOSm9S98
 uUBCpjxLtFH7rzdUW4uDgrm1sMFeTlA7SKAMwlWtQl3hp8vbvZ6LvKzrZB6NkZP4GpB7
 1r0Jkde8xBvwX1e7bzQUR7Ji3VVpITLE9C07IJ8HRkqnBbd3+/iEwaqVHNUXUh9epPNb
 5q7H2z5GSSicB7pvgRAW0lAx0xmKwWxbKh9yZOA9hKkcf/TLFWjMQ5sPX7If+QDqt6QN
 qox4v+zphcGyMJG3jWLJSWKUBfmLM7Lyog0zMCf8mdJBooHeWbanRKp5vfXtCPukdlhU
 dbag==
X-Gm-Message-State: APjAAAWghk2c1MjYC+rKTkcvXOC4UU5m9j4QUM6ZI6qyU+4gWtrtrykt
 QlzrWesrfJPBdEOqMqq119M=
X-Google-Smtp-Source: APXvYqxsHZcdHVIQQH3WQpAnv1MPChzSxIlUVpY8xN0ntf0z+hzEvqot+UU0pQudB6WPJYMAjC1mOQ==
X-Received: by 2002:a63:8242:: with SMTP id w63mr60658747pgd.169.1558161306322; 
 Fri, 17 May 2019 23:35:06 -0700 (PDT)
Received: from localhost.localdomain ([103.227.98.84])
 by smtp.googlemail.com with ESMTPSA id h26sm14347874pgh.26.2019.05.17.23.35.02
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 17 May 2019 23:35:05 -0700 (PDT)
From: Moses Christopher <moseschristopherb@gmail.com>
To: gregkh@linuxfoundation.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1 6/6] staging: vt665*: use help instead of ---help--- in
 Kconfig
Date: Sat, 18 May 2019 12:03:41 +0530
Message-Id: <20190518063341.11178-7-moseschristopherb@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190518063341.11178-1-moseschristopherb@gmail.com>
References: <20190518063341.11178-1-moseschristopherb@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Moses Christopher <moseschristopherb@gmail.com>,
 arnd@arndb.de, insafonov@gmail.com, sparmaintainer@unisys.com,
 hdegoede@redhat.com, forest@alittletooquiet.net, yangbo.lu@nxp.com,
 christian.gromm@microchip.com, davem@davemloft.net, Larry.Finger@lwfinger.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

  - Resolve the following warning from the Kconfig,
    "WARNING: prefer 'help' over '---help---' for new help texts"

Signed-off-by: Moses Christopher <moseschristopherb@gmail.com>
---
 drivers/staging/vt6655/Kconfig | 5 ++---
 drivers/staging/vt6656/Kconfig | 5 ++---
 2 files changed, 4 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/vt6655/Kconfig b/drivers/staging/vt6655/Kconfig
index e4b224fedf5b..d1cd5de46dcf 100644
--- a/drivers/staging/vt6655/Kconfig
+++ b/drivers/staging/vt6655/Kconfig
@@ -2,6 +2,5 @@
 config VT6655
    tristate "VIA Technologies VT6655 support"
    depends on PCI && MAC80211 && m
-   ---help---
-   This is a vendor-written driver for VIA VT6655.
-
+   help
+     This is a vendor-written driver for VIA VT6655.
diff --git a/drivers/staging/vt6656/Kconfig b/drivers/staging/vt6656/Kconfig
index 51e295265ba6..f52a3f1d9a2e 100644
--- a/drivers/staging/vt6656/Kconfig
+++ b/drivers/staging/vt6656/Kconfig
@@ -3,6 +3,5 @@ config VT6656
 	tristate "VIA Technologies VT6656 support"
 	depends on MAC80211 && USB && WLAN && m
 	select FW_LOADER
-	---help---
-	This is a vendor-written driver for VIA VT6656.
-
+	help
+	  This is a vendor-written driver for VIA VT6656.
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
