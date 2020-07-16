Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 98754221A8A
	for <lists+driverdev-devel@lfdr.de>; Thu, 16 Jul 2020 05:08:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DB90F88E00;
	Thu, 16 Jul 2020 03:08:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LSJpOMFrKana; Thu, 16 Jul 2020 03:08:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9720A88AE6;
	Thu, 16 Jul 2020 03:08:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1FAC21BF3AF
 for <devel@linuxdriverproject.org>; Thu, 16 Jul 2020 03:08:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 1B7258A60E
 for <devel@linuxdriverproject.org>; Thu, 16 Jul 2020 03:08:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yhHju2ukY9Cc for <devel@linuxdriverproject.org>;
 Thu, 16 Jul 2020 03:08:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f66.google.com (mail-pj1-f66.google.com
 [209.85.216.66])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6C6888A605
 for <devel@driverdev.osuosl.org>; Thu, 16 Jul 2020 03:08:53 +0000 (UTC)
Received: by mail-pj1-f66.google.com with SMTP id cm21so4099678pjb.3
 for <devel@driverdev.osuosl.org>; Wed, 15 Jul 2020 20:08:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=/eo13gw5fJCvhJnxKm6L26qmA1xy2iBEtE20aAjPg9o=;
 b=ntnEdubbdqpGPgOV96gJLeIOeDJD9bl8sWEZchgJzsbJoRlAxafbTPHiU+bBiSM9Ay
 Bb6I6dJreCIWt+SNvx3uSnD715S/LsJbtTBKRxlploZohP5A0IMBAo41xfxzSg+BNCgv
 UyZA7zqZ2jt8SIod07xOd5QbCCRaueqNa4gOI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=/eo13gw5fJCvhJnxKm6L26qmA1xy2iBEtE20aAjPg9o=;
 b=K2/hipHa8BeUPNHuttHjX+2K2/chZjZXgZ+M71AFRBdttGyGdQHb4RONqPCrloZm8V
 hjidYhX6qEQttOj6o0wB8tJmgFzwH2BL0XZpuuJ4slc8Z+aLd2JAJbQG7tyr0+gpUonH
 IZiaofHhLCbfST91xeOTovF+bdV5rRbcAR2hHpEj1elfNyrR4MrRJT6HA2hRcku6ye2n
 ZgASEgrAhN6uZobzfgu2oQ/t0YPVjgWWk3xxAqiVtLwp8zs0cM7NW+I61x7ITALYE4MQ
 nmBcn4G855vtcLKfLRf1Pc5Fmot+vCufqVRQqnYE9uY8hYREnYWfLAHvI0FCD9ZgFMwI
 Awzg==
X-Gm-Message-State: AOAM531oV8c54UrsR/ubjjlaHsEaQ5NcfnuE3Uw9RcOI9Gl90glc1nk6
 A41GC/E3coOoz0bfFfuMIX2m8w==
X-Google-Smtp-Source: ABdhPJyJvjSFUmwOZKl8hOEZtdbgisML9TaMY9zA2DquJ5wPNkSNvu+LzxqBXFwknWNq3+GQp8EoZw==
X-Received: by 2002:a17:902:ee8b:: with SMTP id
 a11mr1923650pld.26.1594868932899; 
 Wed, 15 Jul 2020 20:08:52 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id x7sm2909172pfp.96.2020.07.15.20.08.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Jul 2020 20:08:51 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 0/3] Modernize tasklet callback API
