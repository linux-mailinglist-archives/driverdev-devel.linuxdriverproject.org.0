Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id E36FB36FF5D
	for <lists+driverdev-devel@lfdr.de>; Fri, 30 Apr 2021 19:18:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2AF6A84A60;
	Fri, 30 Apr 2021 17:18:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jyeum_nrpvpn; Fri, 30 Apr 2021 17:18:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7C30C84868;
	Fri, 30 Apr 2021 17:18:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E59581BF381
 for <devel@linuxdriverproject.org>; Fri, 30 Apr 2021 17:18:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E1F2584868
 for <devel@linuxdriverproject.org>; Fri, 30 Apr 2021 17:18:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IPYj9qoh_w1S for <devel@linuxdriverproject.org>;
 Fri, 30 Apr 2021 17:18:12 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from msg-2.mailo.com (msg-2.mailo.com [213.182.54.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E37F084819
 for <devel@driverdev.osuosl.org>; Fri, 30 Apr 2021 17:18:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mailo.com; s=mailo;
 t=1619803075; bh=ojnJ555lXA46GF3/qKIyAUShuviwd+s4Ftf9ASPM424=;
 h=X-EA-Auth:Date:From:To:Cc:Subject:Message-ID:References:
 MIME-Version:Content-Type:In-Reply-To;
 b=Ro6898nhQabAFbhExawoG3OrpSeVplTWpiPtSGGYFx7zyBdOwP1+2gtO6UgAvEnev
 goGwDOExM6qWilF500x73krqgHvmRgyjcS9shUHnXfL8lJJo+FTEiM8ut4tUrkKU34
 40yqRl9Nw74v7vN2tBnQXGZVPR7l77sLhxVhrCY8=
Received: by 192.168.90.13 [192.168.90.13] with ESMTP
 via ip-206.mailobj.net [213.182.55.206]
 Fri, 30 Apr 2021 19:17:55 +0200 (CEST)
X-EA-Auth: c1gehlscvNEfQhgT4PN/cZce+z64ErNVj5he8oBiRfc/1rwcXcmA8TBoV4AqVJqBm3PHo3spQSTL9XjN5x4mx152xFjdHwQq
Date: Fri, 30 Apr 2021 22:47:50 +0530
From: Deepak R Varma <drv@mailo.com>
To: Sakari Ailus <sakari.ailus@linux.intel.com>
Subject: Re: [PATCH] staging: media: atomisp: pci: reposition braces as per
 coding style
Message-ID: <YIw7vsy+bYzFIQC0@dU2104>
References: <YIwk3KbVGRPJwKa4@dU2104>
 <20210430163327.GI3@paasikivi.fi.intel.com>
 <YIw4pUzTOHV6E9WZ@dU2104>
 <20210430171241.GJ3@paasikivi.fi.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210430171241.GJ3@paasikivi.fi.intel.com>
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
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Apr 30, 2021 at 08:12:41PM +0300, Sakari Ailus wrote:
> Hi Deepak,
> 
> On Fri, Apr 30, 2021 at 10:34:37PM +0530, Deepak R Varma wrote:
> > On Fri, Apr 30, 2021 at 07:33:27PM +0300, Sakari Ailus wrote:
> > > Hi Deepak,
> > > 
> > > If you're touching all these lines, I might do a little more. Please see
> > > the comments below.
> > > 
> > Hello Sakari,
> > I can definitely include other changes, but then it will be many different
> > types of changes into a single patch. Will that be okay?
> > 
> > I was planning to address one issue per patch as I think the volume of
> > change is going to be high.  I mentioned that in the notes section of the patch
> > message.
> 
> I think I'd split the patch into smaller chunks if the result becomes too
> big but I don't think it's necessary yet.
> 
> Splitting different kinds of simple cleanups into several patches takes
> longer time to review when they're touching the same piece of code. As the
> chunks in these patches have virtually no dependencies to other chunks,
> it's fine to do several kinds of cleanups at once.

Okay, sure. That sounds good to me. I will include other related
improvements in the same area and send split patch set accordingly. I will
include this patch in the patch set.

Thank you for the guidance.
deepak.

> 
> -- 
> Kind regards,
> 
> Sakari Ailus


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
