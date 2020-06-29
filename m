Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3120E20D064
	for <lists+driverdev-devel@lfdr.de>; Mon, 29 Jun 2020 19:31:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 9A21320410;
	Mon, 29 Jun 2020 17:31:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id g0YwUAIbLz-g; Mon, 29 Jun 2020 17:31:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 9EE6B204F2;
	Mon, 29 Jun 2020 17:31:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D95191BF34C
 for <devel@linuxdriverproject.org>; Mon, 29 Jun 2020 17:31:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id BFD292040C
 for <devel@linuxdriverproject.org>; Mon, 29 Jun 2020 17:31:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fpwylCx7J3rw for <devel@linuxdriverproject.org>;
 Mon, 29 Jun 2020 17:31:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id BB08720398
 for <devel@driverdev.osuosl.org>; Mon, 29 Jun 2020 17:31:19 +0000 (UTC)
Received: from localhost (mobile-166-170-222-206.mycingular.net
 [166.170.222.206])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EC30F22597;
 Mon, 29 Jun 2020 17:31:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1593451879;
 bh=N8FS3I1DD7kZ22Utb3chzLeKwWO4IHGYJ7omN9lhIsE=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=DcnQQqo8b+8nu/y7YH0imbvpmTVd9dPflJEnYnjwFeRcxlgGsWmm12bLrmtaEnjvE
 1g1P1hcEh8/GCflHfAC4XA2phac2yx3NaQneK1pMmXOzZuFSGSrxMFcUA/Q+gNkOXL
 qhrH58jB2kcQNswJ78qHtrkKjzghWnE9Rm0WABww=
Date: Mon, 29 Jun 2020 12:31:16 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: kernel test robot <lkp@intel.com>
Subject: Re: [PATCH v1 1/4] qlge/qlge_main.c: use genric power management
Message-ID: <20200629173116.GA3269550@bjorn-Precision-5520>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <202006300026.hCr1U7Sc%lkp@intel.com>
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
Cc: devel@driverdev.osuosl.org, GR-Linux-NIC-Dev@marvell.com,
 kbuild-all@lists.01.org, Manish Chopra <manishc@marvell.com>,
 Vaibhav Gupta <vaibhavgupta40@gmail.com>,
 Vaibhav Gupta <vaibhav.varodek@gmail.com>, skhan@linuxfoundation.org,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, bjorn@helgaas.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Vaibhav: s/genric/generic/ in the subject

On Tue, Jun 30, 2020 at 12:09:36AM +0800, kernel test robot wrote:
> Hi Vaibhav,
> 
> Thank you for the patch! Yet something to improve:
> 
> [auto build test ERROR on staging/staging-testing]
> [also build test ERROR on v5.8-rc3 next-20200629]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use  as documented in
> https://git-scm.com/docs/git-format-patch]
> 
> url:    https://github.com/0day-ci/linux/commits/Vaibhav-Gupta/drivers-staging-use-generic-power-management/20200629-163141
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git 347fa58ff5558075eec98725029c443c80ffbf4a
> config: x86_64-rhel-7.6 (attached as .config)
> compiler: gcc-9 (Debian 9.3.0-13) 9.3.0
> reproduce (this is a W=1 build):
>         # save the attached .config to linux build tree
>         make W=1 ARCH=x86_64 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>

If the patch has already been merged and we need an incremental patch
that fixes *only* the build issue, I think it's fine to add a
"Reported-by" tag.

But if this patch hasn't been merged anywhere, I think adding the
"Reported-by" tag would be pointless and distracting.  This report
should result in a v2 posting of the patch with the build issue fixed.

There will be no evidence of the problem in the v2 patch.  The patch
itself contains other changes unrelated to the build issue, so
"Reported-by" makes so sense for them.  I would treat this as just
another review comment, and we don't usually credit those in the
commit log (though it's nice if they're mentioned in the v2 cover
letter so reviewers know what changed and why).

Is there any chance kbuild could be made smart enough to suggest the
tag only when it finds an issue in some list of published trees?

> All errors (new ones prefixed by >>):
> 
>    drivers/staging/qlge/qlge_main.c: In function 'qlge_resume':
> >> drivers/staging/qlge/qlge_main.c:4793:17: error: 'pdev' undeclared (first use in this function); did you mean 'qdev'?
>     4793 |  pci_set_master(pdev);
>          |                 ^~~~
>          |                 qdev
> ...
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
