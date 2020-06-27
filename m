Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 65FB420C05B
	for <lists+driverdev-devel@lfdr.de>; Sat, 27 Jun 2020 10:49:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 4935320791;
	Sat, 27 Jun 2020 08:49:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id i2hmcX6qMZN0; Sat, 27 Jun 2020 08:49:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 51FCB20519;
	Sat, 27 Jun 2020 08:49:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6DE4A1BF3F4
 for <devel@linuxdriverproject.org>; Sat, 27 Jun 2020 08:49:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 69E8788354
 for <devel@linuxdriverproject.org>; Sat, 27 Jun 2020 08:49:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pLDiLait5fMU for <devel@linuxdriverproject.org>;
 Sat, 27 Jun 2020 08:49:38 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E4CBA88349
 for <devel@driverdev.osuosl.org>; Sat, 27 Jun 2020 08:49:38 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 25C6920768;
 Sat, 27 Jun 2020 08:49:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1593247778;
 bh=hJ/9GrC67f1tuUmfTLQDxK1x8SfKFDzbXZk5X543OJs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=0nJFoJbJkMyU7/kNRsXs2kWkdzWiQoDSWLm4xutD0u9RnZpQGX48yo0DqxzhndvSC
 7HXz24A4/et7gKP4ACOwimMhIpexj4eBWfYq60JH8s3e/MUdDGeCgnmp33g6mh38Hb
 1nWDzAC6NQYplB6GQGlo6nXAghG6RQjwHuQjznGA=
Date: Sat, 27 Jun 2020 10:49:32 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Hans Verkuil <hverkuil@xs4all.nl>
Subject: Re: [PATCH] staging: media: usbvision: removing prohibited space
 before ',' (ctx:WxW)
Message-ID: <20200627084932.GA1560170@kroah.com>
References: <20200626143205.xns6nwggskssujao@pesu-pes-edu>
 <CAAhDqq0tSftPxMWGeVy3mp4DGDN3o0uQwTqVbjYUwjqzWpbibQ@mail.gmail.com>
 <20200627050745.GD226238@kroah.com>
 <f73c5a69-1bf9-d80d-2399-ef18ce78b8ac@xs4all.nl>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f73c5a69-1bf9-d80d-2399-ef18ce78b8ac@xs4all.nl>
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
Cc: devel@driverdev.osuosl.org, Mauro Carvalho Chehab <mchehab@kernel.org>,
 B K KARTHIK PES2201800185STUDENT ECE DeptPESU EC Campus
 <bkkarthik@pesu.pes.edu>, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Jun 27, 2020 at 10:28:31AM +0200, Hans Verkuil wrote:
> On 27/06/2020 07:07, Greg Kroah-Hartman wrote:
> > 
> > A: http://en.wikipedia.org/wiki/Top_post
> > Q: Were do I find info about this thing called top-posting?
> > A: Because it messes up the order in which people normally read text.
> > Q: Why is top-posting such a bad thing?
> > A: Top-posting.
> > Q: What is the most annoying thing in e-mail?
> > 
> > A: No.
> > Q: Should I include quotations after my reply?
> > 
> > http://daringfireball.net/2007/07/on_top
> > 
> > On Fri, Jun 26, 2020 at 11:42:49AM -0400, B K KARTHIK PES2201800185STUDENT ECE DeptPESU EC Campus wrote:
> >> Oh, I'm sorry but wouldn't it be helpful if we had a file that lists
> >> all drivers that are scheduled for removal?
> > 
> > The TODO file in the directory for the driver should have this
> > information in it.  I don't know if all of the media drivers have this,
> > if not, then there is no way you could have known this.
> 
> They have, and in addition the Kconfig entry will mention that the driver
> is deprecated.
> 
> TODO of usbvision:
> 
> The driver is deprecated and scheduled for removal by the end
> of 2020.
> 
> In order to prevent removal the following actions would have to
> be taken:
> 
> - clean up the code
> - convert to the vb2 framework
> - fix the disconnect and free-on-last-user handling (i.e., add
>   a release callback for struct v4l2_device and rework the code
>   to use that correctly).

Ah, great, nevermind then!

B K, your wish is already granted, the text is present, you just needed
to have noticed it :)

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
