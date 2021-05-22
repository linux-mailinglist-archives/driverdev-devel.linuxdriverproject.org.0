Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52A8438D51D
	for <lists+driverdev-devel@lfdr.de>; Sat, 22 May 2021 12:27:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 67EE740387;
	Sat, 22 May 2021 10:27:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WUI3g7qhDDET; Sat, 22 May 2021 10:27:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B4AED402B9;
	Sat, 22 May 2021 10:27:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 217AB1BF873
 for <devel@linuxdriverproject.org>; Sat, 22 May 2021 10:27:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1DF9C83C27
 for <devel@linuxdriverproject.org>; Sat, 22 May 2021 10:27:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=mailo.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CVWfAPOmKnsB for <devel@linuxdriverproject.org>;
 Sat, 22 May 2021 10:27:18 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from msg-2.mailo.com (msg-2.mailo.com [213.182.54.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 181B383C26
 for <devel@driverdev.osuosl.org>; Sat, 22 May 2021 10:27:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mailo.com; s=mailo;
 t=1621679054; bh=pntNiNl8/Dy7MmFkZk90RCYekpUw7OpnE3Bh9rZfsrs=;
 h=X-EA-Auth:Date:From:To:Cc:Subject:Message-ID:References:
 MIME-Version:Content-Type:In-Reply-To;
 b=Ntbz0bvETVPb0AyKaKgAeslcMbFFk96gBIBfjhpZnBmFyJJNVTMXpIU5moLBCHuXU
 DrHgo9EtIoxtYOIEA6RlCgHHHA5EFefYnZkImM9Awpq2EYxffbHK9kRYTXLq4xZfNR
 e9AReyCIhZwK9Fv/sOURTwlcKlLniHkj1Hfs892w=
Received: by 192.168.90.16 [192.168.90.16] with ESMTP
 via ip-206.mailobj.net [213.182.55.206]
 Sat, 22 May 2021 12:24:14 +0200 (CEST)
X-EA-Auth: Tbm0ZmgWJ2lRn83pNiRISkvsn2jiX5I1Pm4oL+z5hTnUI1vLy1APkXX+TLRcfHhthKDWrWBPIwpyshC0UipINY1FVWqqdgXh
Date: Sat, 22 May 2021 15:54:06 +0530
From: Deepak R Varma <drv@mailo.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH 3/5] staging: media: atomisp: code formatting changes
 sh_css_params.c
Message-ID: <YKjbxhzD/yKQ6B2R@dU2104>
References: <cover.1619850663.git.drv@mailo.com>
 <6bc123d66150ccaa6dc6fdf2f11c8669e2f493e2.1619850663.git.drv@mailo.com>
 <20210521105222.GJ1955@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210521105222.GJ1955@kadam>
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
 linux-kernel@vger.kernel.org, Sakari Ailus <sakari.ailus@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, May 21, 2021 at 01:52:22PM +0300, Dan Carpenter wrote:
> On Sat, May 01, 2021 at 12:16:07PM +0530, Deepak R Varma wrote:
> > @@ -1562,8 +1544,10 @@ ia_css_isp_3a_statistics_map_allocate(
> >  	base_ptr = me->data_ptr;
> >  
> >  	me->size = isp_stats->size;
> > -	/* GCC complains when we assign a char * to a void *, so these
> > -	 * casts are necessary unfortunately. */
> > +	/*
> > +	 * GCC complains when we assign a char * to a void *, so these
> > +	 * casts are necessary unfortunately.
> > +	 */
> 
> Not related to your patch, but assigning a char pointer to a void
> pointer is fine and GCC will not complain.  The problem is that
> me->dmem_stats is not a void pointer.  Someone should delete that
> nonsense comment.

I agree. Well caught. I will remove these comments and send v2. Waiting for feedback
on other patches of this series.

deepak.

> 
> >  	me->dmem_stats    = (void *)base_ptr;
> >  	me->vmem_stats_hi = (void *)(base_ptr + isp_stats->dmem_size);
> >  	me->vmem_stats_lo = (void *)(base_ptr + isp_stats->dmem_size +
> 
> regards,
> dan carpenter


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
