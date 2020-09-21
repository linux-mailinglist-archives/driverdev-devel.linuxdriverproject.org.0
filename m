Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BF932727BC
	for <lists+driverdev-devel@lfdr.de>; Mon, 21 Sep 2020 16:37:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8D4C2868E9;
	Mon, 21 Sep 2020 14:37:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ranbVHmfCk37; Mon, 21 Sep 2020 14:37:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id E5051868D4;
	Mon, 21 Sep 2020 14:37:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2BBC01BF3D2
 for <devel@linuxdriverproject.org>; Mon, 21 Sep 2020 14:37:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 284FE85E27
 for <devel@linuxdriverproject.org>; Mon, 21 Sep 2020 14:37:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aLtxva-XKv8r for <devel@linuxdriverproject.org>;
 Mon, 21 Sep 2020 14:37:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 8D71B85C05
 for <devel@driverdev.osuosl.org>; Mon, 21 Sep 2020 14:37:35 +0000 (UTC)
IronPort-SDR: TzBLKb1RZevbwCFW76U1Y6GxOVZ5n+PQAI2/dPngH/13lJw1WcVY0O7FIHWnrN4OIBBlRsBzxf
 zfsH3bqX3fqw==
X-IronPort-AV: E=McAfee;i="6000,8403,9750"; a="157765864"
X-IronPort-AV: E=Sophos;i="5.77,286,1596524400"; d="scan'208";a="157765864"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2020 07:37:33 -0700
IronPort-SDR: 7b348itX9JQ6/ZjBJn0IV8bFDMIpgtZD5POlaw5OBg6Az2iI4caq+sK85itTCweyt6BeZSqqYO
 6St2G1gTqh1A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,286,1596524400"; d="scan'208";a="337942774"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by orsmga008.jf.intel.com with ESMTP; 21 Sep 2020 07:37:29 -0700
Received: from andy by smile with local (Exim 4.94)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1kKMsJ-000kjt-Ob; Mon, 21 Sep 2020 17:33:03 +0300
Date: Mon, 21 Sep 2020 17:33:03 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Dan Scally <djrscally@gmail.com>
Subject: Re: [RFC PATCH] Add bridge driver to connect sensors to CIO2 device
 via software nodes on ACPI platforms
Message-ID: <20200921143303.GA3956970@smile.fi.intel.com>
References: <20200916213618.8003-1-djrscally@gmail.com>
 <20200917103343.GW26842@paasikivi.fi.intel.com>
 <8133a57d-ab4c-dccd-4325-9b10e7805648@gmail.com>
 <20200917124514.GK3956970@smile.fi.intel.com>
 <20200918075157.GF26842@paasikivi.fi.intel.com>
 <20200918130739.GA3956970@smile.fi.intel.com>
 <66e33cd5-6c1e-310a-61e8-6cde720ffa19@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <66e33cd5-6c1e-310a-61e8-6cde720ffa19@gmail.com>
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

On Mon, Sep 21, 2020 at 02:33:57PM +0100, Dan Scally wrote:
> On 18/09/2020 14:07, Andy Shevchenko wrote:
> > On Fri, Sep 18, 2020 at 10:51:57AM +0300, Sakari Ailus wrote:
> >> On Thu, Sep 17, 2020 at 03:45:14PM +0300, Andy Shevchenko wrote:
> >>> On Thu, Sep 17, 2020 at 11:52:28AM +0100, Dan Scally wrote:
> >>>> On 17/09/2020 11:33, Sakari Ailus wrote:
> >>>>> a module and not enlarge everyone's kernel, and the initialisation would at
> >>>>> the same time take place before the rest of what the CIO2 driver does in
> >>>>> probe.
> >>>> I thought of that as well, but wasn't sure which was preferable. I can
> >>>> compress it into the CIO2 driver though sure.
> >>> Sakari, I tend to agree with Dan and have the board file separated from the
> >>> driver and even framework.
> >> And it'll be linked to the kernel binary then I suppose?
> > Solely depends to your Kconfig dependencies and declaration.
> >
> > From code perspective you may do it before enumeration of the certain device or
> > after with reprobe.
> >
> >> I don't have a strong opinion either way, just thought that this will
> >> affect anyone using x86 machines, whether or not they have IPU3. I guess it
> >> could be compiled in if the ipu3-cio2 driver is enabled?
> > Of course!
> 
> Apologies both - my inexperience is showing here: I thought you couldn't
> make it compile into the kernel where it's dependent on another piece of
> code that's configured to be a module? In my case, ipu3-cio2 plus some
> other dependencies are configured as modules; VIDEO_DEV and VIDEO_V4L2
> notably. Is that not right?

It's not correct.

We specifically have export.h (usually implied by module.h) which provides an
API for symbols that may be used in modules independently on where they are
(in-kernel or in a module).

So, provider does

bar.h:
int foo();

bar.c:
int foo()
{
}
EXPORT_SYMBOL(foo); // normally is EXPORT_SYMBOL_GPL() in use

Consumer:
	#include <bar.h>

	ret = foo();

> It would probably make the probe() ordering issues easier if it could be
> compiled in, since I could just rely on late_initcall() in that case and
> I guess that should work.

So, you may have two cases, your module went first, the other module went
first. Some similar problems as your bridge is trying to address are mitigated
in intel_cht_int33fe_typec.c. Look at it. It's not an ideal example, but that's
due to miserable ACPI tables BIOS provided.

-- 
With Best Regards,
Andy Shevchenko


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
