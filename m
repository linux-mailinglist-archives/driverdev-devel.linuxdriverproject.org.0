Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0E912814DF
	for <lists+driverdev-devel@lfdr.de>; Fri,  2 Oct 2020 16:20:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id EC25C87396;
	Fri,  2 Oct 2020 14:20:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QUAzu2F-Iihp; Fri,  2 Oct 2020 14:20:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 71FC3872EC;
	Fri,  2 Oct 2020 14:20:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BA1671BF311
 for <devel@linuxdriverproject.org>; Fri,  2 Oct 2020 14:20:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B6AEA872EC
 for <devel@linuxdriverproject.org>; Fri,  2 Oct 2020 14:20:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BFHJF2oIYgRu for <devel@linuxdriverproject.org>;
 Fri,  2 Oct 2020 14:20:13 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 4821A872BE
 for <devel@linuxdriverproject.org>; Fri,  2 Oct 2020 14:20:13 +0000 (UTC)
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6307F206A5;
 Fri,  2 Oct 2020 14:20:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1601648413;
 bh=FoOoYOhtAyhs3Uw/Tey8mM+CYMUqi+LEhTEaTEjrqjM=;
 h=Date:From:To:Cc:Subject:From;
 b=Er6RbwoggqXABHBPqKXnmCcuk/eEW2Lmbl6x9zBiCpybFW9+Ynbecy7l2lhdQsYAc
 K4jOvrAf966VPyoV0Tuhc7YBAJs6oeNfBotpqLVrARf5moo6f26Hz4gd/SdErB1/Em
 VugA+YEa3G41hAdgSa8cebSGVLwZ2ueRQ2/03pfk=
Date: Fri, 2 Oct 2020 16:20:11 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Linus Torvalds <torvalds@linux-foundation.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Stephen Rothwell <sfr@canb.auug.org.au>
Subject: [GIT PULL] IIO driver fixes for 5.9-rc8
Message-ID: <20201002142011.GA3499938@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
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
Cc: devel@linuxdriverproject.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The following changes since commit 856deb866d16e29bd65952e0289066f6078af773:

  Linux 5.9-rc5 (2020-09-13 16:06:00 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git tags/staging-5.9-rc8

for you to fetch changes up to 52a035235ed5a1392fc264bd614eb96d1ac97a3d:

  Merge tag 'iio-fixes-for-5.9b-take2' of https://git.kernel.org/pub/scm/linux/kernel/git/jic23/iio into staging-linus (2020-09-22 18:36:40 +0200)

----------------------------------------------------------------
IIO fixes for 5.9-rc8

Here are two small IIO driver fixes for 5.9-rc8 that resolve some
reported issues:
	- driver name fixed in one driver
	- device name typo fixed

Both have been in linux-next for a while with no reported problems.

Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

----------------------------------------------------------------
Dmitry Baryshkov (1):
      iio: adc: qcom-spmi-adc5: fix driver name

Greg Kroah-Hartman (1):
      Merge tag 'iio-fixes-for-5.9b-take2' of https://git.kernel.org/.../jic23/iio into staging-linus

Mircea Caprioru (1):
      iio: adc: ad7124: Fix typo in device name

 drivers/iio/adc/ad7124.c         | 4 ++--
 drivers/iio/adc/qcom-spmi-adc5.c | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
