Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69F3A223EB2
	for <lists+driverdev-devel@lfdr.de>; Fri, 17 Jul 2020 16:53:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 161FB884A1;
	Fri, 17 Jul 2020 14:53:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OZ2nnWue73-a; Fri, 17 Jul 2020 14:53:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 60FC78848F;
	Fri, 17 Jul 2020 14:53:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B62661BF359
 for <devel@linuxdriverproject.org>; Fri, 17 Jul 2020 14:53:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A9CA0204E3
 for <devel@linuxdriverproject.org>; Fri, 17 Jul 2020 14:53:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id u1zGfLt-ZYFy for <devel@linuxdriverproject.org>;
 Fri, 17 Jul 2020 14:53:18 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtp100.iad3b.emailsrvr.com (smtp100.iad3b.emailsrvr.com
 [146.20.161.100])
 by silver.osuosl.org (Postfix) with ESMTPS id D30A820444
 for <devel@driverdev.osuosl.org>; Fri, 17 Jul 2020 14:53:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mev.co.uk;
 s=20190130-41we5z8j; t=1594997597;
 bh=YNazr2X64J47Zs71qG1bJD53gaInVX9LWD2T4M7xB1M=;
 h=From:To:Subject:Date:From;
 b=TCDYB7zuZleX793vyEb6uMbZLk/A4zlzw43A1DVaNVhLJAlZoQOtLXq1RoQeAk0vr
 CfYKSDC6UpXblSfDkj0KNcHx0/HBb7AE0ZHZNxMpEEdH8uQdUL9YVfkZK2IBsAGn/K
 gH7G/u1HpkLZ4xQC8mIwdXOL588oqpSg/rqhhv9s=
X-Auth-ID: abbotti@mev.co.uk
Received: by smtp5.relay.iad3b.emailsrvr.com (Authenticated sender:
 abbotti-AT-mev.co.uk) with ESMTPSA id 32D27401E7; 
 Fri, 17 Jul 2020 10:53:17 -0400 (EDT)
From: Ian Abbott <abbotti@mev.co.uk>
To: devel@driverdev.osuosl.org
Subject: [PATCH 0/4] staging: comedi: INSN_CONFIG_DIGITAL_TRIG fixes
Date: Fri, 17 Jul 2020 15:52:53 +0100
Message-Id: <20200717145257.112660-1-abbotti@mev.co.uk>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Classification-ID: 3cd28aa4-5d40-4a0c-a681-8cbccbead0a1-1-1
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Ian Abbott <abbotti@mev.co.uk>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

These patches correct problems with INSN_CONFIG_DIGITAL_TRIG comedi
configuration instructions in various comedi drivers, in particular the
use of unconstrained bit shift amounts from userspace leading to
undefined behaviour (although hopefully not the kernel crashy sort).

The patches have been marked for inclusion in the stable tree.  Note
that patch 4 changes a similar area of code to Dan Carpenter's commit
ef75e14a6c93 ("staging: comedi: verify array index is correct before
using it"), so I have indicated it as a prerequisite.

*Note to Greg KH*: I have based these patches on your "staging-linus"
branch due to the prerequisite ef75e14a6c93 mentioned above being
present in neither "staging-next" nor "staging-testing" at the time of
posting.

1) staging: comedi: ni_6527: fix INSN_CONFIG_DIGITAL_TRIG support
2) staging: comedi: addi_apci_1032: check INSN_CONFIG_DIGITAL_TRIG shift
3) staging: comedi: addi_apci_1564: check INSN_CONFIG_DIGITAL_TRIG shift
4) staging: comedi: addi_apci_1500: check INSN_CONFIG_DIGITAL_TRIG shift

 drivers/staging/comedi/drivers/addi_apci_1032.c | 20 ++++++++++++++------
 drivers/staging/comedi/drivers/addi_apci_1500.c | 24 +++++++++++++++++++-----
 drivers/staging/comedi/drivers/addi_apci_1564.c | 20 ++++++++++++++------
 drivers/staging/comedi/drivers/ni_6527.c        |  2 +-
 4 files changed, 48 insertions(+), 18 deletions(-)

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
