Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A691C23E349
	for <lists+driverdev-devel@lfdr.de>; Thu,  6 Aug 2020 22:38:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id AA45488710;
	Thu,  6 Aug 2020 20:38:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IHK4+XrGBJk2; Thu,  6 Aug 2020 20:38:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0491D886E4;
	Thu,  6 Aug 2020 20:38:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A2FF01BF38C
 for <devel@linuxdriverproject.org>; Thu,  6 Aug 2020 20:38:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 60D6F25028
 for <devel@linuxdriverproject.org>; Thu,  6 Aug 2020 20:38:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cI9SCZhIRJZS for <devel@linuxdriverproject.org>;
 Thu,  6 Aug 2020 20:38:36 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from relay9-d.mail.gandi.net (relay9-d.mail.gandi.net
 [217.70.183.199])
 by silver.osuosl.org (Postfix) with ESMTPS id 4885424FFE
 for <devel@driverdev.osuosl.org>; Thu,  6 Aug 2020 20:38:35 +0000 (UTC)
X-Originating-IP: 176.88.145.153
Received: from [192.168.1.4] (unknown [176.88.145.153])
 (Authenticated sender: cengiz@kernel.wtf)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 05974FF805;
 Thu,  6 Aug 2020 20:38:31 +0000 (UTC)
From: Cengiz Can <cengiz@kernel.wtf>
To: Greg KH <gregkh@linuxfoundation.org>
Date: Thu, 06 Aug 2020 23:38:28 +0300
Message-ID: <173c57f19a0.2bfa.85c738e3968116fc5c0dc2de74002084@kernel.wtf>
In-Reply-To: <20200806183933.GA2939128@kroah.com>
References: <20200731083856.GF3703480@smile.fi.intel.com>
 <20200801220101.2783-1-cengiz@kernel.wtf>
 <173c50d7bb0.2bfa.85c738e3968116fc5c0dc2de74002084@kernel.wtf>
 <20200806183933.GA2939128@kroah.com>
User-Agent: AquaMail/1.25.2-1672 (build: 102500008)
Subject: Re: [PATCH v6] staging: atomisp: move null check to earlier point
MIME-Version: 1.0
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 andy.shevchenko@gmail.com, sakari.ailus@linux.intel.com, mchehab@kernel.org,
 dan.carpenter@oracle.com, linux-media@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


On August 6, 2020 21:39:21 Greg KH <gregkh@linuxfoundation.org> wrote:

> On Thu, Aug 06, 2020 at 09:34:22PM +0300, Cengiz Can wrote:
>> Hello Andy,
>>
>> Can I get some feedback on v6 please?
>
>
> It's been 4 days, in the middle of a merge window, please give people a
> chance to catch up on other things...

I wasn't aware of that we're currently in a merge window. Sorry for my 
impatience.

>
> and do not top post please.

Sorry. I was tricked by my mobile email client.

>
> thanks,
>
> greg k-h

Thanks again and I wish a smooth merge window to all maintainers.

Cengiz Can


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
