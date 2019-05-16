Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD5D020F71
	for <lists+driverdev-devel@lfdr.de>; Thu, 16 May 2019 22:04:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C3CED882AA;
	Thu, 16 May 2019 20:04:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pHONvqny+1Nl; Thu, 16 May 2019 20:04:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 60D86880B7;
	Thu, 16 May 2019 20:04:17 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 51D541BF395
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 16 May 2019 20:04:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4F3EC86726
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 16 May 2019 20:04:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gRe7vD59E4H8
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 16 May 2019 20:04:14 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from kadath.azazel.net (kadath.azazel.net [81.187.231.250])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7507B86722
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 16 May 2019 20:04:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=azazel.net; 
 s=20190108;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject
 :Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=CrlXGppJ2h+l6O50QdOgey9/KyzpI8Bv0b9cjXWH+PI=; b=nzPF76GUpxbt2Ar/2PkEq2YIwJ
 uwp/CtzYIvZvfcaodFiaAsekZBXbOqDTwtuleT7t21kOZlPvlnBhQ74dUecM7jZ+p44w88NyoGoZS
 tM375craNVkTCnbavvSS2vFlplf8BRo7cMdAGz6+PBawYUcgKD25v3tylIldFV863doOF5Df61h/6
 FRNckZb1A4E2vMry5+tEntVdquJv2zI/3ief799sl9m6MPRpRuy+b22j56a01iQBJFCPoufUl4mKT
 ujeIZJw/oYD1X9x3G9weW1eW8nW+PUvDkNoJzLUzb048xYqPiGzEQsiEBqqCpXHWTZgR2Pja6OPjT
 CjSemreA==;
Received: from ulthar.dreamlands ([192.168.96.2])
 by kadath.azazel.net with esmtp (Exim 4.89)
 (envelope-from <jeremy@azazel.net>)
 id 1hRMbr-0007Ec-KW; Thu, 16 May 2019 21:04:11 +0100
From: Jeremy Sowden <jeremy@azazel.net>
To: Linux Driver Project Developer List
 <driverdev-devel@linuxdriverproject.org>
Subject: [PATCH 00/11] staging: kpc2000: another batch of fixes
Date: Thu, 16 May 2019 21:04:00 +0100
Message-Id: <20190516200411.17715-1-jeremy@azazel.net>
X-Mailer: git-send-email 2.20.1
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

Jeremy Sowden (11):
  staging: kpc2000: removed trailing white-space.
  staging: kpc2000: add separate show functions for kpc_uio_class device
    attributes.
  staging: kpc2000: define all kpc_uio_class device attributes as
    read-only.
  staging: kpc2000: removed two kpc_uio_class device attributes.
  staging: kpc2000: declare all kpc_uio_class device attributes as
    static.
  staging: kpc2000: use atomic_t to assign card numbers.
  staging: kpc2000: simplified kp2000_device retrieval in device
    attributes call-backs.
  staging: kpc2000: add separate show functions for readable kp device
    attributes.
  staging: kpc2000: formatting fixes for kp device attributes.
  staging: kpc2000: define read-only kp device attributes as read-only.
  staging: kpc2000: declare all kp device attributes as static.

 drivers/staging/kpc2000/TODO                 |   1 -
 drivers/staging/kpc2000/kpc2000/cell_probe.c | 186 ++++++++------
 drivers/staging/kpc2000/kpc2000/core.c       | 253 +++++++++++--------
 drivers/staging/kpc2000/kpc2000/fileops.c    |   2 +-
 drivers/staging/kpc2000/kpc2000/pcie.h       |  10 +-
 5 files changed, 255 insertions(+), 197 deletions(-)

-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
