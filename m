Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 587CF1E2566
	for <lists+driverdev-devel@lfdr.de>; Tue, 26 May 2020 17:28:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5DE0123420;
	Tue, 26 May 2020 15:28:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UsIo1576Hc5c; Tue, 26 May 2020 15:28:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 1D1B622D2D;
	Tue, 26 May 2020 15:28:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C23811BF97F
 for <devel@linuxdriverproject.org>; Tue, 26 May 2020 15:28:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id BB00386248
 for <devel@linuxdriverproject.org>; Tue, 26 May 2020 15:28:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8x8-IvrsR18p for <devel@linuxdriverproject.org>;
 Tue, 26 May 2020 15:28:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qv1-f65.google.com (mail-qv1-f65.google.com
 [209.85.219.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 16673845C0
 for <devel@driverdev.osuosl.org>; Tue, 26 May 2020 15:28:00 +0000 (UTC)
Received: by mail-qv1-f65.google.com with SMTP id r3so9634161qve.1
 for <devel@driverdev.osuosl.org>; Tue, 26 May 2020 08:28:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=oKHucmkrBFB5G9OuhH47zidizeVEq6rHyX6FUAtNefk=;
 b=aJQB4B+erUktdaSpoDm+C9mioqlfTdaO2N/iu4nV1Rs1JoYFmvORg3P28v83CM0J2k
 FOtmfJYkNUX6cAwHi1Th00KUnDw4znAI48Fk0yiO+zaMMG2qZI/+7kG6zMOe5kVZ1Yic
 R00N3Y91p6ZndHB+bXzwiApqIjCD8jmRw/lzaP1Ml43KoEU5FiZXtSfHwJrLDfIWn4Vx
 efPw9D5HAZBfuWbASnW3jclQcmZgbYsNxO6B+qulnsgmvBeVDD04RfeWVle1OXj791Fd
 BHtb5Z9jNsv4Bu27V2bQRREvj7+V+/zzI1jgtjjoegDC5g1qfi4Ks3cfq5dbOCx/VwwP
 oocA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=oKHucmkrBFB5G9OuhH47zidizeVEq6rHyX6FUAtNefk=;
 b=YmJgIlTWX4o980BrMY9/z9V+3PjBEYQZU6h2iOVTBbt4wXIxyksnnYvm8Mou+5CuS7
 e4q7Gs4SRfxcqdpBkwPIjnJNWitylR/fAvzlD43hIF2qVBnxiyDiMbSG3lfsgBlyUJi5
 gUiP25W97KnkubSIo7Z7raXzixBB4gEq+rnCs7i0b+Q0piycFXrMBqripo9PRAVG8/MW
 RdyoE9Dt6Eb8n+2x9b7iZi6m4/2bo8UG8SOkRBUiwH2hIm7vApkj9MQEAi66squhnU6K
 6rz4bT8+l5ARbsfp19Lc1oMHl2uuXHlMPPKG7HhCkj76VuRhYhbwC/SYj2smfXVN8qa+
 qaEg==
X-Gm-Message-State: AOAM532Y3Hsrih+pK6xLNO5bARxvQuakarHj4JSqKrjn2oGrziqusMoT
 VNXDxVBx/yGaReBrZXo4q5v/4d0YBwg=
X-Google-Smtp-Source: ABdhPJyJ4fdDWg8XYQmVafCnDQ/hXl2uywgtD6SePotMX262aaKc8jXeeshMu+0cy0FdGm6GJCRUBw==
X-Received: by 2002:a05:6214:5b1:: with SMTP id
 by17mr20178659qvb.37.1590506878868; 
 Tue, 26 May 2020 08:27:58 -0700 (PDT)
Received: from igor-Aspire-F5-573G ([189.84.32.31])
 by smtp.gmail.com with ESMTPSA id n206sm17151921qke.20.2020.05.26.08.27.57
 (version=TLS1 cipher=ECDHE-ECDSA-AES128-SHA bits=128/128);
 Tue, 26 May 2020 08:27:58 -0700 (PDT)
Date: Tue, 26 May 2020 12:27:55 -0300
From: Igor Ribeiro Barbosa Duarte <igor.ribeiro.duarte@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [PATCH] staging: wlan-ng: Fix number of characters warning style.
Message-ID: <20200526152755.GA24141@igor-Aspire-F5-573G>
References: <20200525221025.GA27612@igor-Aspire-F5-573G>
 <20200526055932.GB2576013@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200526055932.GB2576013@kroah.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
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
Cc: devel@driverdev.osuosl.org, igor.ribeiro.duarte@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, May 26, 2020 at 07:59:32AM +0200, Greg KH wrote:
> On Mon, May 25, 2020 at 07:10:25PM -0300, Igor Ribeiro Barbosa Duarte wrote:
> > Fix checkpatch error "WARNING: line over 80 characters" at cfg80211.c:451
> > 
> > Signed-off-by: Igor Ribeiro Barbosa Duarte <igor.ribeiro.duarte@gmail.com>
> > ---
> >  drivers/staging/wlan-ng/cfg80211.c | 7 ++++---
> >  1 file changed, 4 insertions(+), 3 deletions(-)
> > 
> > diff --git a/drivers/staging/wlan-ng/cfg80211.c b/drivers/staging/wlan-ng/cfg80211.c
> > index fac38c8..a911bcd 100644
> > --- a/drivers/staging/wlan-ng/cfg80211.c
> > +++ b/drivers/staging/wlan-ng/cfg80211.c
> > @@ -447,9 +447,10 @@ static int prism2_connect(struct wiphy *wiphy, struct net_device *dev,
> >  	/* Set the channel */
> >  	if (channel) {
> >  		chan = ieee80211_frequency_to_channel(channel->center_freq);
> > -		result = prism2_domibset_uint32(wlandev,
> > -						DIDMIB_DOT11PHY_DSSSTABLE_CURRENTCHANNEL,
> > -						chan);
> > +		result = prism2_domibset_uint32
> > +			 (wlandev,
> > +			  DIDMIB_DOT11PHY_DSSSTABLE_CURRENTCHANNEL,
> > +			  chan);
> 
> The original really is easier to read and understand, don't you think
> so?
> 
> Checkpatch is a hint, it doesn't always have to be followed exactly.
> Perhaps that crazy #define could be shortened, or use a more
> conventional name?
> 
> thanks,
> 
> greg k-h

Right, I'll check this. Thank you.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
