Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A66626DE94
	for <lists+driverdev-devel@lfdr.de>; Thu, 17 Sep 2020 16:44:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id BAAB1878E6;
	Thu, 17 Sep 2020 14:44:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9Oi-7YRV9yL2; Thu, 17 Sep 2020 14:44:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id B5E88877AE;
	Thu, 17 Sep 2020 14:44:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A9D091BF399
 for <devel@linuxdriverproject.org>; Thu, 17 Sep 2020 14:44:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A59F18785D
 for <devel@linuxdriverproject.org>; Thu, 17 Sep 2020 14:44:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XtMWjg2YGoFj for <devel@linuxdriverproject.org>;
 Thu, 17 Sep 2020 14:44:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 06AE6877AE
 for <devel@driverdev.osuosl.org>; Thu, 17 Sep 2020 14:44:22 +0000 (UTC)
IronPort-SDR: Dr1imvJ42gKYq09lfjna4c3sN7yBi5GDyoKgOtVKiXX+xdTKrQCMlbUr+3Z1RkoZGAS1KXdffl
 SCe/OgFANZgw==
X-IronPort-AV: E=McAfee;i="6000,8403,9747"; a="139713531"
X-IronPort-AV: E=Sophos;i="5.77,437,1596524400"; d="scan'208";a="139713531"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2020 07:44:21 -0700
IronPort-SDR: 2PjTpGPUJrmk/qAGxhB331O0Aj/pPwhH4tXe00zQmSC7rMAaOijzfKiwbCewdba0OWZ8HRpvcR
 00Ep3pHxDpBQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,437,1596524400"; d="scan'208";a="336439709"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by orsmga008.jf.intel.com with ESMTP; 17 Sep 2020 07:44:17 -0700
Received: from andy by smile with local (Exim 4.94)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1kIv8v-00HLiv-II; Thu, 17 Sep 2020 17:44:13 +0300
Date: Thu, 17 Sep 2020 17:44:13 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Dan Scally <djrscally@gmail.com>
Subject: Re: [RFC PATCH] Add bridge driver to connect sensors to CIO2 device
 via software nodes on ACPI platforms
Message-ID: <20200917144413.GN3956970@smile.fi.intel.com>
References: <20200916213618.8003-1-djrscally@gmail.com>
 <20200917103343.GW26842@paasikivi.fi.intel.com>
 <8133a57d-ab4c-dccd-4325-9b10e7805648@gmail.com>
 <20200917124514.GK3956970@smile.fi.intel.com>
 <fea9d85a-7be9-0270-bd59-8e479a836ae6@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <fea9d85a-7be9-0270-bd59-8e479a836ae6@gmail.com>
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
 kitakar@gmail.com, Sakari Ailus <sakari.ailus@linux.intel.com>,
 bingbu.cao@intel.com, mchehab@kernel.org, davem@davemloft.net,
 tian.shu.qiu@intel.com, yong.zhi@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Sep 17, 2020 at 02:36:22PM +0100, Dan Scally wrote:
> On 17/09/2020 13:45, Andy Shevchenko wrote:
> > On Thu, Sep 17, 2020 at 11:52:28AM +0100, Dan Scally wrote:
> >> On 17/09/2020 11:33, Sakari Ailus wrote:
> > I will do better review for next version, assuming you will Cc reviewers and
> > TWIMC people. Below is like small part of comments I may give to the code.
> TWIMC?

Missed this. To Whom It May Concern.

-- 
With Best Regards,
Andy Shevchenko


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
