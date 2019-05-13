Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D96D1B3AD
	for <lists+driverdev-devel@lfdr.de>; Mon, 13 May 2019 12:10:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 68BB2854DB;
	Mon, 13 May 2019 10:10:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jWY75sh9NTQU; Mon, 13 May 2019 10:10:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CAF4B854FC;
	Mon, 13 May 2019 10:10:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D4B6E1BF842
 for <devel@linuxdriverproject.org>; Mon, 13 May 2019 10:09:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D1A348545F
 for <devel@linuxdriverproject.org>; Mon, 13 May 2019 10:09:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Rz2RwpygzgrK for <devel@linuxdriverproject.org>;
 Mon, 13 May 2019 10:09:07 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 4821B85092
 for <devel@driverdev.osuosl.org>; Mon, 13 May 2019 10:09:07 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9D6F520989;
 Mon, 13 May 2019 10:09:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1557742147;
 bh=SZgEYTceQvNy8qmopRM9bgD1SKtO1AaFMvhnILCoeaM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=sRF1Bs00hdg7f+HHfR7YKckHrCI94Qwv/6tTKSpD4Nfl9I0SXpESHjDu5Ov9iVEhu
 iNkB0VFg62ANly2EMa6ftBaz9dREG9Ew3qdYjxxhvAzBpIC6fBCyEwLassr6lpiwzV
 cKxuFfuB3ALdMhHsqxvVCG+FIEnHBwHyQflmvTSg=
Date: Mon, 13 May 2019 12:09:04 +0200
From: "'gregkh@linuxfoundation.org'" <gregkh@linuxfoundation.org>
To: Matt Sickler <Matt.Sickler@daktronics.com>
Subject: Re: [PATCH v2] kpc_i2c: Remove unused file
Message-ID: <20190513100904.GA17772@kroah.com>
References: <SN6PR02MB4016E93EC94A46E6C79A76DBEE330@SN6PR02MB4016.namprd02.prod.outlook.com>
 <20190509141243.GE21059@kadam>
 <SN6PR02MB401611F8B4C2FDC9DEE82B58EE330@SN6PR02MB4016.namprd02.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <SN6PR02MB401611F8B4C2FDC9DEE82B58EE330@SN6PR02MB4016.namprd02.prod.outlook.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
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
Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, May 09, 2019 at 02:47:50PM +0000, Matt Sickler wrote:
> >-----Original Message-----
> >From: Dan Carpenter <dan.carpenter@oracle.com>
> >
> >Add Staging: to the subject.
> 
> Added to my notes so I don't forget it next time.
> 
> >[PATCH v2] Staging: kpc_i2c: Remove unused file fileops.c
> >
> >On Thu, May 09, 2019 at 01:38:27PM +0000, Matt Sickler wrote:
> >> The whole file was wrapped in an #if 0.  I'm guessing it was a
> >> leftover file from when we were first developing the driver and we just
> >forgot about it.
> >>
> >> V2: Forgot the signed-off-by line on the first patch.
> >
> >Put this after the --- cut off line
> >
> >>
> >> Signed-off-by: Matt Sickler <matt.sickler@daktronics.com>
> >> ---
> >  ^^^
> >
> >Here.
> 
> Noted.  I just looked up a "v2" patch in the mailing list
> archive to see what that looks like.  I'll try to do that
> next time.
> 
> >
> >There is something else wrong with the patch and it's corrupted a bit or
> >something.  Please read the first paragraph of Documentation/process/email-
> >clients.rst
> 
> Ugh.  I'm about to throw Outlook in the trash and just use
> my personal email account.
> I know most subsystem maintainers don't accept pull requests
> but Daktronics does have a github account that I could push
> my changes to and use git-request-pull to ask Greg to pull
> from.  Greg, would that be an acceptable solution?  If not,
> I can continue struggle-bussing with Outlook.

I can't take git pull requests from github, sorry.

Can you use 'git send-email' directly with your exchange server, from
the command line?

I fixed up this patch by hand and applied it.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
