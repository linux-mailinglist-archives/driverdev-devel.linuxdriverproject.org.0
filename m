Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1412926FDCC
	for <lists+driverdev-devel@lfdr.de>; Fri, 18 Sep 2020 15:07:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 284F687695;
	Fri, 18 Sep 2020 13:07:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0eBt8qbLHMOc; Fri, 18 Sep 2020 13:07:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 102AC87668;
	Fri, 18 Sep 2020 13:07:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 213801BF3AF
 for <devel@linuxdriverproject.org>; Fri, 18 Sep 2020 13:07:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1D814872ED
 for <devel@linuxdriverproject.org>; Fri, 18 Sep 2020 13:07:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MNV_GxbBByzG for <devel@linuxdriverproject.org>;
 Fri, 18 Sep 2020 13:07:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 95F1B872E8
 for <devel@driverdev.osuosl.org>; Fri, 18 Sep 2020 13:07:47 +0000 (UTC)
IronPort-SDR: liy/7eUAczna/D0ok5LTEmPTvsy1+gmsjlEdY+3Ix5d77oNgiLxZjaX3UoCmp8HfhohWwMGVGO
 pj+ardKPj5xA==
X-IronPort-AV: E=McAfee;i="6000,8403,9747"; a="178017216"
X-IronPort-AV: E=Sophos;i="5.77,274,1596524400"; d="scan'208";a="178017216"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2020 06:07:46 -0700
IronPort-SDR: TTP3YG+cKXV9ElsL7dzw2WsGVKrYrvWw02TGzy1AIner1bX77kh534VhNkH57FNcGHx5Fq0hsk
 Q/wM0fO89XGw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,274,1596524400"; d="scan'208";a="336797326"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by orsmga008.jf.intel.com with ESMTP; 18 Sep 2020 06:07:42 -0700
Received: from andy by smile with local (Exim 4.94)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1kJG71-00HaOc-8n; Fri, 18 Sep 2020 16:07:39 +0300
Date: Fri, 18 Sep 2020 16:07:39 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Sakari Ailus <sakari.ailus@linux.intel.com>
Subject: Re: [RFC PATCH] Add bridge driver to connect sensors to CIO2 device
 via software nodes on ACPI platforms
Message-ID: <20200918130739.GA3956970@smile.fi.intel.com>
References: <20200916213618.8003-1-djrscally@gmail.com>
 <20200917103343.GW26842@paasikivi.fi.intel.com>
 <8133a57d-ab4c-dccd-4325-9b10e7805648@gmail.com>
 <20200917124514.GK3956970@smile.fi.intel.com>
 <20200918075157.GF26842@paasikivi.fi.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200918075157.GF26842@paasikivi.fi.intel.com>
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
Cc: devel@driverdev.osuosl.org, robh@kernel.org, jorhand@linux.microsoft.com,
 linux-media@vger.kernel.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, kieran.bingham@ideasonboard.com,
 Dan Scally <djrscally@gmail.com>, kitakar@gmail.com, bingbu.cao@intel.com,
 mchehab@kernel.org, davem@davemloft.net, tian.shu.qiu@intel.com,
 yong.zhi@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Sep 18, 2020 at 10:51:57AM +0300, Sakari Ailus wrote:
> On Thu, Sep 17, 2020 at 03:45:14PM +0300, Andy Shevchenko wrote:
> > On Thu, Sep 17, 2020 at 11:52:28AM +0100, Dan Scally wrote:
> > > On 17/09/2020 11:33, Sakari Ailus wrote:
> > > > a module and not enlarge everyone's kernel, and the initialisation would at
> > > > the same time take place before the rest of what the CIO2 driver does in
> > > > probe.
> > > I thought of that as well, but wasn't sure which was preferable. I can
> > > compress it into the CIO2 driver though sure.
> > 
> > Sakari, I tend to agree with Dan and have the board file separated from the
> > driver and even framework.
> 
> And it'll be linked to the kernel binary then I suppose?

Solely depends to your Kconfig dependencies and declaration.

From code perspective you may do it before enumeration of the certain device or
after with reprobe.

> I don't have a strong opinion either way, just thought that this will
> affect anyone using x86 machines, whether or not they have IPU3. I guess it
> could be compiled in if the ipu3-cio2 driver is enabled?

Of course!

-- 
With Best Regards,
Andy Shevchenko


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
