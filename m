Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08ABF96CF4
	for <lists+driverdev-devel@lfdr.de>; Wed, 21 Aug 2019 01:12:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0B0C58862D;
	Tue, 20 Aug 2019 23:12:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Rhu82-XMl5pk; Tue, 20 Aug 2019 23:12:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 71FC38860D;
	Tue, 20 Aug 2019 23:12:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 723F01BF424
 for <devel@linuxdriverproject.org>; Tue, 20 Aug 2019 23:12:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 6EB8122D10
 for <devel@linuxdriverproject.org>; Tue, 20 Aug 2019 23:12:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SjWrYgvevE5R for <devel@linuxdriverproject.org>;
 Tue, 20 Aug 2019 23:12:29 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from sender4-of-o55.zoho.com (sender4-of-o55.zoho.com
 [136.143.188.55])
 by silver.osuosl.org (Postfix) with ESMTPS id 4A6A122CCE
 for <devel@driverdev.osuosl.org>; Tue, 20 Aug 2019 23:12:29 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; t=1566342745; cv=none; d=zoho.com; s=zohoarc; 
 b=JBLbx18X5OTrA9oojlt/c13sORyikSozbxBL8IdstkC+Bjm+zwjEZV73CM2goiqyZEYfywZcALq+JEs6Rvg2Di0YYmpU08g9viA5q9TBT22WIO7e1/9bLxc3cxWTn7UHWW8mlWSkuLTBMx/NjbLLeIFtNkTtQ1svcoxbNQEdrf0=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.com;
 s=zohoarc; t=1566342745;
 h=Content-Type:Content-Transfer-Encoding:Cc:Date:From:MIME-Version:Message-ID:Subject:To:ARC-Authentication-Results;
 bh=EOQbmm683ZQeRo5IEAuNfp/GUzc+3sakNt4tVfxkZFk=; 
 b=iTCkeJmWtGC1zM1asYQ1HSMpZz6lT5aGAPhWZzT4eAbF+MTGkkd50DlP1X9ZcJOnYQR0S3UkdyB+voHhSD3pOPneDpbedUhG22znXiWsrEkylePdA0M7s2PwzSvEqMfl1EvpETcZ6+NUl9QCSMzcOxw9e4p7voV5xVoV8+pmX4E=
ARC-Authentication-Results: i=1; mx.zoho.com; dkim=pass  header.i=brennan.io;
 spf=pass  smtp.mailfrom=stephen@brennan.io;
 dmarc=pass header.from=<stephen@brennan.io> header.from=<stephen@brennan.io>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1566342745; 
 s=selector01; d=brennan.io; i=stephen@brennan.io;
 h=From:To:Cc:Message-ID:Subject:Date:MIME-Version:Content-Transfer-Encoding:Content-Type;
 l=1145; bh=EOQbmm683ZQeRo5IEAuNfp/GUzc+3sakNt4tVfxkZFk=;
 b=ZSlW5UE71QrT7DPTq6myCafxxWn+pT5tyTfaRPQPCuRuqlELATC3S+dnczbQEcov
 C8a4d0XNlJ6w+oBKW40++1vnsrtgGwikQ3SbY9Twn9zAK740OBl2kpvI971caSiPSJ3
 BWht5PrKJ6e76R+TTGlIVpS9jO+Vm+q9baGuT2dY=
Received: from localhost (wsip-184-188-36-2.sd.sd.cox.net [184.188.36.2]) by
 mx.zohomail.com with SMTPS id 1566342744871684.1076553847704;
 Tue, 20 Aug 2019 16:12:24 -0700 (PDT)
From: Stephen Brennan <stephen@brennan.io>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Message-ID: <20190820231156.30031-1-stephen@brennan.io>
Subject: [PATCH 0/3] staging: rtl8192u: coding style fixes in ieee80211
Date: Tue, 20 Aug 2019 16:11:53 -0700
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-ZohoMailClient: External
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
Cc: devel@driverdev.osuosl.org, Stephen Brennan <stephen@brennan.io>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Addressed some spacing, brace placement, and macro alignment in this driver. I
do not have the relevent hardware, but I verified that the
drivers/staging/rtl8192u module built between each patch.

Stephen Brennan (3):
  staging: rtl8192u: fix OPEN_BRACE errors in ieee80211
  staging: rtl8192u: fix macro alignment in ieee80211
  staging: rtl8192u: fix spacing in ieee80211

 drivers/staging/rtl8192u/ieee80211/dot11d.c   |  10 +-
 .../staging/rtl8192u/ieee80211/ieee80211.h    |  38 +++---
 .../rtl8192u/ieee80211/ieee80211_crypt.c      |   2 +-
 .../rtl8192u/ieee80211/ieee80211_crypt_tkip.c |  22 ++--
 .../rtl8192u/ieee80211/ieee80211_crypt_wep.c  |   4 +-
 .../staging/rtl8192u/ieee80211/ieee80211_rx.c | 118 ++++++-----------
 .../rtl8192u/ieee80211/ieee80211_softmac_wx.c |  14 +-
 .../staging/rtl8192u/ieee80211/ieee80211_tx.c | 121 ++++++++----------
 .../staging/rtl8192u/ieee80211/ieee80211_wx.c |  35 +++--
 .../rtl8192u/ieee80211/rtl819x_BAProc.c       |  12 +-
 .../staging/rtl8192u/ieee80211/rtl819x_HT.h   |  17 ++-
 .../rtl8192u/ieee80211/rtl819x_TSProc.c       |  14 +-
 12 files changed, 174 insertions(+), 233 deletions(-)

-- 
2.22.0



_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
