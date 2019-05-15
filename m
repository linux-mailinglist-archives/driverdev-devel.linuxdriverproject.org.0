Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AEE81EC2C
	for <lists+driverdev-devel@lfdr.de>; Wed, 15 May 2019 12:35:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4C1F0861C9;
	Wed, 15 May 2019 10:35:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jaWUy8wjAbjV; Wed, 15 May 2019 10:35:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id ED0C786211;
	Wed, 15 May 2019 10:35:06 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2C8CC1BF41C
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 15 May 2019 10:34:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 291E686119
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 15 May 2019 10:34:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NKZqCk3XBe3K
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 15 May 2019 10:34:57 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from kadath.azazel.net (kadath.azazel.net [81.187.231.250])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E6802860C6
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 15 May 2019 10:34:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=azazel.net; 
 s=20190108;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject
 :To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=a4hwR6gfeXJGyPnKIRHy7LVSW/1BYWM/3EA7zsV44v8=; b=UXlvKcmvI9RSfjXWziAdE47rFi
 /BHEMT0de419w+f1rEUt3LVKfHgvnMm5E1qKWggT7CzLFvsRvOMywj+VQSllQqu7qt+NCHr4xEqmy
 T3KDjrnLN0vq3/4qOTEG2HkOYT7QKdpprDkhk772WHzF5uNgszBWp5K3sEfKNtyShnht8+HI1+kS6
 LiGd0cAjQmzRMEJb7FAOOoh0L7qFkmO+uJfxHF+Kx2fMbF77B01JzOivr6Tv6RxV1Kp9Pbumr5XaI
 1jqAEBGLthTKvxCKCWt3oJEdv1hBMkWQS1+DMKWwfJlMblP++iQ9jsVY0k+KjCItdeoHKqNqwwuYV
 7vcZ2Tqw==;
Received: from ulthar.dreamlands ([192.168.96.2])
 by kadath.azazel.net with esmtp (Exim 4.89)
 (envelope-from <jeremy@azazel.net>) id 1hQrFO-0002JH-FL
 for driverdev-devel@linuxdriverproject.org; Wed, 15 May 2019 11:34:54 +0100
From: Jeremy Sowden <jeremy@azazel.net>
To: Linux Driver Project Developer List
 <driverdev-devel@linuxdriverproject.org>
Subject: [PATCH 0/5] staging: kpc2000: assorted fixes
Date: Wed, 15 May 2019 11:34:49 +0100
Message-Id: <20190515103454.18456-1-jeremy@azazel.net>
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
 drivers/staging/kpc2000/kpc2000/cell_probe.c | 63 ++++++++++++--------
 2 files changed, 39 insertions(+), 26 deletions(-)

-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
