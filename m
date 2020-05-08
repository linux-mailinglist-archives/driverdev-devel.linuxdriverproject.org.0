Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CF1B41CB18F
	for <lists+driverdev-devel@lfdr.de>; Fri,  8 May 2020 16:18:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0C0F4886CF;
	Fri,  8 May 2020 14:18:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JVXVzhJLCOhX; Fri,  8 May 2020 14:18:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id CF3B5886B2;
	Fri,  8 May 2020 14:18:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6464A1BF853
 for <devel@linuxdriverproject.org>; Fri,  8 May 2020 14:18:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 5167B2042E
 for <devel@linuxdriverproject.org>; Fri,  8 May 2020 14:18:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yw1IzyZlwyHX for <devel@linuxdriverproject.org>;
 Fri,  8 May 2020 14:18:11 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id B0F2D22636
 for <devel@linuxdriverproject.org>; Fri,  8 May 2020 14:18:10 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E615424956;
 Fri,  8 May 2020 14:18:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588947490;
 bh=dalLpG2qXUyifTblLMB27QL5WmDLpxUMYVlIpkzVgdI=;
 h=Date:From:To:Cc:Subject:From;
 b=XlLSTX2tzk42FA3Bdt2GbPcehjovY7FjHocDjy4OEv+kDJRDddhl07qUXcMd4kD+7
 ai6nMwOcSHt9Fm9AwfWVQnh7A7pCJCjniu4YsCwxM7XJp/s5siLH+sPKGJlgn7VMGl
 IwWUtz4zGTduGpd5GvJ70bS27nGPXOqhwVAhhg3o=
Date: Fri, 8 May 2020 16:18:07 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Linus Torvalds <torvalds@linux-foundation.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Stephen Rothwell <sfr@canb.auug.org.au>
Subject: [GIT PULL] Staging driver fixes for 5.7-rc5
Message-ID: <20200508141807.GA353767@kroah.com>
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

The following changes since commit 6a8b55ed4056ea5559ebe4f6a4b247f627870d4c:

  Linux 5.7-rc3 (2020-04-26 13:51:02 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git tags/staging-5.7-rc5

for you to fetch changes up to 769acc3656d93aaacada814939743361d284fd87:

  staging: gasket: Check the return value of gasket_get_bar_index() (2020-05-05 12:36:05 +0200)

----------------------------------------------------------------
Staging driver fixes for 5.7-rc5

Here are 3 small driver fixes for 5.7-rc5.

Two of these are documentation fixes:
	- MAINTAINERS update due to removed driver
	- removing Wolfram from the ks7010 driver TODO file
The other patch is a real fix:
	- fix gasket driver to proper check the return value of a call

All of these have been in linux-next for a while with no reported
issues.

Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

----------------------------------------------------------------
Lukas Bulwahn (1):
      MAINTAINERS: remove entry after hp100 driver removal

Oscar Carter (1):
      staging: gasket: Check the return value of gasket_get_bar_index()

Wolfram Sang (1):
      staging: ks7010: remove me from CC list

 MAINTAINERS                          | 5 -----
 drivers/staging/gasket/gasket_core.c | 4 ++++
 drivers/staging/ks7010/TODO          | 1 -
 3 files changed, 4 insertions(+), 6 deletions(-)
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