Date: Wed, 15 Jul 2020 20:08:44 -0700
Message-Id: <20200716030847.1564131-1-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
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
Cc: Kuppuswamy Sathyanarayanan <sathyanarayanan.kuppuswamy@linux.intel.com>,
 "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
 Oscar Carter <oscar.carter@gmx.com>, Mitchell Blank Jr <mitch@sfgoth.com>,
 kernel-hardening@lists.openwall.com, Peter Zijlstra <peterz@infradead.org>,
 kgdb-bugreport@lists.sourceforge.net,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>, alsa-devel@alsa-project.org,
 Allen Pais <allen.lkml@gmail.com>,
 Christian Gromm <christian.gromm@microchip.com>, Will Deacon <will@kernel.org>,
 devel@driverdev.osuosl.org, Jonathan Corbet <corbet@lwn.net>,
 Daniel Thompson <daniel.thompson@linaro.org>,
 "David S. Miller" <davem@davemloft.net>,
 Masahiro Yamada <masahiroy@kernel.org>, Takashi Iwai <tiwai@suse.com>,
 Julian Wiedmann <jwi@linux.ibm.com>,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Nishka Dasgupta <nishkadg.linux@gmail.com>, Jiri Slaby <jslaby@suse.com>,
 Jakub Kicinski <kuba@kernel.org>, Guenter Roeck <linux@roeck-us.net>,
 Wambui Karuga <wambui.karugax@gmail.com>, Kees Cook <keescook@chromium.org>,
 Vasily Gorbik <gor@linux.ibm.com>, linux-s390@vger.kernel.org,
 linux-kernel@vger.kernel.org, Heiko Carstens <hca@linux.ibm.com>,
 linux-input@vger.kernel.org, Ursula Braun <ubraun@linux.ibm.com>,
 Stephen Boyd <swboyd@chromium.org>,
 Chris Packham <chris.packham@alliedtelesis.co.nz>,
 Harald Freudenberger <freude@linux.ibm.com>,
 Thomas Gleixner <tglx@linutronix.de>, Jaroslav Kysela <perex@perex.cz>,
 Felipe Balbi <balbi@kernel.org>, Kyungtae Kim <kt0755@gmail.com>,
 netdev@vger.kernel.org, Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Douglas Anderson <dianders@chromium.org>,
 Kevin Curtis <kevin.curtis@farsite.co.uk>, linux-usb@vger.kernel.org,
 Jason Wessel <jason.wessel@windriver.com>,
 Romain Perier <romain.perier@gmail.com>, Karsten Graul <kgraul@linux.ibm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi,

This is the infrastructure changes to prepare the tasklet API for
conversion to passing the tasklet struct as the callback argument instead
of an arbitrary unsigned long. The first patch details why this is useful
(it's the same rationale as the timer_struct changes from a bit ago:
less abuse during memory corruption attacks, more in line with existing
ways of doing things in the kernel, save a little space in struct,
etc). Notably, the existing tasklet API use is much less messy, so there
is less to clean up.

It's not clear to me which tree this should go through... Greg since it
starts with a USB clean-up, -tip for timer or interrupt, or if I should
just carry it. I'm open to suggestions, but if I don't hear otherwise,
I'll just carry it.

My goal is to have this merged for v5.9-rc1 so that during the v5.10
development cycle the new API will be available. The entire tree of
changes is here[1] currently, but to split it up by maintainer the
infrastructure changes need to be landed first.

Review and Acks appreciated! :)

Thanks,

-Kees

[1] https://github.com/allenpais/tasklets/commits/tasklets_V2

Kees Cook (2):
  usb: gadget: udc: Avoid tasklet passing a global
  treewide: Replace DECLARE_TASKLET() with DECLARE_TASKLET_OLD()

Romain Perier (1):
  tasklet: Introduce new initialization API

 drivers/input/keyboard/omap-keypad.c   |  2 +-
 drivers/input/serio/hil_mlc.c          |  2 +-
 drivers/net/wan/farsync.c              |  4 +--
 drivers/s390/crypto/ap_bus.c           |  2 +-
 drivers/staging/most/dim2/dim2.c       |  2 +-
 drivers/staging/octeon/ethernet-tx.c   |  2 +-
 drivers/tty/vt/keyboard.c              |  2 +-
 drivers/usb/gadget/udc/snps_udc_core.c |  6 ++---
 drivers/usb/host/fhci-sched.c          |  2 +-
 include/linux/interrupt.h              | 37 ++++++++++++++++++++++----
 kernel/backtracetest.c                 |  2 +-
 kernel/debug/debug_core.c              |  2 +-
 kernel/irq/resend.c                    |  2 +-
 kernel/softirq.c                       | 18 ++++++++++++-
 net/atm/pppoatm.c                      |  2 +-
 net/iucv/iucv.c                        |  2 +-
 sound/drivers/pcsp/pcsp_lib.c          |  2 +-
 17 files changed, 66 insertions(+), 25 deletions(-)

-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
