Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AD1F14A4DB
	for <lists+driverdev-devel@lfdr.de>; Mon, 27 Jan 2020 14:22:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 22CE784D0A;
	Mon, 27 Jan 2020 13:22:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HRlSnP3FMMpW; Mon, 27 Jan 2020 13:22:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8EB2284CF4;
	Mon, 27 Jan 2020 13:22:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 57C821BF3B1
 for <devel@linuxdriverproject.org>; Mon, 27 Jan 2020 13:22:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 53A532000A
 for <devel@linuxdriverproject.org>; Mon, 27 Jan 2020 13:22:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id I9m8Y+BfbiVU for <devel@linuxdriverproject.org>;
 Mon, 27 Jan 2020 13:22:16 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id A72A21FD16
 for <devel@driverdev.osuosl.org>; Mon, 27 Jan 2020 13:22:16 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D043720702;
 Mon, 27 Jan 2020 13:22:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1580131336;
 bh=fZarlOL171T4mZmZuUZAgxJjZKoj0+uo6MO3bGSw068=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=mnzqYZf1Wz1lzpMAvzfDUIzPMaaRyeOnCcxyz+/NuvnjASSmDwTQF2wgHLXrs4kBa
 7x/wLCsEEtVbLbHY1Whr+HJsmBvxiEyIudGmgZ5YyqtOj1mJWrP6Gcgn/KbhokqfsG
 CADGG1GL+a4+4vGlfdm7eN+w+lri0k/5vcp7bTSo=
Date: Mon, 27 Jan 2020 14:22:14 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH 07/22] staging: exfat: Rename variable "MilliSecond" to
 "milli_second"
Message-ID: <20200127132214.GA415635@kroah.com>
References: <20200127101343.20415-1-pragat.pandya@gmail.com>
 <20200127101343.20415-8-pragat.pandya@gmail.com>
 <20200127115530.GZ1847@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200127115530.GZ1847@kadam>
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
Cc: devel@driverdev.osuosl.org, valdis.kletnieks@vt.edu,
 linux-kernel@vger.kernel.org, skhan@linuxfoundation.org,
 linux-fsdevel@vger.kernel.org, linux-kernel-mentees@lists.linuxfoundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Jan 27, 2020 at 02:55:31PM +0300, Dan Carpenter wrote:
> On Mon, Jan 27, 2020 at 03:43:28PM +0530, Pragat Pandya wrote:
> > Change all the occurrences of "MilliSecond" to "milli_second" in exfat.
> > 
> > Signed-off-by: Pragat Pandya <pragat.pandya@gmail.com>
> > ---
> >  drivers/staging/exfat/exfat.h       |  2 +-
> >  drivers/staging/exfat/exfat_super.c | 16 ++++++++--------
> >  2 files changed, 9 insertions(+), 9 deletions(-)
> > 
> > diff --git a/drivers/staging/exfat/exfat.h b/drivers/staging/exfat/exfat.h
> > index 85fbea44219a..5c207d715f44 100644
> > --- a/drivers/staging/exfat/exfat.h
> > +++ b/drivers/staging/exfat/exfat.h
> > @@ -228,7 +228,7 @@ struct date_time_t {
> >  	u16      hour;
> >  	u16      minute;
> >  	u16      second;
> > -	u16      MilliSecond;
> > +	u16      milli_second;
> 
> Normally we would just call it "ms".

Or millisecond, no "_" needed either way.

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
