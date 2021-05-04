Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id CDD49372D44
	for <lists+driverdev-devel@lfdr.de>; Tue,  4 May 2021 17:49:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 537FF605CA;
	Tue,  4 May 2021 15:49:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZQbS9NCaL8py; Tue,  4 May 2021 15:49:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1016160678;
	Tue,  4 May 2021 15:49:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D41671BF383
 for <devel@linuxdriverproject.org>; Tue,  4 May 2021 15:48:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C35E3843BC
 for <devel@linuxdriverproject.org>; Tue,  4 May 2021 15:48:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=mailo.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gXFXEimBzShe for <devel@linuxdriverproject.org>;
 Tue,  4 May 2021 15:48:55 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from msg-2.mailo.com (msg-2.mailo.com [213.182.54.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DBB6B843B6
 for <devel@driverdev.osuosl.org>; Tue,  4 May 2021 15:48:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mailo.com; s=mailo;
 t=1620143321; bh=i/DscfyocaLXVPs/tq8JAhNd8zHh2Pe2i8Xk7pjc6tw=;
 h=X-EA-Auth:Date:From:To:Cc:Subject:Message-ID:References:
 MIME-Version:Content-Type:In-Reply-To;
 b=SaqjVcCDXUJFTlvrG+JFn/T9gKzU8LYdN88S+/1wWVpDpqks3bibcQdAu6NgTWRGE
 I1HgCFr02pr8dPbWU2nohTDyVP2FVObN9UPrduoHja6OXrrkle5IUSbwzEy9htlOHs
 B8adLEkja898epS1QCzZR/6Qj6Zzdy2joRq/XwW8=
Received: by b-5.in.mailobj.net [192.168.90.15] with ESMTP
 via ip-206.mailobj.net [213.182.55.206]
 Tue,  4 May 2021 17:48:41 +0200 (CEST)
X-EA-Auth: ASSLxZ0NBX1lWQ7iVfQIVWKVqHIffGnrW3jbI3eWgAd6GVbDR26vByddwu1ZsTT3EQT/jNXpwthNMtJMvt7VVMiZx+p7/4S8
Date: Tue, 4 May 2021 21:18:36 +0530
From: Deepak R Varma <drv@mailo.com>
To: Sakari Ailus <sakari.ailus@linux.intel.com>
Subject: Re: [PATCH] staging: media: atomisp: pci: reposition braces as per
 coding style
Message-ID: <YJFs1KspK2aapNSk@dU2104>
References: <YIwk3KbVGRPJwKa4@dU2104>
 <20210430163327.GI3@paasikivi.fi.intel.com>
 <YIw4pUzTOHV6E9WZ@dU2104>
 <20210430171241.GJ3@paasikivi.fi.intel.com>
 <YIw7vsy+bYzFIQC0@dU2104>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YIw7vsy+bYzFIQC0@dU2104>
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

On Fri, Apr 30, 2021 at 10:48:12PM +0530, Deepak R Varma wrote:
> On Fri, Apr 30, 2021 at 08:12:41PM +0300, Sakari Ailus wrote:
> > Hi Deepak,
> > 
> > On Fri, Apr 30, 2021 at 10:34:37PM +0530, Deepak R Varma wrote:
> > > On Fri, Apr 30, 2021 at 07:33:27PM +0300, Sakari Ailus wrote:
> > > > Hi Deepak,
> > > > 
> > > > If you're touching all these lines, I might do a little more. Please see
> > > > the comments below.
> > > > 
> > > Hello Sakari,
> > > I can definitely include other changes, but then it will be many different
> > > types of changes into a single patch. Will that be okay?
> > > 
> > > I was planning to address one issue per patch as I think the volume of
> > > change is going to be high.  I mentioned that in the notes section of the patch
> > > message.
> > 
> > I think I'd split the patch into smaller chunks if the result becomes too
> > big but I don't think it's necessary yet.
> > 
> > Splitting different kinds of simple cleanups into several patches takes
> > longer time to review when they're touching the same piece of code. As the
> > chunks in these patches have virtually no dependencies to other chunks,
> > it's fine to do several kinds of cleanups at once.
> 
> Okay, sure. That sounds good to me. I will include other related
> improvements in the same area and send split patch set accordingly. I will
> include this patch in the patch set.

Hello Sakari and all,
I have sent in the changes as suggested in a patch set with 5 individual
patches. I will wait for your review and feedback before I work on other
files.

Thank you,
deepak.

> 
> Thank you for the guidance.
> deepak.
> 
> > 
> > -- 
> > Kind regards,
> > 
> > Sakari Ailus


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
