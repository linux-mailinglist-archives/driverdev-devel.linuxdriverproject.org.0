Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7259F85E30
	for <lists+driverdev-devel@lfdr.de>; Thu,  8 Aug 2019 11:25:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id ADB8886CC7;
	Thu,  8 Aug 2019 09:25:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NgwAYfASA4Fm; Thu,  8 Aug 2019 09:25:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 861C68575A;
	Thu,  8 Aug 2019 09:25:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7A53C1BF5F8
 for <devel@linuxdriverproject.org>; Thu,  8 Aug 2019 09:25:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 750A98575A
 for <devel@linuxdriverproject.org>; Thu,  8 Aug 2019 09:25:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0mzMCIyBaxEx for <devel@linuxdriverproject.org>;
 Thu,  8 Aug 2019 09:25:12 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id F256A85735
 for <devel@driverdev.osuosl.org>; Thu,  8 Aug 2019 09:25:11 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4352B2173C;
 Thu,  8 Aug 2019 09:25:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565256311;
 bh=b1/XEb2Q708aFr6cmaQm262dAEP3TeBoP1EeklqSEFk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=SKTQ+16T9fQpQx4DX/KDUlHi5MJl/Ko+FJcT4OCEhngsFj5sUftKDb+895SyJfFVK
 J0zr148nxRyknJpf/vhyiVcZ94E8XYOhM2UUJH5X/7G8hO6YdUwyC4Z6eOdcrEAsiW
 /+3kQf/4EN3q5y3DxG/eZWHabI2k1oYsFHZLm1pA=
Date: Thu, 8 Aug 2019 11:25:09 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Joe Perches <joe@perches.com>
Subject: [PATCH] MAINTAINERS: mark wusbcore and UWB as obsolete
Message-ID: <20190808092509.GA20173@kroah.com>
References: <20190806101509.GA11280@kroah.com>
 <b73f09c944625a40b2589e9bac7f8bd22a711ed3.camel@perches.com>
 <20190806113501.GA18443@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190806113501.GA18443@kroah.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
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
Cc: devel@driverdev.osuosl.org, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Joe rightly points out that we should be using the "Obsolete" status for
these two subsystems.

Also I got the path name wrong for the wusbcore tree.

Reported-by: Joe Perches <joe@perches.com>
Fixes: 71ed79b0e4be ("USB: Move wusbcore and UWB to staging as it is obsolete")
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

diff --git a/MAINTAINERS b/MAINTAINERS
index f4463fb48249..6f2d988fe7b0 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -3801,8 +3801,8 @@ F:	scripts/extract-cert.c
 
 CERTIFIED WIRELESS USB (WUSB) SUBSYSTEM:
 L:	devel@driverdev.osuosl.org
-S:	Orphan
-F:	drivers/staging/wbusbcore/
+S:	Obsolete
+F:	drivers/staging/wusbcore/
 
 CFAG12864B LCD DRIVER
 M:	Miguel Ojeda Sandonis <miguel.ojeda.sandonis@gmail.com>
@@ -16443,7 +16443,7 @@ F:	include/linux/ulpi/
 
 ULTRA-WIDEBAND (UWB) SUBSYSTEM:
 L:	devel@driverdev.osuosl.org
-S:	Orphan
+S:	Obsolete
 F:	drivers/staging/uwb/
 
 UNICODE SUBSYSTEM:
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
