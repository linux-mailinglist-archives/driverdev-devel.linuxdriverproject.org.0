Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8049D1E0756
	for <lists+driverdev-devel@lfdr.de>; Mon, 25 May 2020 08:56:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id EC9DD88275;
	Mon, 25 May 2020 06:56:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Hei0w6qXxVRd; Mon, 25 May 2020 06:56:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1882F88179;
	Mon, 25 May 2020 06:56:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B89291BF21A
 for <devel@linuxdriverproject.org>; Mon, 25 May 2020 06:56:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B5E0A8639E
 for <devel@linuxdriverproject.org>; Mon, 25 May 2020 06:56:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Qp2dpxlMR2DP for <devel@linuxdriverproject.org>;
 Mon, 25 May 2020 06:56:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9C89F86BCF
 for <devel@driverdev.osuosl.org>; Mon, 25 May 2020 06:56:16 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5c5.dynamic.kabel-deutschland.de
 [95.90.213.197])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5226B2086A;
 Mon, 25 May 2020 06:56:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590389776;
 bh=rOGYTHPPB4TI062dzNZeUklQhWQMYstmngXrrqhNs9Q=;
 h=From:To:Cc:Subject:Date:From;
 b=spxS6c5GHpY/59oVa0NtF8vIidHE/QtOrIZ/oNOjQzEpoxwkRzoreEtn8aLVgNwb1
 dlDovIlcnp9NS7VB5MgmqcWbkPqww1jeYffocjj1ts/KwsfCqCC6xYc5wAeJiDgxoi
 6vRkL/3LS3sBo+wiRYlS6AKrVuLgexCeKsQLZJvk=
Received: from mchehab by mail.kernel.org with local (Exim 4.93)
 (envelope-from <mchehab@kernel.org>)
 id 1jd71x-001d6c-Sh; Mon, 25 May 2020 08:56:13 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: 
Subject: [PATCH 00/11] Some fixes and cleanups for atomisp driver
Date: Mon, 25 May 2020 08:55:59 +0200
Message-Id: <cover.1590389536.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.26.2
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
Cc: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 devel@driverdev.osuosl.org, Sakari Ailus <sakari.ailus@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The atomisp driver has lots of issues. This series get rid of a few of
them and updates the TODO list to reflect the current status and
provide more details aboug some items.

Mauro Carvalho Chehab (11):
  media: atomisp: get rid of hmm_vm.c
  media: atomisp: reduce debug printk rate when IRQs are received
  media: atomisp: avoid a copy of v4l2_mbus_framefmt at stack
  media: atomisp: improve debug messages for set format
  media: atomisp: don't flood dmesg with -EAGAIN return codes
  media: atomisp: update TODO list
  media: atomisp: get rid of some old broken debug code
  media: atomisp: make it use dbg_level to control debug level
  media: atomisp: partially get rid of one abstraction layer
  media: atomisp: drop a cast for a const argument
  media: atomisp: fix size of delay_frames array

 drivers/staging/media/atomisp/Makefile        |   1 -
 drivers/staging/media/atomisp/TODO            | 188 +++++--
 .../media/atomisp/include/hmm/hmm_vm.h        |  65 ---
 .../staging/media/atomisp/pci/atomisp_acc.c   |  12 +-
 .../staging/media/atomisp/pci/atomisp_cmd.c   | 531 +++++++++---------
 .../staging/media/atomisp/pci/atomisp_cmd.h   |  12 +-
 .../media/atomisp/pci/atomisp_common.h        |   2 +-
 .../media/atomisp/pci/atomisp_compat.h        | 234 +++-----
 .../media/atomisp/pci/atomisp_compat_css20.c  | 302 +++++-----
 .../media/atomisp/pci/atomisp_compat_css20.h  | 137 +----
 .../staging/media/atomisp/pci/atomisp_fops.c  | 114 ++--
 .../staging/media/atomisp/pci/atomisp_fops.h  |   4 +-
 .../staging/media/atomisp/pci/atomisp_ioctl.c |  97 ++--
 .../staging/media/atomisp/pci/atomisp_ioctl.h |   2 +-
 .../media/atomisp/pci/atomisp_subdev.c        |  32 +-
 .../media/atomisp/pci/atomisp_subdev.h        |  22 +-
 .../media/atomisp/pci/atomisp_tables.h        |  18 +-
 .../staging/media/atomisp/pci/atomisp_v4l2.c  |   2 +-
 .../media/atomisp/pci/hmm/hmm_dynamic_pool.c  | 233 --------
 .../staging/media/atomisp/pci/hmm/hmm_vm.c    | 212 -------
 .../staging/media/atomisp/pci/ia_css_pipe.h   |   2 +-
 .../isp/kernels/ref/ref_1.0/ia_css_ref.host.c |   2 +-
 .../isp/kernels/ref/ref_1.0/ia_css_ref.host.h |   2 +-
 .../isp/kernels/tnr/tnr_1.0/ia_css_tnr.host.c |   2 +-
 .../isp/kernels/tnr/tnr_1.0/ia_css_tnr.host.h |   2 +-
 .../runtime/debug/interface/ia_css_debug.h    |   5 +-
 .../pci/runtime/debug/src/ia_css_debug.c      |   9 +-
 .../staging/media/atomisp/pci/sh_css_defs.h   |   2 -
 .../media/atomisp/pci/sh_css_internal.h       |   4 +-
 drivers/staging/media/atomisp/pci/sh_css_sp.c |   4 +-
 30 files changed, 835 insertions(+), 1419 deletions(-)
 delete mode 100644 drivers/staging/media/atomisp/include/hmm/hmm_vm.h
 delete mode 100644 drivers/staging/media/atomisp/pci/hmm/hmm_dynamic_pool.c
 delete mode 100644 drivers/staging/media/atomisp/pci/hmm/hmm_vm.c

-- 
2.26.2


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
