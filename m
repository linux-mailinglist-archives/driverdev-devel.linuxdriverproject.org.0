Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD18797D9D
	for <lists+driverdev-devel@lfdr.de>; Wed, 21 Aug 2019 16:51:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 65D1A86FF9;
	Wed, 21 Aug 2019 14:51:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wiFqvIcq+7-v; Wed, 21 Aug 2019 14:51:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 37E82857E6;
	Wed, 21 Aug 2019 14:51:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E3BBC1BF360
 for <devel@linuxdriverproject.org>; Wed, 21 Aug 2019 14:50:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id DDCC486C18
 for <devel@linuxdriverproject.org>; Wed, 21 Aug 2019 14:50:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KLx9fwcxS-uW for <devel@linuxdriverproject.org>;
 Wed, 21 Aug 2019 14:50:54 +0000 (UTC)
X-Greylist: delayed 00:15:04 by SQLgrey-1.7.6
Received: from sender-of-o52.zoho.com (sender-of-o52.zoho.com [135.84.80.217])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 84CA586C12
 for <devel@driverdev.osuosl.org>; Wed, 21 Aug 2019 14:50:54 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; t=1566398145; cv=none; d=zoho.com; s=zohoarc; 
 b=VNRKugRJEyO5IqDtKrg6+UjxGs+9vxF6KJPUpO6H56xmqO+ibGwIfd0Xi9LXMHdrtG5hx2STjUqcdyO6/H5FXmScr2i4x1JfeQw4HD+hOIvEMrMIK83GRkEuYlVnTfOLSfIUVcAoyQ+ewAy65M+4WZ5P6WwxRpMT9P7H/n3fD9o=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.com;
 s=zohoarc; t=1566398145;
 h=Content-Type:Content-Transfer-Encoding:Cc:Date:From:MIME-Version:Message-ID:Subject:To:ARC-Authentication-Results;
 bh=f22V/qNVlYw5I4WKBZDrjRWbTvWAuj4evwp6Q6Y8Qa8=; 
 b=FUHcyRQhIEIOsLbFnGW6WKa6PcIX1BGuBwMZ4i30erG7QPdYrl7ytjc7J9AN2nV5XvFaGDIgSgavlwBFdTe7JoGbdwNiKuBxdcz3QnnTuhMbymIgRsSwgQFWW8+YCS5YaS9TuPMweXgb5Vstp3seowh5PKWY/vi84nGM1CQzz2E=
ARC-Authentication-Results: i=1; mx.zoho.com; dkim=pass  header.i=brennan.io;
 spf=pass  smtp.mailfrom=stephen@brennan.io;
 dmarc=pass header.from=<stephen@brennan.io> header.from=<stephen@brennan.io>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1566398145; 
 s=selector01; d=brennan.io; i=stephen@brennan.io;
 h=From:To:Cc:Message-ID:Subject:Date:MIME-Version:Content-Transfer-Encoding:Content-Type;
 l=1232; bh=f22V/qNVlYw5I4WKBZDrjRWbTvWAuj4evwp6Q6Y8Qa8=;
 b=n9LjiHkZc8f04AI3V+jiVd5f8coz/EHRnvw0jwlOvEhtg8Aou2/szd4VkKigg//m
 FHKhuxIfrS8kjO6DHIhLgZK5ccWM8A1+1Vg0eGRn5qyg+9ZPoR51KOvzbqqZ27vfYCj
 zjR/5lJziYHdxbVMS5RNE5Ja3hPzbl0WE/8blpmo=
Received: from localhost (67.218.105.90 [67.218.105.90]) by mx.zohomail.com
 with SMTPS id 1566398144866732.0878686594964;
 Wed, 21 Aug 2019 07:35:44 -0700 (PDT)
From: Stephen Brennan <stephen@brennan.io>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Message-ID: <20190821143540.4501-1-stephen@brennan.io>
Subject: [PATCH v2 0/3] staging: rtl8192u: coding style fixes in ieee80211
Date: Wed, 21 Aug 2019 07:35:37 -0700
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Addressed some spacing, brace placement, and macro alignment in this
driver. I do not have the relevant hardware, but I verified that the
drivers/staging/rtl8192u module built between each patch. This time I've
included proper patch descriptions, my apologies for the previous series.

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
