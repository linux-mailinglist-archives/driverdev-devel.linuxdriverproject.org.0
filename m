Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AB01CB8FB
	for <lists+driverdev-devel@lfdr.de>; Fri,  4 Oct 2019 13:18:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 11AC986BB5;
	Fri,  4 Oct 2019 11:18:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LKYyo5mW4jGJ; Fri,  4 Oct 2019 11:18:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AB5E686BBB;
	Fri,  4 Oct 2019 11:18:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C8D551BF3F7
 for <devel@linuxdriverproject.org>; Fri,  4 Oct 2019 11:18:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C552A86BB3
 for <devel@linuxdriverproject.org>; Fri,  4 Oct 2019 11:18:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id j6d6-k3_w_jW for <devel@linuxdriverproject.org>;
 Fri,  4 Oct 2019 11:18:14 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail3-relais-sop.national.inria.fr
 (mail3-relais-sop.national.inria.fr [192.134.164.104])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D455F86BB2
 for <devel@driverdev.osuosl.org>; Fri,  4 Oct 2019 11:18:13 +0000 (UTC)
X-IronPort-AV: E=Sophos;i="5.67,256,1566856800"; d="scan'208";a="321625499"
Received: from portablejulia.rsr.lip6.fr ([132.227.76.63])
 by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Oct 2019 13:18:10 +0200
Date: Fri, 4 Oct 2019 13:18:11 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: julia@hadrien
To: =?ISO-8859-15?Q?J=E9r=F4me_Pouiller?= <jerome.pouiller@silabs.com>
Subject: [staging:staging-testing 50/59] drivers/staging/wfx/hif_tx.c:53:2-8:
 preceding lock on line 38 (fwd)
Message-ID: <alpine.DEB.2.21.1910041317381.2992@hadrien>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-392352371-1570187891=:2992"
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
 kbuild-all@01.org
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-392352371-1570187891=:2992
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: 8BIT

Hello,

Is an unlock needed on line 53?

julia

---------- Forwarded message ----------
Date: Fri, 4 Oct 2019 19:14:33 +0800
From: kbuild test robot <lkp@intel.com>
To: kbuild@01.org
Cc: Julia Lawall <julia.lawall@lip6.fr>
Subject: [staging:staging-testing 50/59] drivers/staging/wfx/hif_tx.c:53:2-8:
    preceding lock on line 38

CC: kbuild-all@01.org
CC: devel@driverdev.osuosl.org
TO: "Jérôme Pouiller" <jerome.pouiller@silabs.com>
CC: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git staging-testing
head:   40115bbc40e2fd2de0e01ef2a28e0d09a1b5d0d1
commit: 4f8b7fabb15df3658564a98971fc67029be1815d [50/59] staging: wfx: allow to send commands to chip
:::::: branch date: 2 hours ago
:::::: commit date: 2 hours ago

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>
Reported-by: Julia Lawall <julia.lawall@lip6.fr>

>> drivers/staging/wfx/hif_tx.c:53:2-8: preceding lock on line 38

# https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git/commit/?id=4f8b7fabb15df3658564a98971fc67029be1815d
git remote add staging https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git
git remote update staging
git checkout 4f8b7fabb15df3658564a98971fc67029be1815d
vim +53 drivers/staging/wfx/hif_tx.c

4f8b7fabb15df3 Jérôme Pouiller 2019-09-19  23
4f8b7fabb15df3 Jérôme Pouiller 2019-09-19  24  int wfx_cmd_send(struct wfx_dev *wdev, struct hif_msg *request, void *reply, size_t reply_len, bool async)
4f8b7fabb15df3 Jérôme Pouiller 2019-09-19  25  {
4f8b7fabb15df3 Jérôme Pouiller 2019-09-19  26  	const char *mib_name = "";
4f8b7fabb15df3 Jérôme Pouiller 2019-09-19  27  	const char *mib_sep = "";
4f8b7fabb15df3 Jérôme Pouiller 2019-09-19  28  	int cmd = request->id;
4f8b7fabb15df3 Jérôme Pouiller 2019-09-19  29  	int vif = request->interface;
4f8b7fabb15df3 Jérôme Pouiller 2019-09-19  30  	int ret;
4f8b7fabb15df3 Jérôme Pouiller 2019-09-19  31
4f8b7fabb15df3 Jérôme Pouiller 2019-09-19  32  	WARN(wdev->hif_cmd.buf_recv && wdev->hif_cmd.async, "API usage error");
4f8b7fabb15df3 Jérôme Pouiller 2019-09-19  33
4f8b7fabb15df3 Jérôme Pouiller 2019-09-19  34  	// Do not wait for any reply if chip is frozen
4f8b7fabb15df3 Jérôme Pouiller 2019-09-19  35  	if (wdev->chip_frozen)
4f8b7fabb15df3 Jérôme Pouiller 2019-09-19  36  		return -ETIMEDOUT;
4f8b7fabb15df3 Jérôme Pouiller 2019-09-19  37
4f8b7fabb15df3 Jérôme Pouiller 2019-09-19 @38  	mutex_lock(&wdev->hif_cmd.lock);
4f8b7fabb15df3 Jérôme Pouiller 2019-09-19  39  	WARN(wdev->hif_cmd.buf_send, "data locking error");
4f8b7fabb15df3 Jérôme Pouiller 2019-09-19  40
4f8b7fabb15df3 Jérôme Pouiller 2019-09-19  41  	// Note: call to complete() below has an implicit memory barrier that
4f8b7fabb15df3 Jérôme Pouiller 2019-09-19  42  	// hopefully protect buf_send
4f8b7fabb15df3 Jérôme Pouiller 2019-09-19  43  	wdev->hif_cmd.buf_send = request;
4f8b7fabb15df3 Jérôme Pouiller 2019-09-19  44  	wdev->hif_cmd.buf_recv = reply;
4f8b7fabb15df3 Jérôme Pouiller 2019-09-19  45  	wdev->hif_cmd.len_recv = reply_len;
4f8b7fabb15df3 Jérôme Pouiller 2019-09-19  46  	wdev->hif_cmd.async = async;
4f8b7fabb15df3 Jérôme Pouiller 2019-09-19  47  	complete(&wdev->hif_cmd.ready);
4f8b7fabb15df3 Jérôme Pouiller 2019-09-19  48
4f8b7fabb15df3 Jérôme Pouiller 2019-09-19  49  	wfx_bh_request_tx(wdev);
4f8b7fabb15df3 Jérôme Pouiller 2019-09-19  50
4f8b7fabb15df3 Jérôme Pouiller 2019-09-19  51  	// NOTE: no timeout is catched async is enabled
4f8b7fabb15df3 Jérôme Pouiller 2019-09-19  52  	if (async)
4f8b7fabb15df3 Jérôme Pouiller 2019-09-19 @53  		return 0;

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation
--8323329-392352371-1570187891=:2992
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--8323329-392352371-1570187891=:2992--
