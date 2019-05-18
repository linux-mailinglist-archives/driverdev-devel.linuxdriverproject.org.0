Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id F364E221D2
	for <lists+driverdev-devel@lfdr.de>; Sat, 18 May 2019 08:34:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 80BA986A8D;
	Sat, 18 May 2019 06:34:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sOiehubxTq_Z; Sat, 18 May 2019 06:34:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 47F3986A98;
	Sat, 18 May 2019 06:34:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 895541BF405
 for <devel@linuxdriverproject.org>; Sat, 18 May 2019 06:34:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 86AEC86074
 for <devel@linuxdriverproject.org>; Sat, 18 May 2019 06:34:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wFltmZ3oJBfp for <devel@linuxdriverproject.org>;
 Sat, 18 May 2019 06:34:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0E9E48435A
 for <devel@driverdev.osuosl.org>; Sat, 18 May 2019 06:34:50 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id t87so4744496pfa.2
 for <devel@driverdev.osuosl.org>; Fri, 17 May 2019 23:34:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=wc5ne2C0qlrJ59+3B2aOlKeT4GO/cZZs3Ekwp68VN98=;
 b=ipnrZSoo0H+Z2+SnBu85rH1f6qyomy6PObAPvmmSEHQDsSayThOZWxg/Ds+MguyT4n
 2mLSA/cAPSYkrhL6BP5IECMuiS01QZTK+f6pNstsr1tLkPqc/nZXaKQTTq0BZk6qNbpu
 lDwvgECaj0P0BXOE5PV8B7s2vuBevXa06H+2/H+GSdQ21X9euS/h96Z3jQwBdLv8gauA
 loTGGi1BRilpjTtHEZArUjKakW8StZ0LPxLobYIGa8q93qOIRlBtRzJYepSPI6w88ylR
 GL8NXru68D39VDU4RsLwTTT6jGEicgeGt8EvMF6vbU2ZWWF87DuQRWSJhNDahPCd+IQB
 dYpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=wc5ne2C0qlrJ59+3B2aOlKeT4GO/cZZs3Ekwp68VN98=;
 b=GFt/bQRS49tAPnaQhOwJRVKR2XScqsiNO/5lQNKB5OQ9ZwPNqN8o81NaRR8bYdwRNp
 dL2McY2m/ZAl5XmsspWylYHsCoWYY5d1CuzOns8MH61HVkldK/NWn7gGdf9kmif4qxRF
 /h5/JDmiysl1L6c3DYyhwB5xZPMgXam2O0raqWrLaD+aUzuFe4/LRuVWSwAWBgBjP/0j
 iZagu725FdWlnAy8eQqCLsH6AK2SbTKz5WnQsjlRfg8fJ+bTkO8GVVWPIvQgoZ06QFL2
 UdubPVW//3VzQvBxKnISMkVVfqKIApZ54hT8Ehvv1nK0SWUtfCwnrYvpwlsp6W1AuvG+
 ww2g==
X-Gm-Message-State: APjAAAUG0291zIEoRIIumCja78czat+JSulyR8A70Ql4PbC0JvzRDxun
 V7200LjQvaMs3+79B21NWb0=
X-Google-Smtp-Source: APXvYqw5bqfqOoPCJHuwau2XqUoILQqXQK3PrEqTkaTBMFQMfx3iPTdCzhOVf3nQF1UEp3xBFaqV0g==
X-Received: by 2002:a65:42cd:: with SMTP id l13mr8199475pgp.72.1558161289605; 
 Fri, 17 May 2019 23:34:49 -0700 (PDT)
Received: from localhost.localdomain ([103.227.98.84])
 by smtp.googlemail.com with ESMTPSA id h26sm14347874pgh.26.2019.05.17.23.34.45
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 17 May 2019 23:34:49 -0700 (PDT)
From: Moses Christopher <moseschristopherb@gmail.com>
To: gregkh@linuxfoundation.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1 3/6] staging: unisys: use help instead of ---help--- in
 Kconfig
Date: Sat, 18 May 2019 12:03:38 +0530
Message-Id: <20190518063341.11178-4-moseschristopherb@gmail.com>
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
 drivers/staging/unisys/Kconfig | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/unisys/Kconfig b/drivers/staging/unisys/Kconfig
index dc5e1bddc085..43fe1ce538e1 100644
--- a/drivers/staging/unisys/Kconfig
+++ b/drivers/staging/unisys/Kconfig
@@ -4,8 +4,8 @@
 #
 menuconfig UNISYSSPAR
 	bool "Unisys SPAR driver support"
-	---help---
-	Support for the Unisys SPAR drivers
+	help
+	  Support for the Unisys SPAR drivers
 
 if UNISYSSPAR
 
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
