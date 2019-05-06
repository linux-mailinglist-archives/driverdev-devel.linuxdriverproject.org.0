Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D859014C75
	for <lists+driverdev-devel@lfdr.de>; Mon,  6 May 2019 16:40:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 9817D24368;
	Mon,  6 May 2019 14:40:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KEtTHbFI6Jc4; Mon,  6 May 2019 14:40:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 1C45924804;
	Mon,  6 May 2019 14:40:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EE9011BF406
 for <devel@linuxdriverproject.org>; Mon,  6 May 2019 14:40:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E9ED6855CB
 for <devel@linuxdriverproject.org>; Mon,  6 May 2019 14:40:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HRd6iLAZwhAi for <devel@linuxdriverproject.org>;
 Mon,  6 May 2019 14:40:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.suse.de (mx2.suse.de [195.135.220.15])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id F0AC884542
 for <devel@driverdev.osuosl.org>; Mon,  6 May 2019 14:40:47 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 6371DAC0C;
 Mon,  6 May 2019 14:40:45 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/3] staging: vchiq: use interruptible waits
Date: Mon,  6 May 2019 16:40:27 +0200
Message-Id: <20190506144030.29056-1-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
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
Cc: stefan.wahren@i2se.com, devel@driverdev.osuosl.org, phil@raspberrypi.org,
 dan.carpenter@oracle.com, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi,
this series tries to address an issue that came up in Raspbian's kernel
tree [1] and upstream distros [2][3].

We adopted some changes that moved wait calls from a custom
implementation to the more standard killable family of functions. Users
complained that all the VCHIQ threads showed up in D state (which is the
expected behaviour).

The custom implementation we deleted tried to mimic the killable family
of functions, yet accepted more signals than the later; SIGKILL |
SIGINT | SIGQUIT | SIGTRAP | SIGSTOP | SIGCONT for the custom
implementation as opposed to plain old SIGKILL.

Raspbian maintainers decided roll back some of those changes and leave
the wait functions as interruptible. Hence creating some divergence
between both trees.

One could argue that not liking having the threads stuck in D state is
not really a software issue. It's more a cosmetic thing that can scare
people when they look at "uptime". On the other hand, if we are ever to
unstage this driver, we'd really need a proper justification for using
the killable family of functions. Which I think it's not really clear at
the moment.

As Raspbian's kernel has been working for a while with interruptible
waits I propose we follow through. If needed we can always go back to
killable. But at least we'll have a proper understanding on the actual
needs. In the end the driver is in staging, and the potential for errors
small.

Regards,
Nicolas

[1] https://github.com/raspberrypi/linux/issues/2881
[2] https://archlinuxarm.org/forum/viewtopic.php?f=65&t=13485
[3] https://lists.fedoraproject.org/archives/list/arm@lists.fedoraproject.org/message/GBXGJ7DOV5CQQXFPOZCXTRD6W4BEPT4Q/

--

Changes since v1:
  - Proplery format revert commits
  - Add code comment to remind of this issue
  - Add Fixes tags

Nicolas Saenz Julienne (3):
  staging: vchiq_2835_arm: revert "quit using custom
    down_interruptible()"
  staging: vchiq: revert "switch to wait_for_completion_killable"
  staging: vchiq: make wait events interruptible

 .../interface/vchiq_arm/vchiq_2835_arm.c      |  2 +-
 .../interface/vchiq_arm/vchiq_arm.c           | 21 +++++++------
 .../interface/vchiq_arm/vchiq_core.c          | 31 ++++++++++++-------
 .../interface/vchiq_arm/vchiq_util.c          |  6 ++--
 4 files changed, 35 insertions(+), 25 deletions(-)

-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
