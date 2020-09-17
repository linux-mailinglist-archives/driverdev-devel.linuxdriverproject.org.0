Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E63D26DB72
	for <lists+driverdev-devel@lfdr.de>; Thu, 17 Sep 2020 14:25:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 154DD875DB;
	Thu, 17 Sep 2020 12:25:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GM7CrcsiFh7Z; Thu, 17 Sep 2020 12:25:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 65142875A7;
	Thu, 17 Sep 2020 12:25:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 394641BF381
 for <devel@linuxdriverproject.org>; Thu, 17 Sep 2020 12:25:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 26727275A6
 for <devel@linuxdriverproject.org>; Thu, 17 Sep 2020 12:25:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NlwyMAh23T29 for <devel@linuxdriverproject.org>;
 Thu, 17 Sep 2020 12:25:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by silver.osuosl.org (Postfix) with ESMTPS id 2EFA120512
 for <devel@driverdev.osuosl.org>; Thu, 17 Sep 2020 12:25:41 +0000 (UTC)
IronPort-SDR: VI6iYJ8h3gcDly8MfQABMeH3t7fOrxKyE2biu7Ie6kcLwefDwZ9PqKUZcyP0xHPPkL9FTq/XEK
 TuGG3fGxQe7g==
X-IronPort-AV: E=McAfee;i="6000,8403,9746"; a="157087498"
X-IronPort-AV: E=Sophos;i="5.76,436,1592895600"; d="scan'208";a="157087498"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2020 05:25:37 -0700
IronPort-SDR: jMwGTc1ljHPuFBxuAjHrcoVSsWcREA7H6qljjXAyITclEhlpWZmxmCgo2Qt68QLHzh5nWtxjLw
 hwXWkcDrbg+A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,436,1592895600"; d="scan'208";a="336395898"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by orsmga008.jf.intel.com with ESMTP; 17 Sep 2020 05:25:33 -0700
Received: from andy by smile with local (Exim 4.94)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1kIsyf-00HK03-ST; Thu, 17 Sep 2020 15:25:29 +0300
Date: Thu, 17 Sep 2020 15:25:29 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [RFC PATCH] Add bridge driver to connect sensors to CIO2 device
 via software nodes on ACPI platforms
Message-ID: <20200917122529.GJ3956970@smile.fi.intel.com>
References: <20200916213618.8003-1-djrscally@gmail.com>
 <20200917103343.GW26842@paasikivi.fi.intel.com>
 <20200917104941.GP4282@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200917104941.GP4282@kadam>
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
Cc: devel@driverdev.osuosl.org, robh@kernel.org, mchehab@kernel.org,
 jorhand@linux.microsoft.com, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, kieran.bingham@ideasonboard.com,
 Daniel Scally <djrscally@gmail.com>, yong.zhi@intel.com,
 Sakari Ailus <sakari.ailus@linux.intel.com>, bingbu.cao@intel.com,
 kitakar@gmail.com, davem@davemloft.net, tian.shu.qiu@intel.com,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Sep 17, 2020 at 01:49:41PM +0300, Dan Carpenter wrote:
> On Thu, Sep 17, 2020 at 01:33:43PM +0300, Sakari Ailus wrote:

> > > +	int i, ret;
> > 
> > unsigned int i
> > 
> 
> Why?
> 
> For list iterators then "int i;" is best...  For sizes then unsigned is
> sometimes best.  Or if it's part of the hardware spec or network spec
> unsigned is best.  Otherwise unsigned variables cause a ton of bugs.
> They're not as intuitive as signed variables.  Imagine if there is an
> error in this loop and you want to unwind.  With a signed variable you
> can do:
> 
> 	while (--i >= 0)
> 		cleanup(&bridge.sensors[i]);

Ha-ha. It's actually a counter argument to your stuff because above is the same as

	while (i--)
		cleanup(&bridge.sensors[i]);

with pretty much unsigned int i.

> There are very few times where raising the type maximum from 2 billion
> to 4 billion fixes anything.

-- 
With Best Regards,
Andy Shevchenko


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
