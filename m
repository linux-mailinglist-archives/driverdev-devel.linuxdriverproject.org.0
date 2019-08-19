Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C78192160
	for <lists+driverdev-devel@lfdr.de>; Mon, 19 Aug 2019 12:35:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0FD30204D9;
	Mon, 19 Aug 2019 10:35:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id w5NtpbIj-gsm; Mon, 19 Aug 2019 10:35:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 22A8A204C5;
	Mon, 19 Aug 2019 10:35:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D73801BF36D
 for <devel@linuxdriverproject.org>; Mon, 19 Aug 2019 10:35:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D482320468
 for <devel@linuxdriverproject.org>; Mon, 19 Aug 2019 10:35:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZtDk-G0Tq58E for <devel@linuxdriverproject.org>;
 Mon, 19 Aug 2019 10:35:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga07-in.huawei.com [45.249.212.35])
 by silver.osuosl.org (Postfix) with ESMTPS id 503832041A
 for <devel@driverdev.osuosl.org>; Mon, 19 Aug 2019 10:35:45 +0000 (UTC)
Received: from DGGEMS401-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 51609BA7CB78A0572AFD;
 Mon, 19 Aug 2019 18:35:12 +0800 (CST)
Received: from architecture4.huawei.com (10.140.130.215) by smtp.huawei.com
 (10.3.19.201) with Microsoft SMTP Server (TLS) id 14.3.439.0; Mon, 19 Aug
 2019 18:35:03 +0800
From: Gao Xiang <gaoxiang25@huawei.com>
To: Chao Yu <yuchao0@huawei.com>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, <devel@driverdev.osuosl.org>,
 <linux-fsdevel@vger.kernel.org>
Subject: [PATCH 0/6] staging: erofs: first stage of corrupted compressed images
Date: Mon, 19 Aug 2019 18:34:20 +0800
Message-ID: <20190819103426.87579-1-gaoxiang25@huawei.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190819080218.GA42231@138>
References: <20190819080218.GA42231@138>
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

Hi all,

I have fuzzed EROFS for about a day and observed the following
issues due to corrupted compression images by my first fuzzer
(It seems ok for uncompressed images for now). Now it can survive
for 10+ minutes on my PC (Let me send out what I'm done and
I will dig it more deeply...)

All the fixes are trivial.

Note that those have dependency on EFSCORRUPTED, so for-next
is needed and I will manually backport them by hand due to
many cleanup patches...

Thanks,
Gao Xiang

Gao Xiang (6):
  staging: erofs: some compressed cluster should be submitted for
    corrupted images
  staging: erofs: cannot set EROFS_V_Z_INITED_BIT if fill_inode_lazy
    fails
  staging: erofs: add two missing erofs_workgroup_put for corrupted
    images
  staging: erofs: avoid loop in submit chains
  staging: erofs: detect potential multiref due to corrupted images
  staging: erofs: avoid endless loop of invalid lookback distance 0

 drivers/staging/erofs/zdata.c | 46 ++++++++++++++++++++++++++---------
 drivers/staging/erofs/zmap.c  |  9 +++++--
 2 files changed, 42 insertions(+), 13 deletions(-)

-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
