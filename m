Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BDD2729F697
	for <lists+driverdev-devel@lfdr.de>; Thu, 29 Oct 2020 22:06:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 3C5C522925;
	Thu, 29 Oct 2020 21:06:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vIPy1u1CiU8i; Thu, 29 Oct 2020 21:06:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B4C892045C;
	Thu, 29 Oct 2020 21:06:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5215C1BF3F4
 for <devel@linuxdriverproject.org>; Thu, 29 Oct 2020 21:06:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4E9E986BE0
 for <devel@linuxdriverproject.org>; Thu, 29 Oct 2020 21:06:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id E43N7h+wePzT for <devel@linuxdriverproject.org>;
 Thu, 29 Oct 2020 21:06:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 67AB286A6B
 for <devel@driverdev.osuosl.org>; Thu, 29 Oct 2020 21:06:32 +0000 (UTC)
Received: from mail-qv1-f54.google.com (mail-qv1-f54.google.com
 [209.85.219.54])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B35F420790
 for <devel@driverdev.osuosl.org>; Thu, 29 Oct 2020 21:06:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1604005591;
 bh=N4ClDiY0laorS+29+1mvV2WgI/I6Hyfs/fIK1pWQNJM=;
 h=From:Date:Subject:To:Cc:From;
 b=12BtIfHyicBk5DNBBRGM5SaBxy+XrhxSCR3hhsGGdWzlZ2De9lm//a8NMrHCdTtbN
 LKbXIYh7GCJJcHhYPczq6RkZgTtrdgKYeFyCHe+EqXPZYSkK69Ziwua9UU1RHkX9PI
 qX9C4j9ySSHGh7W2mPj9aLOVNN7iIkEzXzXhBGmU=
Received: by mail-qv1-f54.google.com with SMTP id s1so1922919qvm.13
 for <devel@driverdev.osuosl.org>; Thu, 29 Oct 2020 14:06:31 -0700 (PDT)
X-Gm-Message-State: AOAM5314Gfp9AkiRf662xcD19Mzawf6lcFlDdcUThl14XZ6lxK20f9sW
 1Mu+/v2DftBik1OjKEsF0+NssEBjcsbDknUip+g=
X-Google-Smtp-Source: ABdhPJwpf98zWmGiKaNypey91Yjw92ghodOzFm8+GjIX1WObDqJopLu9KFhdQ1Hgnkzh0Ien+1g0faXPF88ZNIGfMK4=
X-Received: by 2002:a0c:c187:: with SMTP id n7mr6510328qvh.19.1604005590727;
 Thu, 29 Oct 2020 14:06:30 -0700 (PDT)
MIME-Version: 1.0
From: Arnd Bergmann <arnd@kernel.org>
Date: Thu, 29 Oct 2020 22:06:14 +0100
X-Gmail-Original-Message-ID: <CAK8P3a2zy2X9rivWcGaOB=c8SQ8Gcc8tm_6DMOmcQVKFift+Tg@mail.gmail.com>
Message-ID: <CAK8P3a2zy2X9rivWcGaOB=c8SQ8Gcc8tm_6DMOmcQVKFift+Tg@mail.gmail.com>
Subject: [GIT PULL, staging, net-next] wimax: move to staging
To: gregkh <gregkh@linuxfoundation.org>, Jakub Kicinski <kuba@kernel.org>
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
Cc: driverdevel <devel@driverdev.osuosl.org>,
 Networking <netdev@vger.kernel.org>, Johannes Berg <johannes@sipsolutions.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Inaky Perez-Gonzalez <inaky.perez-gonzalez@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The following changes since commit 3650b228f83adda7e5ee532e2b90429c03f7b9ec:

  Linux 5.10-rc1 (2020-10-25 15:14:11 -0700)

are available in the Git repository at:

  git://git.kernel.org:/pub/scm/linux/kernel/git/arnd/playground.git
tags/wimax-staging

