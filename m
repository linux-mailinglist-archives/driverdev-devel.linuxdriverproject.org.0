Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7592E20D023
	for <lists+driverdev-devel@lfdr.de>; Mon, 29 Jun 2020 18:25:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 26276875DF;
	Mon, 29 Jun 2020 16:25:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id O2CkU8et9bBn; Mon, 29 Jun 2020 16:25:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DCF1885F34;
	Mon, 29 Jun 2020 16:24:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9C1D61BF2EC
 for <devel@linuxdriverproject.org>; Mon, 29 Jun 2020 16:24:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 96C42883D8
 for <devel@linuxdriverproject.org>; Mon, 29 Jun 2020 16:24:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id q4h-MKprQqzs for <devel@linuxdriverproject.org>;
 Mon, 29 Jun 2020 16:24:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A17D3887A5
 for <devel@driverdev.osuosl.org>; Mon, 29 Jun 2020 16:24:56 +0000 (UTC)
IronPort-SDR: c+4VjBld+T5ir8yEwn1jPzXO4q1mxJQYzUQYMLgFMgqxGhcQIlLwK020WnLQC7+47m35KzTEFO
 t2o7eftz8lxA==
X-IronPort-AV: E=McAfee;i="6000,8403,9666"; a="211080427"
X-IronPort-AV: E=Sophos;i="5.75,295,1589266800"; d="scan'208";a="211080427"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2020 09:24:54 -0700
IronPort-SDR: 62afR1hi7+NIlYXmM50Jcl16b+Vm/woAty1FR5P9n+HqfEBNErhKyZ64sGMTbgA/bZkvchdUeW
 WVP1tG8ShNyg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,295,1589266800"; d="scan'208";a="264877717"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by fmsmga007.fm.intel.com with ESMTP; 29 Jun 2020 09:24:51 -0700
Received: from andy by smile with local (Exim 4.94)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1jprOg-00Gdw6-TX; Mon, 29 Jun 2020 13:52:22 +0300
Date: Mon, 29 Jun 2020 13:52:22 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Subject: Re: [PATCH 0/7] Some atomisp fixes and improvements
Message-ID: <20200629105222.GF3703480@smile.fi.intel.com>
References: <cover.1593180146.git.mchehab+huawei@kernel.org>
 <20200626150021.GY3703480@smile.fi.intel.com>
 <20200626175216.7955c374@coco.lan>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200626175216.7955c374@coco.lan>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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
 linux-kernel@vger.kernel.org, Sakari Ailus <sakari.ailus@linux.intel.com>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Jun 26, 2020 at 05:52:16PM +0200, Mauro Carvalho Chehab wrote:
> Em Fri, 26 Jun 2020 18:00:21 +0300
> Andy Shevchenko <andriy.shevchenko@linux.intel.com> escreveu:
> 
> > On Fri, Jun 26, 2020 at 04:04:52PM +0200, Mauro Carvalho Chehab wrote:
> > > Those patches are meant to improve device detection by the atomisp driver,
> > > relying on ACPI bios when possible.
> > > 
> > > It also adds a basis for using ACPI PM, but only if the DSDT tables have
> > > a description about how to turn on the resources needed by the cameras.
> > > 
> > > At least on the device I'm using for tests, this is not the case.  
> > 
> > Is this in your experimental tree? 
> 
> Yes. 
> 
> > I'll rebase mine on top and test.
> > After I will send the rest from my series and give a tag to this.
> 
> It would be helpful if you could test removing the DMI match table from
> your board. If your device has a DSDT table close to the one I have, the
> new code may be able to get everything from DSDT.

I have checked the atomisp_v5 branch and it doesn't bring any regression to my
case. So, feel free to add
Tested-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>

I'll send rebased patches soon.

-- 
With Best Regards,
Andy Shevchenko


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
