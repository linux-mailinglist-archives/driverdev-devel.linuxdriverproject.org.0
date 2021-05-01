Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 89CF73705F1
	for <lists+driverdev-devel@lfdr.de>; Sat,  1 May 2021 08:43:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 03FAB84EFA;
	Sat,  1 May 2021 06:43:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lRkx7Fc5Z9Aq; Sat,  1 May 2021 06:43:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5898884EE9;
	Sat,  1 May 2021 06:43:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D15C61BF59A
 for <devel@linuxdriverproject.org>; Sat,  1 May 2021 06:43:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CD77B84EE9
 for <devel@linuxdriverproject.org>; Sat,  1 May 2021 06:43:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id skGsXoVNvFVQ for <devel@linuxdriverproject.org>;
 Sat,  1 May 2021 06:43:25 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from msg-1.mailo.com (msg-1.mailo.com [213.182.54.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C2F7C84EE7
 for <devel@driverdev.osuosl.org>; Sat,  1 May 2021 06:43:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mailo.com; s=mailo;
 t=1619851390; bh=d3WL2gA2XAUnc6D2ONecCXP5byI2wSg4bDECMI4RMxg=;
 h=X-EA-Auth:Date:From:To:Cc:Subject:Message-ID:MIME-Version:
 Content-Type;
 b=ZRUqjCG1bMPsw770xKEiwz9XzzBUtbgczS9TSb71i85IqTxSISfvTR9RgxHK6SAPw
 DKQsIC21b1W9eJzddlwQ3MH3ISV9xFmNHCl4GAyG99VBI1zbhA4K2ZRVpugHq8lWm7
 cvnHu1mx+M+f0A9h/mXaFkYn4WcBr6LB+ptdCwLs=
Received: by 192.168.90.16 [192.168.90.16] with ESMTP
 via ip-206.mailobj.net [213.182.55.206]
 Sat,  1 May 2021 08:43:10 +0200 (CEST)
X-EA-Auth: aorXokUL045zv58Vn/CrdmwgxYKaUVEP5UMMTSECyPc0RO0tye9oPFXBiQUD4gB6tcPVY26l2cP6NXPcJaBdGl7tpBZdJdIP
Date: Sat, 1 May 2021 12:13:04 +0530
From: Deepak R Varma <drv@mailo.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 0/5] staging: media: atomisp: code formatting changes
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