for you to fetch changes up to f54ec58fee837ec847cb8b50593e81bfaa46107f:

  wimax: move out to staging (2020-10-29 19:27:45 +0100)

----------------------------------------------------------------
wimax: move to staging

After I sent a fix for what appeared to be a harmless warning in
the wimax user interface code, the conclusion was that the whole
thing has most likely not been used in a very long time, and the
user interface possibly been broken since b61a5eea5904 ("wimax: use
genl_register_family_with_ops()").

Using a shared branch between net-next and staging should help
coordinate patches getting submitted against it.

----------------------------------------------------------------
Arnd Bergmann (2):
      wimax: fix duplicate initializer warning
      wimax: move out to staging

 Documentation/admin-guide/index.rst                |  1 -
 Documentation/networking/kapi.rst                  | 21 ----------------
 .../translations/zh_CN/admin-guide/index.rst       |  1 -
 MAINTAINERS                                        | 22 ----------------
 drivers/net/Kconfig                                |  2 --
 drivers/net/Makefile                               |  1 -
 drivers/net/wimax/Kconfig                          | 18 --------------
 drivers/net/wimax/Makefile                         |  2 --
 drivers/staging/Kconfig                            |  2 ++
 drivers/staging/Makefile                           |  1 +
 .../staging/wimax/Documentation}/i2400m.rst        |  0
 .../staging/wimax/Documentation}/index.rst         |  0
 .../staging/wimax/Documentation}/wimax.rst         |  0
 {net => drivers/staging}/wimax/Kconfig             |  6 +++++
 {net => drivers/staging}/wimax/Makefile            |  2 ++
 drivers/staging/wimax/TODO                         | 18 ++++++++++++++
 {net => drivers/staging}/wimax/debug-levels.h      |  2 +-
 {net => drivers/staging}/wimax/debugfs.c           |  2 +-
 drivers/{net => staging}/wimax/i2400m/Kconfig      |  0
 drivers/{net => staging}/wimax/i2400m/Makefile     |  0
 drivers/{net => staging}/wimax/i2400m/control.c    |  2 +-
 .../{net => staging}/wimax/i2400m/debug-levels.h   |  2 +-
 drivers/{net => staging}/wimax/i2400m/debugfs.c    |  0
 drivers/{net => staging}/wimax/i2400m/driver.c     |  2 +-
 drivers/{net => staging}/wimax/i2400m/fw.c         |  0
 drivers/{net => staging}/wimax/i2400m/i2400m-usb.h |  0
 drivers/{net => staging}/wimax/i2400m/i2400m.h     |  4 +--
 .../staging/wimax/i2400m/linux-wimax-i2400m.h      |  0
 drivers/{net => staging}/wimax/i2400m/netdev.c     |  0
 drivers/{net => staging}/wimax/i2400m/op-rfkill.c  |  2 +-
 drivers/{net => staging}/wimax/i2400m/rx.c         |  0
 drivers/{net => staging}/wimax/i2400m/sysfs.c      |  0
 drivers/{net => staging}/wimax/i2400m/tx.c         |  0
 .../wimax/i2400m/usb-debug-levels.h                |  2 +-
 drivers/{net => staging}/wimax/i2400m/usb-fw.c     |  0
 drivers/{net => staging}/wimax/i2400m/usb-notif.c  |  0
 drivers/{net => staging}/wimax/i2400m/usb-rx.c     |  0
 drivers/{net => staging}/wimax/i2400m/usb-tx.c     |  0
 drivers/{net => staging}/wimax/i2400m/usb.c        |  2 +-
 {net => drivers/staging}/wimax/id-table.c          |  2 +-
 .../staging/wimax/linux-wimax-debug.h              |  2 +-
 .../wimax.h => drivers/staging/wimax/linux-wimax.h |  0
 .../wimax.h => drivers/staging/wimax/net-wimax.h   |  2 +-
 {net => drivers/staging}/wimax/op-msg.c            |  2 +-
 {net => drivers/staging}/wimax/op-reset.c          |  4 +--
 {net => drivers/staging}/wimax/op-rfkill.c         |  4 +--
 {net => drivers/staging}/wimax/op-state-get.c      |  4 +--
 {net => drivers/staging}/wimax/stack.c             | 29 ++++++++++++++--------
 {net => drivers/staging}/wimax/wimax-internal.h    |  2 +-
 net/Kconfig                                        |  2 --
 net/Makefile                                       |  1 -
 51 files changed, 68 insertions(+), 103 deletions(-)
 delete mode 100644 drivers/net/wimax/Kconfig
 delete mode 100644 drivers/net/wimax/Makefile
 rename {Documentation/admin-guide/wimax =>
drivers/staging/wimax/Documentation}/i2400m.rst (100%)
 rename {Documentation/admin-guide/wimax =>
drivers/staging/wimax/Documentation}/index.rst (100%)
 rename {Documentation/admin-guide/wimax =>
drivers/staging/wimax/Documentation}/wimax.rst (100%)
 rename {net => drivers/staging}/wimax/Kconfig (94%)
 rename {net => drivers/staging}/wimax/Makefile (83%)
 create mode 100644 drivers/staging/wimax/TODO
 rename {net => drivers/staging}/wimax/debug-levels.h (96%)
 rename {net => drivers/staging}/wimax/debugfs.c (97%)
 rename drivers/{net => staging}/wimax/i2400m/Kconfig (100%)
 rename drivers/{net => staging}/wimax/i2400m/Makefile (100%)
 rename drivers/{net => staging}/wimax/i2400m/control.c (99%)
 rename drivers/{net => staging}/wimax/i2400m/debug-levels.h (96%)
 rename drivers/{net => staging}/wimax/i2400m/debugfs.c (100%)
 rename drivers/{net => staging}/wimax/i2400m/driver.c (99%)
 rename drivers/{net => staging}/wimax/i2400m/fw.c (100%)
 rename drivers/{net => staging}/wimax/i2400m/i2400m-usb.h (100%)
 rename drivers/{net => staging}/wimax/i2400m/i2400m.h (99%)
 rename include/uapi/linux/wimax/i2400m.h =>
