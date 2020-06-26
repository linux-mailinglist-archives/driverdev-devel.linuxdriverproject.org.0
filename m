Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E25220B410
	for <lists+driverdev-devel@lfdr.de>; Fri, 26 Jun 2020 17:00:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id F346487E64;
	Fri, 26 Jun 2020 15:00:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3OVS25oMLYpr; Fri, 26 Jun 2020 15:00:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0FFD48733E;
	Fri, 26 Jun 2020 15:00:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B3E7F1BF3DE
 for <devel@linuxdriverproject.org>; Fri, 26 Jun 2020 15:00:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A8ACC88751
 for <devel@linuxdriverproject.org>; Fri, 26 Jun 2020 15:00:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id j-uZOCgLaq6G for <devel@linuxdriverproject.org>;
 Fri, 26 Jun 2020 15:00:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 93F4788713
 for <devel@driverdev.osuosl.org>; Fri, 26 Jun 2020 15:00:22 +0000 (UTC)
IronPort-SDR: OWCYGCB9UGNvWccke0JsnYNiXtrfB28um5uXzfdBcmPbASzQmLzCQ3+kSKmA+cth/bZnyjseYL
 F3y56Qcdvxrw==
X-IronPort-AV: E=McAfee;i="6000,8403,9663"; a="206866518"
X-IronPort-AV: E=Sophos;i="5.75,284,1589266800"; d="scan'208";a="206866518"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2020 08:00:21 -0700
IronPort-SDR: yHl0O8SJJXKqifHtnUd6rN0qqjbg+YRRAnToPjCoKu1gXAK69IhBXcq/RzLn3wgWDRa3+tnRcI
 tJQN/277K2hA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,284,1589266800"; d="scan'208";a="312340678"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by fmsmga002.fm.intel.com with ESMTP; 26 Jun 2020 08:00:19 -0700
Received: from andy by smile with local (Exim 4.94)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1jopq1-00GC6h-0d; Fri, 26 Jun 2020 18:00:21 +0300
Date: Fri, 26 Jun 2020 18:00:21 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Subject: Re: [PATCH 0/7] Some atomisp fixes and improvements
Message-ID: <20200626150021.GY3703480@smile.fi.intel.com>
References: <cover.1593180146.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1593180146.git.mchehab+huawei@kernel.org>
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

On Fri, Jun 26, 2020 at 04:04:52PM +0200, Mauro Carvalho Chehab wrote:
> Those patches are meant to improve device detection by the atomisp driver,
> relying on ACPI bios when possible.
> 
> It also adds a basis for using ACPI PM, but only if the DSDT tables have
> a description about how to turn on the resources needed by the cameras.
> 
> At least on the device I'm using for tests, this is not the case.

Is this in your experimental tree? I'll rebase mine on top and test.
After I will send the rest from my series and give a tag to this.

> 
> Mauro Carvalho Chehab (7):
>   media: atomisp: reorganize the code under gmin_subdev_add()
>   media: atomisp: Prepare sensor support for ACPI PM
>   media: atomisp: properly parse CLK PMIC on newer devices
>   media: atomisp: fix call to g_frame_interval
>   media: atomisp: print info if gpio0 and gpio2 were detected
>   media: atomisp: split add from find subdev
>   media: atomisp: place all gpio parsing together
> 
>  .../staging/media/atomisp/pci/atomisp_cmd.c   |   2 +-
>  .../media/atomisp/pci/atomisp_gmin_platform.c | 393 ++++++++++++------
>  2 files changed, 267 insertions(+), 128 deletions(-)
> 
> -- 
> 2.26.2
> 
> 

-- 
With Best Regards,
Andy Shevchenko


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
