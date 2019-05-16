Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E23821015
	for <lists+driverdev-devel@lfdr.de>; Thu, 16 May 2019 23:38:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4659887430;
	Thu, 16 May 2019 21:38:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OS4xZKzvcPzq; Thu, 16 May 2019 21:38:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7C44E87370;
	Thu, 16 May 2019 21:38:19 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C8BF21BF29A
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 16 May 2019 21:38:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id C3F53228E2
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 16 May 2019 21:38:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IQLd-vpPn5Vw
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 16 May 2019 21:38:16 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from kadath.azazel.net (kadath.azazel.net [81.187.231.250])
 by silver.osuosl.org (Postfix) with ESMTPS id 2524A21553
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 16 May 2019 21:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=azazel.net; 
 s=20190108;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=wruVPQ3bs7taAwHqxX9ar4uYdmHiHM3ziQL33Z8k/WE=; b=QfIjF0XsI4WQp0joPXdrgg5uBe
 QY5BQmQUMQ+T/ENyEwHkgZa+LSVB0Sg88I4PEZ2DTDDEoOZrXq3AUEgrkx7OveBtM5z9fmvZHPD6J
 6X6RRWaMBWlKVXvi3uRwHGxqaYdjLVJ/B7YLBQXHoa7nVtz0DIFcILV6b4XX/YRui/hGo0D17JNnv
 iABfMxVOg5KIZrdHfMVAo6bAR9Ikg7eTtARGrQDuQZjXXEclZgwKf/d0bb7fGgUnBoJqV3pl3Nl6z
 Tgj3TDGmsuoOOPVzYSJAlSzTlzGWz/tpa3s7AJm9uZj4KQpkBwr/if3qrCqWoxwjkKytvX2o5pGdZ
 AFz1Vexw==;
Received: from ulthar.dreamlands ([192.168.96.2])
 by kadath.azazel.net with esmtp (Exim 4.89)
 (envelope-from <jeremy@azazel.net>)
 id 1hRO4s-0000d7-9H; Thu, 16 May 2019 22:38:14 +0100
From: Jeremy Sowden <jeremy@azazel.net>
To: Linux Driver Project Developer List
 <driverdev-devel@linuxdriverproject.org>
Subject: [PATCH v2 0/9] staging: kpc2000: another batch of fixes
Date: Thu, 16 May 2019 22:38:05 +0100
Message-Id: <20190516213814.22232-1-jeremy@azazel.net>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190516200411.17715-1-jeremy@azazel.net>
References: <20190516200411.17715-1-jeremy@azazel.net>
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

There's one white-space patch, a number relating to device attributes
and one that fixes a race affecting the assignment of card numbers.

Jeremy Sowden (9):
  staging: kpc2000: removed trailing white-space.
  staging: kpc2000: add separate show functions for kpc_uio_class device
    attributes and defined them as read-only.
  staging: kpc2000: declare all kpc_uio_class device attributes as
    static.
  staging: kpc2000: removed two kpc_uio_class device attributes.
  staging: kpc2000: use atomic_t to assign card numbers.
  staging: kpc2000: simplified kp2000_device retrieval in device
    attributes call-backs.
  staging: kpc2000: formatting fixes for kp device attributes.
  staging: kpc2000: add separate show functions for readable kp device
    attributes, and defined them as read-only.
  staging: kpc2000: declare all kp device attributes as static.

 drivers/staging/kpc2000/TODO                 |   1 -
 drivers/staging/kpc2000/kpc2000/cell_probe.c | 184 +++++++------
 drivers/staging/kpc2000/kpc2000/core.c       | 255 +++++++++++--------
 drivers/staging/kpc2000/kpc2000/fileops.c    |   2 +-
 drivers/staging/kpc2000/kpc2000/pcie.h       |  10 +-
 5 files changed, 254 insertions(+), 198 deletions(-)

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
