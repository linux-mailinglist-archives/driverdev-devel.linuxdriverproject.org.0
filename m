Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23746234177
	for <lists+driverdev-devel@lfdr.de>; Fri, 31 Jul 2020 10:46:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id F10AF87E41;
	Fri, 31 Jul 2020 08:46:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qIDJjzzWTQp8; Fri, 31 Jul 2020 08:46:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 52F9F87582;
	Fri, 31 Jul 2020 08:46:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B65211BF2CA
 for <devel@linuxdriverproject.org>; Fri, 31 Jul 2020 08:46:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id ABBA6886D6
 for <devel@linuxdriverproject.org>; Fri, 31 Jul 2020 08:46:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 48ooKZUiQ1RD for <devel@linuxdriverproject.org>;
 Fri, 31 Jul 2020 08:46:06 +0000 (UTC)
X-Greylist: delayed 00:07:06 by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by hemlock.osuosl.org (Postfix) with ESMTPS id F2CCF886D1
 for <devel@driverdev.osuosl.org>; Fri, 31 Jul 2020 08:46:05 +0000 (UTC)
IronPort-SDR: kl7uqBs0gG24LxqBW7CYFd6cGWy/Ltr+mLCvPbD8mheSCbgqlM+tqiK/rAukFRWhAmb9uzZWuC
 WMVsqENmehCw==
X-IronPort-AV: E=McAfee;i="6000,8403,9698"; a="149574679"
X-IronPort-AV: E=Sophos;i="5.75,417,1589266800"; d="scan'208";a="149574679"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2020 01:38:59 -0700
IronPort-SDR: ZPDFIp5v/ttJ6NXoyDJH9IqYGXvV/z1FkdimiwgE2bLRLfErahmVbxR78il4gGqhbQTFNXYlx0
 4WERVCq1nutg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,417,1589266800"; d="scan'208";a="365442807"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by orsmga001.jf.intel.com with ESMTP; 31 Jul 2020 01:38:56 -0700
Received: from andy by smile with local (Exim 4.94)
 (envelope-from <andy.shevchenko@gmail.com>)
 id 1k1QZ6-005Gyk-Da; Fri, 31 Jul 2020 11:38:56 +0300
Date: Fri, 31 Jul 2020 11:38:56 +0300
From: Andy Shevchenko <andy.shevchenko@gmail.com>
To: Cengiz Can <cengiz@kernel.wtf>
Subject: Re: [PATCH v2] staging: atomisp: move null check to earlier point
Message-ID: <20200731083856.GF3703480@smile.fi.intel.com>
References: <20200730084545.GB1793@kadam>
 <20200730221737.51569-1-cengiz@kernel.wtf>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200730221737.51569-1-cengiz@kernel.wtf>
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
 dan.carpenter@oracle.com, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Jul 31, 2020 at 01:17:38AM +0300, Cengiz Can wrote:
> `find_gmin_subdev` function that returns a pointer to `struct

func() are referred with name followed by parentheses.

> gmin_subdev` can return NULL.

> In `gmin_v2p8_ctrl` there's a call to this function but the possibility
> of a NULL was not checked before its being dereferenced. ie:

'. ie:' -> ', i.e.:'

> ```

Instead just shift right by two spaces.

> /* Acquired here --------v */
> struct gmin_subdev *gs = find_gmin_subdev(subdev);
> 
> /*  v------Dereferenced here */
> if (gs->v2p8_gpio >= 0) {
>     ...
> }

> ```

Drop this as per above comment.

> To avoid the issue, null check has been moved to an earlier point
> and return semantics has been changed to reflect this exception.

> Please do note that this change introduces a new return value to
> `gmin_v2p8_ctrl`.

This rather should explain better the semantics change, e.g.
"Now the function() refuses to take NULL argument and returns an error. We also
WARN() for sake of the debugging."

> [NEW] - raise a WARN and return -ENODEV if there are no subdevices.
>       - return result of `gpio_request` or `gpio_direction_output`.
>       - return 0 if GPIO is ON.
>       - return results of `regulator_enable` or `regulator_disable`.
>       - according to PMIC type, return result of `axp_regulator_set`
>         or `gmin_i2c_write`.
>       - return -EINVAL if unknown PMIC type.

This has to go after cutter '---' line below.

> Caught-by: Coverity Static Analyzer CID 1465536

Reported-by:

And as discussed previously,
Suggested-by: Mauro ...

> Signed-off-by: Cengiz Can <cengiz@kernel.wtf>

The code looks good enough (WARN() will probably go away when driver gains
better quality).

-- 
With Best Regards,
Andy Shevchenko


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
