Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FEC91E1D86
	for <lists+driverdev-devel@lfdr.de>; Tue, 26 May 2020 10:41:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2F860883CB;
	Tue, 26 May 2020 08:41:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id afQsSfuH6vIe; Tue, 26 May 2020 08:41:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id ACC4A88390;
	Tue, 26 May 2020 08:41:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 08CC51BF29C
 for <devel@linuxdriverproject.org>; Tue, 26 May 2020 08:41:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 026F188396
 for <devel@linuxdriverproject.org>; Tue, 26 May 2020 08:41:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2qPbS78XXuG3 for <devel@linuxdriverproject.org>;
 Tue, 26 May 2020 08:41:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 50EF788390
 for <devel@driverdev.osuosl.org>; Tue, 26 May 2020 08:41:28 +0000 (UTC)
IronPort-SDR: d8wW0uNvOsf6uCoFubzJd/9obvAwHwb4i5K8Q5NxiXTdHBCdhPiFX2auqRet69aHR2/NyIaV1t
 hu3w/qMjyaBA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2020 01:41:27 -0700
IronPort-SDR: Jp9sm5uQgVWjK7gTNtw7ni0+LgjH5s3M7EDXDywezxYX2Xp1LtgLy2O9Tq3pVMyuXmXqFnsmMM
 BLX6T9+36A+w==
X-IronPort-AV: E=Sophos;i="5.73,436,1583222400"; d="scan'208";a="266379932"
Received: from paasikivi.fi.intel.com ([10.237.72.42])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2020 01:41:25 -0700
Received: by paasikivi.fi.intel.com (Postfix, from userid 1000)
 id 6A525208E1; Tue, 26 May 2020 11:41:23 +0300 (EEST)
Date: Tue, 26 May 2020 11:41:23 +0300
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Colin King <colin.king@canonical.com>
Subject: Re: [PATCH][next] media: atomisp: fix a handful of spelling mistakes
Message-ID: <20200526084123.GN7618@paasikivi.fi.intel.com>
References: <20200521194432.357572-1-colin.king@canonical.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200521194432.357572-1-colin.king@canonical.com>
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, May 21, 2020 at 08:44:32PM +0100, Colin King wrote:
> From: Colin Ian King <colin.king@canonical.com>
> 
> There are several spelling mistakes in various messages and literal
> strings. Fix these.
> 
> Signed-off-by: Colin Ian King <colin.king@canonical.com>

Acked-by: Sakari Ailus <sakari.ailus@linux.intel.com>

-- 
Sakari Ailus
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
