Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AA5FA22DE2C
	for <lists+driverdev-devel@lfdr.de>; Sun, 26 Jul 2020 13:13:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A982585D94;
	Sun, 26 Jul 2020 11:13:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VUZ2_AAYcpnE; Sun, 26 Jul 2020 11:13:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5EADE85751;
	Sun, 26 Jul 2020 11:13:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2EB491BF4D5
 for <devel@linuxdriverproject.org>; Sun, 26 Jul 2020 11:13:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2019485FA5
 for <devel@linuxdriverproject.org>; Sun, 26 Jul 2020 11:12:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lR3J2htW37XH for <devel@linuxdriverproject.org>;
 Sun, 26 Jul 2020 11:12:48 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A868C857B0
 for <devel@linuxdriverproject.org>; Sun, 26 Jul 2020 11:12:48 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F0BDF2065C;
 Sun, 26 Jul 2020 11:12:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1595761968;
 bh=fYVEbI0lf7X2XpeFnSzNWDLoHFeugARWomH3e9e1gpo=;
 h=Date:From:To:Cc:Subject:From;
 b=Xvgblc7GB5EUqrV93wUgM59jSB/gpb/bOV+kfETpT1jUMLy2qImLHzJifnA+Y8ZI4
 wByiJ7mEaS3XKHFV2F458wWxQo52zKmWK8M8AIB4xzrpblEZIEtNoT0E40xw3FRvf2
 8vMoPXqni/HlbGSuD4vFBsWfP38hBDyB/rCrHiQg=
Date: Sun, 26 Jul 2020 13:12:46 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Linus Torvalds <torvalds@linux-foundation.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Stephen Rothwell <sfr@canb.auug.org.au>
Subject: [GIT PULL] Staging driver fixes for 5.8-rc7
Message-ID: <20200726111246.GA1283734@kroah.com>
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

The following changes since commit ba47d845d715a010f7b51f6f89bae32845e6acb7:

  Linux 5.8-rc6 (2020-07-19 15:41:18 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git tags/staging-5.8-rc7

for you to fetch changes up to faaff9765664009c1c7c65551d32e9ed3b1dda8f:

  staging: wlan-ng: properly check endpoint types (2020-07-22 19:49:37 +0200)

----------------------------------------------------------------
Staging driver fixes for 5.8-rc7

Here are 5 small staging driver fixes for 5.8-rc7 to resolve some
reported problems:
	- 4 comedi driver fixes for problems found with them
	- a syzbot-found fix for the wlang-ng driver that resolves a
	  much reported problem.

All of these have been in linux-next with no reported issues.

Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

----------------------------------------------------------------
Ian Abbott (4):
      staging: comedi: ni_6527: fix INSN_CONFIG_DIGITAL_TRIG support
      staging: comedi: addi_apci_1032: check INSN_CONFIG_DIGITAL_TRIG shift
      staging: comedi: addi_apci_1500: check INSN_CONFIG_DIGITAL_TRIG shift
      staging: comedi: addi_apci_1564: check INSN_CONFIG_DIGITAL_TRIG shift

Rustam Kovhaev (1):
      staging: wlan-ng: properly check endpoint types

 drivers/staging/comedi/drivers/addi_apci_1032.c | 20 ++++++++++++++------
 drivers/staging/comedi/drivers/addi_apci_1500.c | 24 +++++++++++++++++++-----
 drivers/staging/comedi/drivers/addi_apci_1564.c | 20 ++++++++++++++------
 drivers/staging/comedi/drivers/ni_6527.c        |  2 +-
 drivers/staging/wlan-ng/prism2usb.c             | 16 +++++++++++++++-
 5 files changed, 63 insertions(+), 19 deletions(-)
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
