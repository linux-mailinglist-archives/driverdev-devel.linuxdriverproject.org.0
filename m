Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E2BE38B686
	for <lists+driverdev-devel@lfdr.de>; Thu, 20 May 2021 21:01:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 75E6660C29;
	Thu, 20 May 2021 19:01:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EXJ5XM4aTCNF; Thu, 20 May 2021 19:01:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D281060BFF;
	Thu, 20 May 2021 19:01:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 14BAA1C118B
 for <devel@linuxdriverproject.org>; Thu, 20 May 2021 19:01:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0375284425
 for <devel@linuxdriverproject.org>; Thu, 20 May 2021 19:01:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=mailo.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id I-uypRtGn7rP for <devel@linuxdriverproject.org>;
 Thu, 20 May 2021 19:01:15 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from msg-2.mailo.com (msg-2.mailo.com [213.182.54.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id ED8BE84412
 for <devel@driverdev.osuosl.org>; Thu, 20 May 2021 19:01:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mailo.com; s=mailo;
 t=1621537260; bh=TWiNdURZ1lEp1xpr9VOsip1Riwkh1Q/WyXtAZIvp1sQ=;
 h=X-EA-Auth:Date:From:To:Cc:Subject:Message-ID:MIME-Version:
 Content-Type;
 b=SPPufKj9kVK2eOk1QrPiYUYx0AWJv1/WFfUYzBgiUpPuZpQgqLOXHo/MHP9caAPgG
 KtNMVaHwX4/juv1rN0T9QGc5rSALATZXkKo2jJemMO/RgxLBDLiREGsA5W0NtxqhRb
 w28YgHe5zz8VUIJU01uc+6fqqvnmhQtJRhdPm5aM=
Received: by 192.168.90.15 [192.168.90.15] with ESMTP
 via ip-206.mailobj.net [213.182.55.206]
 Thu, 20 May 2021 21:00:59 +0200 (CEST)
X-EA-Auth: kLc09m6AjTNTFQ0pDF3o6BRXVrApVEscOKBZcnucRK2aUaeIHyBXoUEW0budx8Cf2EqYjjCVjRFTxnnHUlLs7BB0iKLx2byc
Date: Fri, 21 May 2021 00:30:41 +0530
From: Deepak R Varma <drv@mailo.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH RESEND 0/5] staging: media: atomisp: code formatting changes
Message-ID: <cover.1619850663.git.drv@mailo.com>
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
Cc: devel@driverdev.osuosl.org, drv@mailo.com, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch set overall improves the code organisation and readability of
the files of atomisp drivers. There are several complaints reported by
checkpatch including ERROR and WARNING types on the files under atomisp/pci
directory.

The changes are proposed on a per file basis since there are many
issues to be addressed in each individual file. The patches are built
on the media_tree/for-v5.14-out1 tree/branch.


Deepak R Varma (5):
  staging: media: atomisp: code formatting changes atomisp_csi2.c
  staging: media: atomisp: code formatting changes sh_css_mipi.c
  staging: media: atomisp: code formatting changes sh_css_params.c
  staging: media: atomisp: code formatting changes sh_css_sp.c
  staging: media: atomisp: code formatting changes sh_css_version.c

 .../staging/media/atomisp/pci/atomisp_csi2.c  |  72 +-
 .../staging/media/atomisp/pci/sh_css_mipi.c   | 170 ++--
 .../staging/media/atomisp/pci/sh_css_params.c | 929 +++++++++---------
 drivers/staging/media/atomisp/pci/sh_css_sp.c | 471 ++++-----
 .../media/atomisp/pci/sh_css_version.c        |   4 +-
 5 files changed, 754 insertions(+), 892 deletions(-)

-- 
2.30.2



_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
