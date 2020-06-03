Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C15141ED6EC
	for <lists+driverdev-devel@lfdr.de>; Wed,  3 Jun 2020 21:31:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id EF25F22DC7;
	Wed,  3 Jun 2020 19:31:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id V88qnSKiUFgG; Wed,  3 Jun 2020 19:31:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id F036422C44;
	Wed,  3 Jun 2020 19:31:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8F00D1BF857
 for <devel@linuxdriverproject.org>; Wed,  3 Jun 2020 19:31:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8C19386B9D
 for <devel@linuxdriverproject.org>; Wed,  3 Jun 2020 19:31:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Sk9pAThWBom4 for <devel@linuxdriverproject.org>;
 Wed,  3 Jun 2020 19:31:41 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from ZenIV.linux.org.uk (zeniv.linux.org.uk [195.92.253.2])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D870F86B98
 for <devel@driverdev.osuosl.org>; Wed,  3 Jun 2020 19:31:40 +0000 (UTC)
Received: from viro by ZenIV.linux.org.uk with local (Exim 4.93 #3 (Red Hat
 Linux)) id 1jgZ6l-002dSc-EA; Wed, 03 Jun 2020 19:31:27 +0000
Date: Wed, 3 Jun 2020 20:31:27 +0100
From: Al Viro <viro@zeniv.linux.org.uk>
To: Linus Torvalds <torvalds@linux-foundation.org>
Subject: [git pull] uaccess comedi compat
Message-ID: <20200603193127.GZ23230@ZenIV.linux.org.uk>
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Ian Abbott <abbotti@mev.co.uk>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

	comedi compat ioctls done saner (killing the single biggest pile
of __get_user/__put_user outside of arch/* in process).

The following changes since commit 8f3d9f354286745c751374f5f1fcafee6b3f3136:

  Linux 5.7-rc1 (2020-04-12 12:35:55 -0700)

are available in the git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/viro/vfs.git uaccess.comedi

for you to fetch changes up to bac42fb21259783cb748ae54227a5e755340a396:

  comedi: get rid of compat_alloc_user_space() mess in COMEDI_CMD{,TEST} compat (2020-05-29 10:06:01 -0400)

----------------------------------------------------------------
Al Viro (10):
      comedi: move compat ioctl handling to native fops
      comedi: get rid of indirection via translated_ioctl()
      comedi: get rid of compat_alloc_user_space() mess in COMEDI_CHANINFO compat
      comedi: get rid of compat_alloc_user_space() mess in COMEDI_RANGEINFO compat
      comedi: get rid of compat_alloc_user_space() mess in COMEDI_INSN compat
      comedi: get rid of compat_alloc_user_space() mess in COMEDI_INSNLIST compat
      comedi: lift copy_from_user() into callers of __comedi_get_user_cmd()
      comedi: do_cmdtest_ioctl(): lift copyin/copyout into the caller
      comedi: do_cmd_ioctl(): lift copyin/copyout into the caller
      comedi: get rid of compat_alloc_user_space() mess in COMEDI_CMD{,TEST} compat

 drivers/staging/comedi/Makefile          |   1 -
 drivers/staging/comedi/comedi_compat32.c | 455 -------------------------
 drivers/staging/comedi/comedi_compat32.h |  28 --
 drivers/staging/comedi/comedi_fops.c     | 564 +++++++++++++++++++++++++------
 drivers/staging/comedi/comedi_internal.h |   2 +-
 drivers/staging/comedi/range.c           |  17 +-
 6 files changed, 467 insertions(+), 600 deletions(-)
 delete mode 100644 drivers/staging/comedi/comedi_compat32.c
 delete mode 100644 drivers/staging/comedi/comedi_compat32.h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
