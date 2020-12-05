Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A1B32CFC04
	for <lists+driverdev-devel@lfdr.de>; Sat,  5 Dec 2020 17:29:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id C47E02285E;
	Sat,  5 Dec 2020 16:29:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bfdnA2b6abka; Sat,  5 Dec 2020 16:29:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 4E5BD227AD;
	Sat,  5 Dec 2020 16:29:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7E5221BF57B
 for <devel@linuxdriverproject.org>; Sat,  5 Dec 2020 16:29:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 799B186DFD
 for <devel@linuxdriverproject.org>; Sat,  5 Dec 2020 16:29:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KLVNpqRBJXXY for <devel@linuxdriverproject.org>;
 Sat,  5 Dec 2020 16:29:18 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 6BDFC8733E
 for <devel@driverdev.osuosl.org>; Sat,  5 Dec 2020 16:29:18 +0000 (UTC)
Date: Sat, 5 Dec 2020 17:30:31 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1607185758;
 bh=R8W33ePbrXRgiBmtf6iFIDMGOHjokI3L2tHwEAOkJOY=;
 h=From:To:Cc:Subject:References:In-Reply-To:From;
 b=NipTx32l0RfPEXv4++bsZ2Ln4Cq0t0H0I/WiaD82bbQw+XMfpdjzeqY6qvCGVA9rf
 LXh0IwVxHqV+q+zgCPYnjKxAhTDjwVBBKQbw1u8OTVFQyNigp4/Ko+qSAiGJxYj1ba
 PdexPmPyT8xJXCLx9gSgyiAnP+J2fdKwl/BEvyOA=
From: Greg KH <gregkh@linuxfoundation.org>
To: YOUR NAME <matthew.v.deangelis@gmail.com>
Subject: Re: [PATCH] Staging: rtl8723bs/core fix brace coding style issues in
 rtw_recv.c
Message-ID: <X8u1p5l133+UlaWf@kroah.com>
References: <20201204220043.GA440355@a> <X8tHrHq9lbjdulvA@kroah.com>
 <20201205142810.GA448750@a>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201205142810.GA448750@a>
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
Cc: devel@driverdev.osuosl.org, pterjan@google.com, vkor@vkten.in,
 amarjargal16@gmail.com, ross.schm.dev@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Dec 05, 2020 at 08:28:10AM -0600, YOUR NAME wrote:
> On Sat, Dec 05, 2020 at 09:41:16AM +0100, Greg KH wrote:
> > On Fri, Dec 04, 2020 at 04:00:43PM -0600, Brother Matthew De Angelis wrote:
> > > Fix all the brace code style warnings found by checkpatch.pl at the
> > > following lines:
> > > 748, 940, 1039, 1602, 1922, 1939.
> > > At line 940 add a semi-colon to specify a line that does not execute
> > > anything, as in Kernighan and Ritchie
> > > 
> > > Signed-off-by: Brother Matthew De Angelis <matthew.v.deangelis@gmail.com>
> > > ---
> > >  drivers/staging/rtl8723bs/core/rtw_recv.c | 20 +++++++-------------
> > >  1 file changed, 7 insertions(+), 13 deletions(-)
> > > 
> > > diff --git a/drivers/staging/rtl8723bs/core/rtw_recv.c b/drivers/staging/rtl8723bs/core/rtw_recv.c
> > > index 43e67e48d2df..22030fe6e714 100644
> > > --- a/drivers/staging/rtl8723bs/core/rtw_recv.c
> > > +++ b/drivers/staging/rtl8723bs/core/rtw_recv.c
> > > @@ -745,9 +745,8 @@ void count_rx_stats(struct adapter *padapter, union recv_frame *prframe, struct
> > >  
> > >  	padapter->mlmepriv.LinkDetectInfo.NumRxOkInPeriod++;
> > >  
> > > -	if ((!MacAddr_isBcst(pattrib->dst)) && (!IS_MCAST(pattrib->dst))) {
> > > +	if ((!MacAddr_isBcst(pattrib->dst)) && (!IS_MCAST(pattrib->dst)))
> > >  		padapter->mlmepriv.LinkDetectInfo.NumRxUnicastOkInPeriod++;
> > > -	}
> > >  
> > >  	if (sta)
> > >  		psta = sta;
> > > @@ -937,9 +936,8 @@ sint ap2sta_data_frame(struct adapter *adapter, union recv_frame *precv_frame,
> > >  			goto exit;
> > >  		}
> > >  
> > > -		if ((GetFrameSubType(ptr) & WIFI_QOS_DATA_TYPE) == WIFI_QOS_DATA_TYPE) {
> > > -		}
> > > -
> > > +		if ((GetFrameSubType(ptr) & WIFI_QOS_DATA_TYPE) == WIFI_QOS_DATA_TYPE)
> > > +			;
> > 
> > An if statement that does nothing should not be here at all, right?
> > 
> > thanks,
> > 
> > greg k-h
> My apologies for sending this in private to Greg the first time.
> I was not smart enough to figure out that Group in Mutt stands for "Reply to all".
> Thank you for your suggestion Greg.
> Should I send a single patch that deletes the empty if statement at line 940
> and the unnecessary braces at the other lines
> or should I split the two deletions into two separate patches?

2 different patches, as they are doing different things, right?

> Should it perhaps be a patch set?

Yes a patch series would be great, thanks.

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
