Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EC18630CE0
	for <lists+driverdev-devel@lfdr.de>; Fri, 31 May 2019 12:52:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 6D9B720410;
	Fri, 31 May 2019 10:52:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ETWtkOdl6kFz; Fri, 31 May 2019 10:52:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 911212033F;
	Fri, 31 May 2019 10:52:41 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 12FE81BF97F
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 31 May 2019 10:52:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 100FB876D1
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 31 May 2019 10:52:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id F6Ns-gENNg08
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 31 May 2019 10:52:37 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from kadath.azazel.net (kadath.azazel.net [81.187.231.250])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B63BE87666
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 31 May 2019 10:52:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=azazel.net; 
 s=20190108;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=uJIqt6LeFJNvl2TVgYWc6OpCXgcePzPRRxfhBKWA3SA=; b=ENafvR56EGSVJ9BuNICxI42/Ba
 VdlV5I13xBJTy04j84sENaQSh1iFgueJrDf1wXzt9W1wAvdO8hIaN2I5GE+KIkvAFpBwuc43mh+v2
 aSPDBask4d2vizpNH/Pg/Qbr5Y4rjkh8/3NUSNNmNCpb9bgLf4fiKUYApLM2fg+zQY/jHVhGXYAU0
 EgJ2N39VqkYpHa8ely2Lm91frsN0O7C8pNFlkQhHYGAFKS8lXRUD1+E4VQ1OA1jU2pJZboo7Ubsrm
 d095/0CJdVJkHRUY+XLWTKXO55gj4f9u9sld0yaVvyFlJFlgB50bZ0vtkEsl7d2pkBtZJ+JwSIA62
 UcdzYahw==;
Received: from ulthar.dreamlands ([192.168.96.2])
 by kadath.azazel.net with esmtp (Exim 4.89)
 (envelope-from <jeremy@azazel.net>)
 id 1hWf9D-0006f6-R7; Fri, 31 May 2019 11:52:31 +0100
From: Jeremy Sowden <jeremy@azazel.net>
To: Linux Driver Project Developer List
 <driverdev-devel@linuxdriverproject.org>
Subject: [PATCH 0/2] staging: kpc2000: replace per-card misc devices.
Date: Fri, 31 May 2019 11:52:29 +0100
Message-Id: <20190531105231.26380-1-jeremy@azazel.net>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190531001156.GA25210@kroah.com>
References: <20190531001156.GA25210@kroah.com>
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
Cc: Greg KH <gregkh@linuxfoundation.org>,
 =?UTF-8?q?Simon=20Sandstr=C3=B6m?= <simon@nikanor.nu>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Each card has a misc device associated with it.  The devices are used to get
access to various attributes of the hardware.  Most of these attributes are also
available via sysfs.  Therefore, we make all the attributes available via sysfs
and remove the devices.

Jeremy Sowden (2):
  staging: kpc2000: export more device attributes via sysfs.
  staging: kpc2000: removed misc device.

 drivers/staging/kpc2000/kpc2000/core.c | 184 ++++++++-----------------
 drivers/staging/kpc2000/kpc2000/pcie.h |   2 -
 2 files changed, 59 insertions(+), 127 deletions(-)

-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
