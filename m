Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AFDD824180
	for <lists+driverdev-devel@lfdr.de>; Mon, 20 May 2019 21:52:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 35D4B853B9;
	Mon, 20 May 2019 19:52:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3rs3usUhxEd7; Mon, 20 May 2019 19:52:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 36FEA84F27;
	Mon, 20 May 2019 19:52:51 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 027A01BF2FD
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 20 May 2019 19:52:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id F235685074
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 20 May 2019 19:52:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8Q6kJB+mvQW7
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 20 May 2019 19:52:48 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from kadath.azazel.net (kadath.azazel.net [81.187.231.250])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 068A08506F
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 20 May 2019 19:52:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=azazel.net; 
 s=20190108;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=RzytkayPaRPTVvtPy+fNa6Ft2el60xR0aYvyYL5TUwY=; b=fCsB8hBzrTZ6XWL5vFKdvqQsXo
 Ps5HdplgktL+ilq3zQpL4w7MDXag90/kBbF+dfOJ+v1OvudY9RGQ+rJlreDHMSM8llTQvMaw8BMVe
 ykSx9DRrJseGV2wuUmj70pgBAAxXa3isNchQDsunnDKkMYH59CBSvTbjkbW9LbsM713uPyWAhjA1Y
 sTLbycDx4N0cWDDGdMf1LwaLNMXOll4XHEEKJnUMkIu90TkyB3aPO7y0qH+ceN26aeQ2jokurUOth
 ODnYCC1038cLAfeLOnxyAr5z3/pFn6y5n1ba8HhvTEfD09nHyoxggwzKyY3gPu/tmlIw60n9ielwP
 o0Ep4nxg==;
Received: from ulthar.dreamlands ([192.168.96.2])
 by kadath.azazel.net with esmtp (Exim 4.89)
 (envelope-from <jeremy@azazel.net>)
 id 1hSoL0-0004Ol-2G; Mon, 20 May 2019 20:52:46 +0100
From: Jeremy Sowden <jeremy@azazel.net>
To: Linux Driver Project Developer List
 <driverdev-devel@linuxdriverproject.org>
Subject: [PATCH v4 0/8] staging: kpc2000: another batch of fixes
Date: Mon, 20 May 2019 20:52:35 +0100
Message-Id: <20190520195243.917-9-jeremy@azazel.net>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190520195243.917-1-jeremy@azazel.net>
References: <20190517110315.10646-1-jeremy@azazel.net>
 <20190520195243.917-1-jeremy@azazel.net>
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

There are a number relating to device attributes, one formatting patch,
and another that changes how card numbers are assigned.

Greg reckoned that the changes to the code in the attribute call-backs
that gets the struct kpc2000 object from the struct device object were
broken.  I've reviewed them and split them into two patches because I
was doing two different things in the previous patch.  I *think* they
are correct, but I've moved them to the end of the series in case I
really have just got the wrong end of the stick, so they can easily be
dropped.

Jeremy Sowden (8):
  staging: kpc2000: added separate show functions for kpc_uio_class
    device attributes, defined them as read-only and declared them
    static.
  staging: kpc2000: removed two kpc_uio_class device attributes.
  staging: kpc2000: improved formatting of core.c.
  staging: kpc2000: added a helper to get struct kp2000_device from
    struct device.
  staging: kpc2000: added separate show functions for readable kp device
    attributes, defined them as read-only, and declared them static.
  staging: kpc2000: use IDA to assign card numbers.
  staging: kpc2000: simplified kp2000_device retrieval in device
    attribute call-backs.
  staging: kpc2000: removed superfluous NULL checks from device
    attribute call-backs.

 drivers/staging/kpc2000/TODO                  |   1 -
 drivers/staging/kpc2000/kpc2000/cell_probe.c  | 123 ++-
 drivers/staging/kpc2000/kpc2000/core.c        | 859 ++++++++++--------
 .../staging/kpc2000/kpc2000/kp2000_module.c   |   1 +
 drivers/staging/kpc2000/kpc2000/pcie.h        |   9 +-
 5 files changed, 558 insertions(+), 435 deletions(-)

Since v3:

  * added the formatting patch for core.c and folded the kp device
    attribute formatting fixes into it;
  * added the patch that introduces get_pcard();
  * added missing clean-up of IDA and reworded the commit message;
  * split the patch that simplified the retrieval of struct
    kp2000_device from struct dev in the show call-backs into two, and
    moved them to the end of the series.

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