drivers/staging/wimax/i2400m/linux-wimax-i2400m.h (100%)
 rename drivers/{net => staging}/wimax/i2400m/netdev.c (100%)
 rename drivers/{net => staging}/wimax/i2400m/op-rfkill.c (99%)
 rename drivers/{net => staging}/wimax/i2400m/rx.c (100%)
 rename drivers/{net => staging}/wimax/i2400m/sysfs.c (100%)
 rename drivers/{net => staging}/wimax/i2400m/tx.c (100%)
 rename drivers/{net => staging}/wimax/i2400m/usb-debug-levels.h (95%)
 rename drivers/{net => staging}/wimax/i2400m/usb-fw.c (100%)
 rename drivers/{net => staging}/wimax/i2400m/usb-notif.c (100%)
 rename drivers/{net => staging}/wimax/i2400m/usb-rx.c (100%)
 rename drivers/{net => staging}/wimax/i2400m/usb-tx.c (100%)
 rename drivers/{net => staging}/wimax/i2400m/usb.c (99%)
 rename {net => drivers/staging}/wimax/id-table.c (99%)
 rename include/linux/wimax/debug.h =>
drivers/staging/wimax/linux-wimax-debug.h (99%)
 rename include/uapi/linux/wimax.h => drivers/staging/wimax/linux-wimax.h (100%)
 rename include/net/wimax.h => drivers/staging/wimax/net-wimax.h (99%)
 rename {net => drivers/staging}/wimax/op-msg.c (99%)
 rename {net => drivers/staging}/wimax/op-reset.c (98%)
 rename {net => drivers/staging}/wimax/op-rfkill.c (99%)
 rename {net => drivers/staging}/wimax/op-state-get.c (96%)
 rename {net => drivers/staging}/wimax/stack.c (97%)
 rename {net => drivers/staging}/wimax/wimax-internal.h (99%)
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
