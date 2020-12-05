Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 57F0F2CFB8C
	for <lists+driverdev-devel@lfdr.de>; Sat,  5 Dec 2020 15:29:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 676B586FB4;
	Sat,  5 Dec 2020 14:29:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0uaXXzebDB2t; Sat,  5 Dec 2020 14:29:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0553A8639F;
	Sat,  5 Dec 2020 14:29:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B95E31BF3D1
 for <devel@linuxdriverproject.org>; Sat,  5 Dec 2020 14:29:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9D87687558
 for <devel@linuxdriverproject.org>; Sat,  5 Dec 2020 14:29:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kSvPWleHF3Qj for <devel@linuxdriverproject.org>;
 Sat,  5 Dec 2020 14:29:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f68.google.com (mail-io1-f68.google.com
 [209.85.166.68])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 3E598878C6
 for <devel@driverdev.osuosl.org>; Sat,  5 Dec 2020 14:28:14 +0000 (UTC)
Received: by mail-io1-f68.google.com with SMTP id i9so8889142ioo.2
 for <devel@driverdev.osuosl.org>; Sat, 05 Dec 2020 06:28:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=0qWSnPq14pK/2TF1N7i6M8TMgylwHfxJyGzNzbUxtWg=;
 b=VxBQMnWWWzbUd0BqiflvaNzHCifCL0HUlVOOVAvuRTcIMzn1bJ15mmeaSwtd4oQA6O
 5igOxiTVzJn+vjnoTTCi0N7oBAnOUSpP/xYClORLcnXGwg1uFLELXABtaQLYz9NyCnCk
 GTr0JOKTGjjk/S7evTvzWwZg8dOi3Kolob9pIEHskH4giqDS4nnwudnZnPkZeVqEfH8I
 k/HfujsF6FD9B6SzQ5oyiOIS460s74+4lE+yYyc7r5SADe8MrNbCLlU3g2CLEvfhwcO1
 CtFXfcD6i35UdfzIvh2bnciKyF7irP2DQgxiGP8mHsDuA8GLwVPdUETQgIa9dQefgd0S
 IxEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=0qWSnPq14pK/2TF1N7i6M8TMgylwHfxJyGzNzbUxtWg=;
 b=ufaITqybUXnH9+JuyjrG8O4jy4KW9p4SVAjiiMTPf8uZOaYM4LHvZDv8jWWQ5Tthug
 BE+/lKRP6AlVMEx0gDxo98F1uFvTsYILbLGBnZJIOQMfjmVG0V1mwnhRYpa5qJWqNN94
 W/21/b5/WDzRmW3E/Hhbq2pmWiGar/c9niKydWOPz+76UfGo+34gXGQfQ4le4Sh/fSxQ
 G1BGHJFR/17e1zMOxGsWz3Blj3tfafeutvQ0NhUoaskkSbQ7NuS6ZM0gk4j6jMlzC2Wj
 ImgiXqtD8JZqTSOSywJjCR6K350q1l/ApTdUtgVmkpWQfLypemyEkPxjZMJ5jyZd3BUg
 qoXA==
X-Gm-Message-State: AOAM5317J8sxuSnSfnywt9GnvpAfA43/mPLWaOQyRyYOwUb14KRsL1cU
 gG1sJl/SGxXQvJa/apvcvLs=
X-Google-Smtp-Source: ABdhPJxVnKLxgLBfY2bJL3ivoIS40N2M+kyWNYFjfExnjyz9Ea5FlbC1xdgEmQT6TdYbItTfbHI/Hw==
X-Received: by 2002:a5d:8a1a:: with SMTP id w26mr11135442iod.112.1607178493187; 
 Sat, 05 Dec 2020 06:28:13 -0800 (PST)
Received: from a ([24.13.98.51])
 by smtp.gmail.com with ESMTPSA id x12sm3737730ila.0.2020.12.05.06.28.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 05 Dec 2020 06:28:12 -0800 (PST)
Date: Sat, 5 Dec 2020 08:28:10 -0600
From: YOUR NAME <matthew.v.deangelis@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [PATCH] Staging: rtl8723bs/core fix brace coding style issues in
 rtw_recv.c
Message-ID: <20201205142810.GA448750@a>
References: <20201204220043.GA440355@a>
 <X8tHrHq9lbjdulvA@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <X8tHrHq9lbjdulvA@kroah.com>
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

On Sat, Dec 05, 2020 at 09:41:16AM +0100, Greg KH wrote:
> On Fri, Dec 04, 2020 at 04:00:43PM -0600, Brother Matthew De Angelis wrote:
> > Fix all the brace code style warnings found by checkpatch.pl at the
> > following lines:
> > 748, 940, 1039, 1602, 1922, 1939.
> > At line 940 add a semi-colon to specify a line that does not execute
> > anything, as in Kernighan and Ritchie
> > 
> > Signed-off-by: Brother Matthew De Angelis <matthew.v.deangelis@gmail.com>
> > ---
> >  drivers/staging/rtl8723bs/core/rtw_recv.c | 20 +++++++-------------
> >  1 file changed, 7 insertions(+), 13 deletions(-)
> > 
> > diff --git a/drivers/staging/rtl8723bs/core/rtw_recv.c b/drivers/staging/rtl8723bs/core/rtw_recv.c
> > index 43e67e48d2df..22030fe6e714 100644
> > --- a/drivers/staging/rtl8723bs/core/rtw_recv.c
> > +++ b/drivers/staging/rtl8723bs/core/rtw_recv.c
> > @@ -745,9 +745,8 @@ void count_rx_stats(struct adapter *padapter, union recv_frame *prframe, struct
> >  
> >  	padapter->mlmepriv.LinkDetectInfo.NumRxOkInPeriod++;
> >  
> > -	if ((!MacAddr_isBcst(pattrib->dst)) && (!IS_MCAST(pattrib->dst))) {
> > +	if ((!MacAddr_isBcst(pattrib->dst)) && (!IS_MCAST(pattrib->dst)))
> >  		padapter->mlmepriv.LinkDetectInfo.NumRxUnicastOkInPeriod++;
> > -	}
> >  
> >  	if (sta)
> >  		psta = sta;
> > @@ -937,9 +936,8 @@ sint ap2sta_data_frame(struct adapter *adapter, union recv_frame *precv_frame,
> >  			goto exit;
> >  		}
> >  
> > -		if ((GetFrameSubType(ptr) & WIFI_QOS_DATA_TYPE) == WIFI_QOS_DATA_TYPE) {
> > -		}
> > -
> > +		if ((GetFrameSubType(ptr) & WIFI_QOS_DATA_TYPE) == WIFI_QOS_DATA_TYPE)
> > +			;
> 
> An if statement that does nothing should not be here at all, right?
> 
> thanks,
> 
> greg k-h
My apologies for sending this in private to Greg the first time.
I was not smart enough to figure out that Group in Mutt stands for "Reply to all".
Thank you for your suggestion Greg.
Should I send a single patch that deletes the empty if statement at line 940
and the unnecessary braces at the other lines
or should I split the two deletions into two separate patches?
Should it perhaps be a patch set?
Thanks!
Br. Matt
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
