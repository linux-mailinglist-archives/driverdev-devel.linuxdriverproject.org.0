Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 724141D6B4C
	for <lists+driverdev-devel@lfdr.de>; Sun, 17 May 2020 19:17:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B7193868B4;
	Sun, 17 May 2020 17:17:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fix8L6YeDU0v; Sun, 17 May 2020 17:17:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A6689869F8;
	Sun, 17 May 2020 17:17:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C22EB1BF45A
 for <devel@linuxdriverproject.org>; Sun, 17 May 2020 17:17:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id BEAFF868C7
 for <devel@linuxdriverproject.org>; Sun, 17 May 2020 17:17:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id r9lVxJzaTl_E for <devel@linuxdriverproject.org>;
 Sun, 17 May 2020 17:17:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
 [209.85.215.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A8E6A868B4
 for <devel@driverdev.osuosl.org>; Sun, 17 May 2020 17:17:37 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id f4so3612214pgi.10
 for <devel@driverdev.osuosl.org>; Sun, 17 May 2020 10:17:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=irZJO6pbVEj3U3ABtpGtJ2F3x8dJhV+kA+LvCOkLQAM=;
 b=g4qVqQ6ZkbUaOpYMrTZnqO73gxbWCwKvh5D7cyC6sEpkb31VApFUJkeiVXI8OV4/I1
 +II/WcosEgv/XjaqGGWrfVCvq3R3g3WHkJVOpq+TfiYFNttx15tf1PIFpIswIdT17d/n
 aNVp37XfX3SjQxAcB5AjdVfsnOAokJaofT0BdJUeqewMCcgvauxoZ1v6rhbKhObFU1Pp
 atXYjCPXzvEwZ3t9+0KzI3ExOVD7flHH93pbSejT24Iw6b9OpwyONSO3lU4TzS6xRgF2
 BkSx6z1lUFttB+UrEnN6boxXJeKmx18dRAGawqdPUO2XiUESaNJ/M71Ks/jxzi+enHWw
 rCwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=irZJO6pbVEj3U3ABtpGtJ2F3x8dJhV+kA+LvCOkLQAM=;
 b=RmpSXt0NMeVb+U98Wk2qb+8SDeZkbr9uZcvZINyoWGbpP4pVVn4Ep2pkcrHh/4LxUW
 hrx9SVXeGQ6c5Q9FLslfoHjEIFQRdgzUgDTARmuI/REZwdlciyfzJgN8kGXtM55r/vfd
 Y37s1gt73KMegfgtKyLrHrq1rwOAPupF1IGr3pQj+pxv6y18jFnkUR/o3PTzHFpL7TMu
 LZcDl2IbjsroV+otsgMFI583Hh9REeiOh71d7nUN6n0UYV6JdqcKqKDXdtw/ovVd99SV
 +A6qvMRzk8JJErJ+pgSB5gpQcL9o7+dnK4CI7e56WhNLA3Ou/lhK92WBUTpWr5P5KGwr
 PFAw==
X-Gm-Message-State: AOAM530my6B4Dy3m65sU6lsP7jJeqLT+870S8Mzn4KUxmkmjQ9hRuHa4
 oCUky+/cp8rnMoi9u92PeBs=
X-Google-Smtp-Source: ABdhPJzDMqylgG25aUmEbtkKs3TZE0hUCFM05gws1ASXnZY92+suPYvDM/e5hNgUGz7wh+/sWDgzuQ==
X-Received: by 2002:a62:4e87:: with SMTP id
 c129mr13264991pfb.178.1589735856985; 
 Sun, 17 May 2020 10:17:36 -0700 (PDT)
Received: from cvds-vagarw7.iind.intel.com (fmdmzpr03-ext.fm.intel.com.
 [192.55.54.38])
 by smtp.googlemail.com with ESMTPSA id n69sm6513900pjc.8.2020.05.17.10.17.29
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 17 May 2020 10:17:36 -0700 (PDT)
From: Vaibhav Agarwal <vaibhav.sr@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Alex Elder <elder@kernel.org>, Johan Hovold <johan@kernel.org>,
 Mark Greer <mgreer@animalcreek.com>
Subject: [PATCH V1 0/6] Enable Greybus Audio codec driver
Date: Sun, 17 May 2020 22:47:15 +0530
Message-Id: <cover.1589734179.git.vaibhav.sr@gmail.com>
X-Mailer: git-send-email 2.7.4
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
Cc: devel@driverdev.osuosl.org, greybus-dev@lists.linaro.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 linux-kernel@vger.kernel.org, Vaibhav Agarwal <vaibhav.sr@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The existing GB Audio codec driver is dependent on MSM8994 Audio driver.
During the development stage, this depdency was configured due to
various changes involved in MSM Audio driver to enable addtional codec
card and some of the changes proposed in mainline ASoC framework.
However, these are not the real dependencies and some of them can be
easily removed.

The folowing patch series includes the changes to resolve unnecessary
depedencies and make the codec driver functional with the latest kernel.

Patch 1,2: Incudes jack framework related changes.
Patch 3,4,5: Resolves compilation error observed with the latest kernel and
also provides helper APIs required to allow dynamic addition/removal of
modules.
Patch 6: Finally provides config options and related Makefile changes to
enable GB Codec driver.

Thanks to Alexandre for raising the headsup [1] and motivating me to provide
the necessary changes.

[1] https://lore.kernel.org/lkml/20200507212912.599433-1-alexandre.belloni@bootlin.com/

Vaibhav Agarwal (6):
  staging: greybus: audio: Update snd_jack FW usage as per new APIs
  staging: greybus: audio: Maintain jack list within GB Audio module
  staging: greybus: audio: Resolve compilation errors for GB codec
    module
  staging: greybus: audio: Resolve compilation error in topology parser
  staging: greybus: audio: Add helper APIs for dynamic audio modules
  staging: greybus: audio: Enable GB codec, audio module compilation.

 drivers/staging/greybus/Kconfig          |  14 ++-
 drivers/staging/greybus/Makefile         |   6 +-
 drivers/staging/greybus/audio_codec.c    | 187 ++++++++++++++++++-----------
 drivers/staging/greybus/audio_codec.h    |  12 +-
 drivers/staging/greybus/audio_helper.c   | 197 +++++++++++++++++++++++++++++++
 drivers/staging/greybus/audio_helper.h   |  17 +++
 drivers/staging/greybus/audio_module.c   |  20 ++--
 drivers/staging/greybus/audio_topology.c | 130 ++++++++++----------
 8 files changed, 427 insertions(+), 156 deletions(-)
 create mode 100644 drivers/staging/greybus/audio_helper.c
 create mode 100644 drivers/staging/greybus/audio_helper.h

-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
