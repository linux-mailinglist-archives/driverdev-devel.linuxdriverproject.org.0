Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C39420EA12
	for <lists+driverdev-devel@lfdr.de>; Tue, 30 Jun 2020 02:22:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5F1212107A;
	Tue, 30 Jun 2020 00:22:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PMpXFUlpVneG; Tue, 30 Jun 2020 00:22:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 1E85B204E0;
	Tue, 30 Jun 2020 00:22:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0BE8A1BF2CD
 for <devel@linuxdriverproject.org>; Tue, 30 Jun 2020 00:21:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 001FB879A1
 for <devel@linuxdriverproject.org>; Tue, 30 Jun 2020 00:21:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TSf18cPonlhW for <devel@linuxdriverproject.org>;
 Tue, 30 Jun 2020 00:21:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 3388A87916
 for <devel@driverdev.osuosl.org>; Tue, 30 Jun 2020 00:21:58 +0000 (UTC)
IronPort-SDR: QPswKXNQudSYvp7JXrd0F38cS1SF4VJVbbbWcNJcv30ImBwXR8/S6stwPUOVTioFZBTnF0I/xo
 oFY4GmBvrLBQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9666"; a="164124081"
X-IronPort-AV: E=Sophos;i="5.75,296,1589266800"; d="scan'208";a="164124081"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2020 17:21:57 -0700
IronPort-SDR: uFo1DjG2lFl3tWiiThk/w1Pa3wYAvMyqFCs9B2cLu5NLrbfBM82rcdEwHqkNv2MoqRiq+RpfWh
 buypqklnGrTw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,296,1589266800"; d="scan'208";a="266335275"
Received: from pl-dbox.sh.intel.com (HELO intel.com) ([10.239.159.39])
 by fmsmga008.fm.intel.com with ESMTP; 29 Jun 2020 17:21:54 -0700
Date: Tue, 30 Jun 2020 08:21:52 +0800
From: Philip Li <philip.li@intel.com>
To: Bjorn Helgaas <helgaas@kernel.org>
Subject: Re: [kbuild-all] Re: [PATCH v1 1/4] qlge/qlge_main.c: use genric
 power management
Message-ID: <20200630002152.GA15435@intel.com>
References: <202006300026.hCr1U7Sc%lkp@intel.com>
 <20200629173116.GA3269550@bjorn-Precision-5520>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200629173116.GA3269550@bjorn-Precision-5520>
User-Agent: Mutt/1.10.1 (2018-07-13)
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

On Mon, Jun 29, 2020 at 12:31:16PM -0500, Bjorn Helgaas wrote:
> Vaibhav: s/genric/generic/ in the subject
> 
> On Tue, Jun 30, 2020 at 12:09:36AM +0800, kernel test robot wrote:
> > Hi Vaibhav,
> > 
> > Thank you for the patch! Yet something to improve:
> > 
> > [auto build test ERROR on staging/staging-testing]
> > [also build test ERROR on v5.8-rc3 next-20200629]
> > [If your patch is applied to the wrong git tree, kindly drop us a note.
> > And when submitting patch, we suggest to use  as documented in
> > https://git-scm.com/docs/git-format-patch]
> > 
> > url:    https://github.com/0day-ci/linux/commits/Vaibhav-Gupta/drivers-staging-use-generic-power-management/20200629-163141
> > base:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git 347fa58ff5558075eec98725029c443c80ffbf4a
> > config: x86_64-rhel-7.6 (attached as .config)
> > compiler: gcc-9 (Debian 9.3.0-13) 9.3.0
> > reproduce (this is a W=1 build):
> >         # save the attached .config to linux build tree
> >         make W=1 ARCH=x86_64 
> > 
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kernel test robot <lkp@intel.com>
> 
> If the patch has already been merged and we need an incremental patch
> that fixes *only* the build issue, I think it's fine to add a
> "Reported-by" tag.
> 
> But if this patch hasn't been merged anywhere, I think adding the
> "Reported-by" tag would be pointless and distracting.  This report
> should result in a v2 posting of the patch with the build issue fixed.
> 
> There will be no evidence of the problem in the v2 patch.  The patch
> itself contains other changes unrelated to the build issue, so
> "Reported-by" makes so sense for them.  I would treat this as just
> another review comment, and we don't usually credit those in the
> commit log (though it's nice if they're mentioned in the v2 cover
> letter so reviewers know what changed and why).
> 
> Is there any chance kbuild could be made smart enough to suggest the
> tag only when it finds an issue in some list of published trees?
Thanks a lot for the suggestion. As of now, this is a recommendation,
and user may judge based on own situation to add "as appropriate".
Meanwhile, we will continue making the bot better.

> 
> > All errors (new ones prefixed by >>):
> > 
> >    drivers/staging/qlge/qlge_main.c: In function 'qlge_resume':
> > >> drivers/staging/qlge/qlge_main.c:4793:17: error: 'pdev' undeclared (first use in this function); did you mean 'qdev'?
> >     4793 |  pci_set_master(pdev);
> >          |                 ^~~~
> >          |                 qdev
> > ...
> _______________________________________________
> kbuild-all mailing list -- kbuild-all@lists.01.org
> To unsubscribe send an email to kbuild-all-leave@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
