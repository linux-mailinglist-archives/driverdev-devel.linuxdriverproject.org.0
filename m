Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0942722EBE5
	for <lists+driverdev-devel@lfdr.de>; Mon, 27 Jul 2020 14:16:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DCF2585BEE;
	Mon, 27 Jul 2020 12:16:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5UvZuEHXciPU; Mon, 27 Jul 2020 12:16:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DE5A38486F;
	Mon, 27 Jul 2020 12:16:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3623A1BF3E1
 for <devel@linuxdriverproject.org>; Mon, 27 Jul 2020 12:16:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 301408762E
 for <devel@linuxdriverproject.org>; Mon, 27 Jul 2020 12:16:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fWlLCvtFjIvA for <devel@linuxdriverproject.org>;
 Mon, 27 Jul 2020 12:16:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 059F2870A9
 for <devel@driverdev.osuosl.org>; Mon, 27 Jul 2020 12:16:37 +0000 (UTC)
IronPort-SDR: OvVCEqo9TSYyS8ysmieqws0+7o3qeNljcxr3LWmJLlCwKSS3779Z32e6HvKKwYnCm64yOslAH3
 1i/LpyoTkoIA==
X-IronPort-AV: E=McAfee;i="6000,8403,9694"; a="131062702"
X-IronPort-AV: E=Sophos;i="5.75,402,1589266800"; d="scan'208";a="131062702"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2020 05:16:37 -0700
IronPort-SDR: xm21LHzL+iPrWEbp8NdponhHFX5IsjKy0gdGMDaiQjphChxSCwVIEdoB88yjYbU3W8TYXZGRwT
 B0yQgUUNZEAg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,402,1589266800"; d="scan'208";a="489945687"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by fmsmga005.fm.intel.com with ESMTP; 27 Jul 2020 05:16:35 -0700
Received: from andy by smile with local (Exim 4.94)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1k023X-004Gw7-Kh; Mon, 27 Jul 2020 15:16:35 +0300
Date: Mon, 27 Jul 2020 15:16:35 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Ankit <b18007@students.iitmandi.ac.in>
Subject: Re: [PATCH] Staging : media : atomisp : pci : fixed a brace coding
 sytle issue
Message-ID: <20200727121635.GT3703480@smile.fi.intel.com>
References: <20200727080150.10659-1-b18007@students.iitmandi.ac.in>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200727080150.10659-1-b18007@students.iitmandi.ac.in>
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, sakari.ailus@linux.intel.com, mchehab@kernel.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Jul 27, 2020 at 01:31:50PM +0530, Ankit wrote:
> From: Ankit Baluni<b18007@students.iitmandi.ac.in>
> 
> Fixed a coding style issue.

One time is enough to be sent :-)

The Subject nevertheless can be amended, like

media: atomisp: fixed a brace coding sytle issue

-- 
With Best Regards,
Andy Shevchenko


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
