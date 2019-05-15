Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EB581EDD1
	for <lists+driverdev-devel@lfdr.de>; Wed, 15 May 2019 13:14:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 762D087D46;
	Wed, 15 May 2019 11:14:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LlrSTwWPMHD7; Wed, 15 May 2019 11:14:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C758187C0D;
	Wed, 15 May 2019 11:14:47 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 20F981BF3D9
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 15 May 2019 11:14:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 1EA7D220C2
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 15 May 2019 11:14:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dfppSZOjmXjB
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 15 May 2019 11:14:40 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from kadath.azazel.net (kadath.azazel.net [81.187.231.250])
 by silver.osuosl.org (Postfix) with ESMTPS id 857BF220B6
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 15 May 2019 11:14:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=azazel.net; 
 s=20190108;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
 Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+f1oYNHZiH0QywUHv6/2CXUAQzonIur9a/SGfgao1Gw=; b=t37BNY+X5WenXEJekyEW9QbQdz
 Rc6lWRtkf7JShqDKC1F6xGAKJhdrWr4XdfVfvbFkRwiJtrra6TgSXES+tuatunJPEs8tT5jMf4d3W
 RMCqO9nTVgpZSmjWQmH3AYKjJOy/sblvSD7Wkmus0wT9WQxj3IVL/uZ7ADSJRSReLq/SqFOwQY+b3
 eEsOdNCV2NlJF2NPAalpgp0ME0lGIAV/UCyWzQM1bl1HjoKp0jOGhxjNjg4z2dYU0Iq+aSA5j5XUZ
 PvtL3qZM6BETgVmqwNfVGhHha8GFJ1Q8O6TNXqh4EUbQNyS3BfEL0qTzbi/F0zm26noGjJ31GDjFW
 eelsV5OA==;
Received: from ulthar.dreamlands ([192.168.96.2])
 by kadath.azazel.net with esmtp (Exim 4.89)
 (envelope-from <jeremy@azazel.net>) id 1hQrrq-0003Fc-0Y
 for driverdev-devel@linuxdriverproject.org; Wed, 15 May 2019 12:14:38 +0100
From: Jeremy Sowden <jeremy@azazel.net>
To: Linux Driver Project Developer List
 <driverdev-devel@linuxdriverproject.org>
Subject: [PATCH v2 0/5] staging: kpc2000: assorted fixes
Date: Wed, 15 May 2019 12:14:32 +0100
Message-Id: <20190515111437.18828-1-jeremy@azazel.net>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190515103454.18456-1-jeremy@azazel.net>
References: <20190515103454.18456-1-jeremy@azazel.net>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The first patch contains some white-space and formatting fixes that I
made while I was looking at the following two TODO items:

  * the loop in kp2000_probe_cores() that uses probe_core_uio() also
    probably needs error handling.
  * probe_core_uio() probably needs error handling

The second and third patches contain fixes for some sparse warnings.

The last two patches contain the actual error-handling fixes.

Jeremy Sowden (5):
  staging: kpc2000: inverted conditional in order to reduce indentation.
  staging: kpc2000: declare two functions as static.
  staging: kpc2000: added designated initializers to two structs.
  staging: kpc2000: added missing clean-up to probe_core_uio.
  staging: kpc2000: clean up after probe failure.

 drivers/staging/kpc2000/TODO                 |  2 -
 drivers/staging/kpc2000/kpc2000/cell_probe.c | 66 ++++++++++++--------
 2 files changed, 39 insertions(+), 29 deletions(-)

Since v1:

  * in patch 3 removed the assignment of the struct-members initialized
    by the designated initializers.

-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
