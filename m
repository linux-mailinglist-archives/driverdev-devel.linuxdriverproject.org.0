Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A5D978545
	for <lists+driverdev-devel@lfdr.de>; Mon, 29 Jul 2019 08:52:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 74DC820444;
	Mon, 29 Jul 2019 06:52:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vp6Qlc78GKf7; Mon, 29 Jul 2019 06:52:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B72CB204B0;
	Mon, 29 Jul 2019 06:52:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6335E1BF40D
 for <devel@linuxdriverproject.org>; Mon, 29 Jul 2019 06:52:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 5FA23203E0
 for <devel@linuxdriverproject.org>; Mon, 29 Jul 2019 06:52:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9v7xum8w7ejF for <devel@linuxdriverproject.org>;
 Mon, 29 Jul 2019 06:52:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga04-in.huawei.com [45.249.212.190])
 by silver.osuosl.org (Postfix) with ESMTPS id EC49D1FF59
 for <devel@driverdev.osuosl.org>; Mon, 29 Jul 2019 06:52:23 +0000 (UTC)
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id EE91586908F054A1E362;
 Mon, 29 Jul 2019 14:52:19 +0800 (CST)
Received: from architecture4.huawei.com (10.140.130.215) by smtp.huawei.com
 (10.3.19.210) with Microsoft SMTP Server (TLS) id 14.3.439.0; Mon, 29 Jul
 2019 14:52:13 +0800
From: Gao Xiang <gaoxiang25@huawei.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 <devel@driverdev.osuosl.org>
Subject: [PATCH 00/22] staging: erofs: updates according to erofs-outofstaging
 v4
Date: Mon, 29 Jul 2019 14:51:37 +0800
Message-ID: <20190729065159.62378-1-gaoxiang25@huawei.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.140.130.215]
X-CFilter-Loop: Reflected
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
Cc: linux-erofs@lists.ozlabs.org, Chao Yu <chao@kernel.org>,
 LKML <linux-kernel@vger.kernel.org>, weidu.du@huawei.com,
 Fang Wei <fangwei1@huawei.com>, Miao Xie <miaoxie@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patchset includes all meaningful modifications till now according
to erofs-outofstaging v4:
https://lore.kernel.org/linux-fsdevel/20190725095658.155779-1-gaoxiang25@huawei.com/

Some empty lines which were add or delete are not included in this
patchset, I will send erofs-outofstaging v5 later in order to keep
main code bit-for-bit identical with this staging patchset.

Thanks,
Gao Xiang

Gao Xiang (22):
  staging: erofs: update source file headers
  staging: erofs: rename source files for better understanding
  staging: erofs: fix dummy functions erofs_{get,list}xattr
  staging: erofs: keep up erofs_fs.h with erofs-outofstaging patchset
  staging: erofs: sunset erofs_workstn_{lock,unlock}
  staging: erofs: clean up internal.h
  staging: erofs: remove redundant #include "internal.h"
  staging: erofs: kill CONFIG_EROFS_FS_IO_MAX_RETRIES
  staging: erofs: clean up shrinker stuffs
  staging: erofs: kill sbi->dev_name
  staging: erofs: kill all failure handling in fill_super()
  staging: erofs: refine erofs_allocpage()
  staging: erofs: kill CONFIG_EROFS_FS_USE_VM_MAP_RAM
  staging: erofs: tidy up zpvec.h
  staging: erofs: remove redundant braces in inode.c
  staging: erofs: tidy up decompression frontend
  staging: erofs: remove clusterbits in sbi
  staging: erofs: turn cache strategies into mount options
  staging: erofs: tidy up utils.c
  staging: erofs: tidy up internal.h
  staging: erofs: update super.c
  staging: erofs: update Kconfig

 .../erofs/Documentation/filesystems/erofs.txt |   10 +
 drivers/staging/erofs/Kconfig                 |  111 +-
 drivers/staging/erofs/Makefile                |    4 +-
 drivers/staging/erofs/compress.h              |    2 +-
 drivers/staging/erofs/data.c                  |    8 +-
 drivers/staging/erofs/decompressor.c          |   44 +-
 drivers/staging/erofs/dir.c                   |    6 +-
 drivers/staging/erofs/erofs_fs.h              |   47 +-
 .../erofs/include/trace/events/erofs.h        |    2 +-
 drivers/staging/erofs/inode.c                 |   24 +-
 drivers/staging/erofs/internal.h              |  244 +--
 drivers/staging/erofs/namei.c                 |    7 +-
 drivers/staging/erofs/super.c                 |  268 ++-
 .../erofs/{include/linux => }/tagptr.h        |   12 +-
 drivers/staging/erofs/unzip_vle.c             | 1591 -----------------
 drivers/staging/erofs/utils.c                 |  112 +-
 drivers/staging/erofs/xattr.c                 |    6 +-
 drivers/staging/erofs/xattr.h                 |   22 +-
 drivers/staging/erofs/zdata.c                 | 1408 +++++++++++++++
 .../staging/erofs/{unzip_vle.h => zdata.h}    |  119 +-
 drivers/staging/erofs/zmap.c                  |    5 +-
 .../erofs/{unzip_pagevec.h => zpvec.h}        |   41 +-
 22 files changed, 1853 insertions(+), 2240 deletions(-)
 rename drivers/staging/erofs/{include/linux => }/tagptr.h (94%)
 delete mode 100644 drivers/staging/erofs/unzip_vle.c
 create mode 100644 drivers/staging/erofs/zdata.c
 rename drivers/staging/erofs/{unzip_vle.h => zdata.h} (56%)
 rename drivers/staging/erofs/{unzip_pagevec.h => zpvec.h} (78%)

-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
