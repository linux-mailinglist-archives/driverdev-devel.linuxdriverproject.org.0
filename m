Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D207C3A4F96
	for <lists+driverdev-devel@lfdr.de>; Sat, 12 Jun 2021 17:54:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B07C940542;
	Sat, 12 Jun 2021 15:54:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 88bnyUYedU2W; Sat, 12 Jun 2021 15:54:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id F312740296;
	Sat, 12 Jun 2021 15:54:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 57E7E1BF573
 for <devel@linuxdriverproject.org>; Sat, 12 Jun 2021 15:54:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4522F400E8
 for <devel@linuxdriverproject.org>; Sat, 12 Jun 2021 15:54:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id V7usv2RKzzVe for <devel@linuxdriverproject.org>;
 Sat, 12 Jun 2021 15:54:33 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C2F2D400AF
 for <devel@linuxdriverproject.org>; Sat, 12 Jun 2021 15:54:33 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id DFC34610FC;
 Sat, 12 Jun 2021 15:54:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1623513273;
 bh=SvDSe+71i4/sQt3EFhqr44mKrhHMTl790UTWD9pT+08=;
 h=Date:From:To:Cc:Subject:From;
 b=CXTy3l1nRm5xq5oJGNOttyXaz9c3cA2U2coEbk5Aid5AFfbC2+tKN2sJrj93U8Ls7
 FIWo+GEeo/DJLO1kXW3E9Vs2dC1cbe8cBUZVdpkH1MqLQ+P0scs81yun4Az5gYkrQ8
 9gDWPCUtk86QD9aJGBEJPa0exfy4btZos8xTiRv0=
Date: Sat, 12 Jun 2021 17:54:31 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Linus Torvalds <torvalds@linux-foundation.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Stephen Rothwell <sfr@canb.auug.org.au>
Subject: [GIT PULL] Staging driver fixes for 5.13-rc6
Message-ID: <YMTYtya0Sn/JVtz2@kroah.com>
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
Cc: devel@linuxdriverproject.org, linux-staging@lists.linux.dev,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The following changes since commit 8124c8a6b35386f73523d27eacb71b5364a68c4c:

  Linux 5.13-rc4 (2021-05-30 11:58:25 -1000)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git tags/staging-5.13-rc6

for you to fetch changes up to e9de1ecadeab5fbffd873b9110e969c869554a56:

  staging: ralink-gdma: Remove incorrect author information (2021-06-09 12:07:52 +0200)

----------------------------------------------------------------
Staging driver fixes for 5.13-rc6

Here are two tiny staging driver fixes for 5.13-rc6
	- ralink-gdma driver authorship information fixed up
	- rtl8723bs driver fix for reported regression

Both have been in linux-next for a while with no reported problems.

Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

----------------------------------------------------------------
Lars-Peter Clausen (1):
      staging: ralink-gdma: Remove incorrect author information

Wenli Looi (1):
      staging: rtl8723bs: Fix uninitialized variables

 drivers/staging/ralink-gdma/ralink-gdma.c         | 2 --
 drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c | 2 +-
 2 files changed, 1 insertion(+), 3 deletions(-)
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
