Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2944C2176E
	for <lists+driverdev-devel@lfdr.de>; Fri, 17 May 2019 13:03:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 65A6A3151C;
	Fri, 17 May 2019 11:03:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SEZlW8xTti1s; Fri, 17 May 2019 11:03:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 03AE63146D;
	Fri, 17 May 2019 11:03:22 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D91C21BF5B4
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 17 May 2019 11:03:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D3FDC858DD
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 17 May 2019 11:03:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ctNL7gM93snC
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 17 May 2019 11:03:18 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from kadath.azazel.net (kadath.azazel.net [81.187.231.250])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 188E984812
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 17 May 2019 11:03:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=azazel.net; 
 s=20190108;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=zwTXDmGTfEcFp3pdyGl1steMI4AQVwCpCVq9jDYCyp4=; b=K9UQBTCCFW2/VwwxAY3dZ10kc2
 o2ycyD5uLVOh6oh/NdFW+8xT772xDOp4pyYDMYBAwuKPp1qDAowL4SYHL8627gd7mxnsSsCVWQdWy
 zHdNMFNwxCrQzMQw/7CbJ1X1XQeT9relvlwq5XnjYqeaR87/hXwLtyKOVNaMuGtR5D02IMga2aK2d
 XsklDHkwr7RkpKyxIk1rC1NTTSDDNBwwT6i9tz9SpDlvlfv8XstrJD+n4yi/MecR4sFAxDpJJLXrq
 eKbR8jKJ4SA34ZKzT17uzZnp4sC7tu1JWWFi4prtzN4GO60QygKO+LKdshkYqvpVtK2QVyvW6F7Mg
 OA/WInNQ==;
Received: from ulthar.dreamlands ([192.168.96.2])
 by kadath.azazel.net with esmtp (Exim 4.89)
 (envelope-from <jeremy@azazel.net>)
 id 1hRadv-00045l-BY; Fri, 17 May 2019 12:03:15 +0100
From: Jeremy Sowden <jeremy@azazel.net>
To: Linux Driver Project Developer List
 <driverdev-devel@linuxdriverproject.org>
Subject: [PATCH v3 0/6] staging: kpc2000: another batch of fixes
Date: Fri, 17 May 2019 12:03:09 +0100
Message-Id: <20190517110315.10646-1-jeremy@azazel.net>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190517073057.GA2631@kroah.com>
References: <20190517073057.GA2631@kroah.com>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 192.168.96.2
X-SA-Exim-Mail-From: jeremy@azazel.net
X-SA-Exim-Scanned: No (on kadath.azazel.net); SAEximRunCond expanded to false
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
Cc: Greg KH <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

These apply on top of the ones I sent earlier this week, which are
currently in the staging-test branch.

There are a number relating to device attributes and one that fixes a
race affecting the assignment of card numbers.

Jeremy Sowden (6):
  staging: kpc2000: add separate show functions for kpc_uio_class device
    attributes, defined them as read-only and declared them static.
  staging: kpc2000: removed two kpc_uio_class device attributes.
  staging: kpc2000: simplified kp2000_device retrieval in device
    attributes call-backs.
  staging: kpc2000: formatting fixes for kp device attributes.
  staging: kpc2000: add separate show functions for readable kp device
    attributes, defined them as read-only, and declared them static.
  staging: kpc2000: use IDA to assign card numbers.

 drivers/staging/kpc2000/TODO                 |   1 -
 drivers/staging/kpc2000/kpc2000/cell_probe.c | 123 ++++++++------
 drivers/staging/kpc2000/kpc2000/core.c       | 162 +++++++++++--------
 3 files changed, 171 insertions(+), 115 deletions(-)

Since v2:

  * dropped the white-space patch since Greg has applied it;
  * added a reported-by tag to patch that drops two attributes;
  * merged the patches that declared attributes static with the ones
    that split up the show call-backs;
  * moved the attribute definitions next to their call-backs;
  * moved the patch that fixed the card-number race to the end of the
  * series;
  * use an IDA to fix the card-number race, not an atomic_t.

Since v1:

  * merged the DEVICE_ATTR_RO patches with the ones that split up the
    show call-backs;
  * converted the show call-backs to use sprintf, instead of scnprintf.

-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
