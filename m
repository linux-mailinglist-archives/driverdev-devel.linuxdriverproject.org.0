Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 07EF320C114
	for <lists+driverdev-devel@lfdr.de>; Sat, 27 Jun 2020 13:40:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A592F88296;
	Sat, 27 Jun 2020 11:40:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DvbRA34-cp-v; Sat, 27 Jun 2020 11:40:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8F9F488214;
	Sat, 27 Jun 2020 11:40:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 31CCF1BF44A
 for <devel@linuxdriverproject.org>; Sat, 27 Jun 2020 11:40:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2E537886EF
 for <devel@linuxdriverproject.org>; Sat, 27 Jun 2020 11:40:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nT8DsDNPFkCV for <devel@linuxdriverproject.org>;
 Sat, 27 Jun 2020 11:40:44 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B63B7886C5
 for <devel@linuxdriverproject.org>; Sat, 27 Jun 2020 11:40:44 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F34E9206A5;
 Sat, 27 Jun 2020 11:40:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1593258044;
 bh=clnjadAF4ADdX1WmCkufYNPgpr0eqC+andCSc7+l0JQ=;
 h=Date:From:To:Cc:Subject:From;
 b=to8LgUhu/SFif/XEQVFHl384DEKanxaIbW3QygIEGgt7ViI8q4fdpVzo3zFYI2/9V
 WrqGYZFV1NB/Rne8KWEEnmGrB7rdo7l7otxD+cx4o6erNCFUCTFvllVRN2HDu0ZXe7
 FE4qMIWZR/7o6kRbdlMVrXLx9eLRsIzwqBxKbZd8=
Date: Sat, 27 Jun 2020 13:40:37 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Linus Torvalds <torvalds@linux-foundation.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Stephen Rothwell <sfr@canb.auug.org.au>
Subject: [GIT PULL] Staging driver fixes for 5.8-rc3
Message-ID: <20200627114037.GA1637063@kroah.com>
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The following changes since commit b3a9e3b9622ae10064826dccb4f7a52bd88c7407:

  Linux 5.8-rc1 (2020-06-14 12:45:04 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git tags/sta=
ging-5.8-rc3

for you to fetch changes up to b65a2d8c8614386f7e8d38ea150749f8a862f431:

  Staging: rtl8723bs: prevent buffer overflow in update_sta_support_rate() =
(2020-06-16 21:25:38 +0200)

----------------------------------------------------------------
Staging driver fixes for 5.8-rc3

Here are a small number of tiny staging driver fixes for 5.8-rc3.

Not much here, but there were some reported problems to be fixed:
	- 3 wfx driver fixes
	- rtl8723bs driver fix

All of these have been in linux-next with no reported issues.

Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

----------------------------------------------------------------
Dan Carpenter (1):
      Staging: rtl8723bs: prevent buffer overflow in update_sta_support_rat=
e()

J=E9r=F4me Pouiller (3):
      staging: wfx: fix AC priority
      staging: wfx: drop useless loop
      staging: wfx: fix coherency of hif_scan() prototype

 drivers/staging/rtl8723bs/core/rtw_wlan_util.c |  4 +++-
 drivers/staging/wfx/hif_tx.c                   |  6 ++++--
 drivers/staging/wfx/hif_tx.h                   |  2 +-
 drivers/staging/wfx/queue.c                    | 21 +++++++++------------
 drivers/staging/wfx/scan.c                     |  6 +++---
 5 files changed, 20 insertions(+), 19 deletions(-)
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
