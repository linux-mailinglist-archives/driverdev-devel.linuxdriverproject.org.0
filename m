Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 75242318A5A
	for <lists+driverdev-devel@lfdr.de>; Thu, 11 Feb 2021 13:24:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 16B6E6F69A
	for <lists+driverdev-devel@lfdr.de>; Thu, 11 Feb 2021 12:24:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tBriWN0WN7S2 for <lists+driverdev-devel@lfdr.de>;
	Thu, 11 Feb 2021 12:24:00 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id 6C4B56F52A; Thu, 11 Feb 2021 12:24:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C78C86F532;
	Thu, 11 Feb 2021 12:23:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D65841BF340
 for <devel@linuxdriverproject.org>; Thu, 11 Feb 2021 12:23:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D2C5E86ACA
 for <devel@linuxdriverproject.org>; Thu, 11 Feb 2021 12:23:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hZvkFk9RdX1z for <devel@linuxdriverproject.org>;
 Thu, 11 Feb 2021 12:23:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com
 [209.85.218.44])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B1F0986AB7
 for <devel@driverdev.osuosl.org>; Thu, 11 Feb 2021 12:23:28 +0000 (UTC)
Received: by mail-ej1-f44.google.com with SMTP id hs11so9794162ejc.1
 for <devel@driverdev.osuosl.org>; Thu, 11 Feb 2021 04:23:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=98DRdWMtJ5a8j+v9HHj8zV5HAmHUhIOMtOsk+5Zo6vY=;
 b=CF5lNLQVFU3hMolQxQlvsi0aU7Hp9V4iJ4niy6+p6TtAMfurVPzO2vp4HtLrMGzCAs
 5NUr63Z7RgrtQpMFudwwFG5CiA5MAeUAu+nKkxDgXQrRVoxx+rdF50V3HTfLufCMIn/7
 N6aUQzidhAsHI4dPCDIyoDSc6LCNH2wHdQjqK3zdGE8u6ubPK6KJ5yMwN2PSkzO+giJr
 rvJJ6R3EahCoK+VQCNzyQNIjgyxC8PHs4G3JtTyMT069StR7eAKCuhc1ejZBA8Ac31YF
 R54/45JuO836UUat9de8Wpxt0OOGw5/LtIH0HKDEYbh0o8JOQdcuYYPx0UZu8qjHntwA
 l1uA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=98DRdWMtJ5a8j+v9HHj8zV5HAmHUhIOMtOsk+5Zo6vY=;
 b=iu4BCIoN2YzeQ1Sq1VNrE1Cu8Fg+D2M+aaLh+3QdDZ8gimYLK8Z+3o4U2WNtyFGsAd
 P4G6nv0zf8HO6/dgIWgCTDuEJr2ZlwE0R7VQ6JRgBdgDAcMdYlgAAW8tk6m/xAyKJJmK
 hq6sNz/b/l1dpVAgxbfEAqgdb/vR/IoFTxwDqKJMmxDTLOOGdQQVWbWVYDL3HAv0dCWH
 SmXp9F+uHST73m7XK1fw0/1+cNhazjDxlJvYOIX91jiqj1jh/WyOUlJ+JGQT/LkabQAh
 HMvaNL4+B6CT2CaI1zL74G3f4sht7+ed/pECoPYLegHgu65scYZjgUIG5fc7ez4rnK4H
 qAyA==
X-Gm-Message-State: AOAM530fCEkKo3FRb56WgBeLXDeVjPnjLryg856BlMlZ8uVfYJ93pdKj
 pM2gOqGxh7uB2byYYJuGBGo=
X-Google-Smtp-Source: ABdhPJz9w5j4Zrbo/kiuVFeF6khzTfzKMB3QRq15Mbb3ZvLvmLWmTjoeC+x8zWbwxtQC/MrlDiL57w==
X-Received: by 2002:a17:906:c049:: with SMTP id
 bm9mr7996224ejb.535.1613046207179; 
 Thu, 11 Feb 2021 04:23:27 -0800 (PST)
Received: from TRWS9215.usr.ingenico.loc ([95.13.23.74])
 by smtp.gmail.com with ESMTPSA id a1sm3921239edj.6.2021.02.11.04.23.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 11 Feb 2021 04:23:26 -0800 (PST)
Date: Thu, 11 Feb 2021 15:23:24 +0300
From: Fatih Yildirim <yildirim.fatih@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [PATCH -next] staging: ks7010: Macros with complex values
Message-ID: <20210211122324.GA10415@TRWS9215.usr.ingenico.loc>
References: <20210211092239.10291-1-yildirim.fatih@gmail.com>
 <YCUAy1VhLV3lwa3H@kroah.com>
 <20210211105704.GA10351@TRWS9215.usr.ingenico.loc>
 <YCUQtJk1XMsBRGBz@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YCUQtJk1XMsBRGBz@kroah.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
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
 gustavo@embeddedor.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Feb 11, 2021 at 12:10:44PM +0100, Greg KH wrote:
> On Thu, Feb 11, 2021 at 01:57:04PM +0300, Fatih YILDIRIM wrote:
> > On Thu, Feb 11, 2021 at 11:02:51AM +0100, Greg KH wrote:
> > > On Thu, Feb 11, 2021 at 12:22:39PM +0300, Fatih Yildirim wrote:
> > > > Fix for checkpatch.pl warning:
> > > > Macros with complex values should be enclosed in parentheses.
> > > > 
> > > > Signed-off-by: Fatih Yildirim <yildirim.fatih@gmail.com>
> > > > ---
> > > >  drivers/staging/ks7010/ks_hostif.h | 24 ++++++++++++------------
> > > >  1 file changed, 12 insertions(+), 12 deletions(-)
> > > > 
> > > > diff --git a/drivers/staging/ks7010/ks_hostif.h b/drivers/staging/ks7010/ks_hostif.h
> > > > index 39138191a556..c62a494ed6bb 100644
> > > > --- a/drivers/staging/ks7010/ks_hostif.h
> > > > +++ b/drivers/staging/ks7010/ks_hostif.h
> > > > @@ -498,20 +498,20 @@ struct hostif_mic_failure_request {
> > > >  #define TX_RATE_FIXED		5
> > > >  
> > > >  /* 11b rate */
> > > > -#define TX_RATE_1M	(u8)(10 / 5)	/* 11b 11g basic rate */
> > > > -#define TX_RATE_2M	(u8)(20 / 5)	/* 11b 11g basic rate */
> > > > -#define TX_RATE_5M	(u8)(55 / 5)	/* 11g basic rate */
> > > > -#define TX_RATE_11M	(u8)(110 / 5)	/* 11g basic rate */
> > > > +#define TX_RATE_1M	((u8)(10 / 5))	/* 11b 11g basic rate */
> > > > +#define TX_RATE_2M	((u8)(20 / 5))	/* 11b 11g basic rate */
> > > > +#define TX_RATE_5M	((u8)(55 / 5))	/* 11g basic rate */
> > > > +#define TX_RATE_11M	((u8)(110 / 5))	/* 11g basic rate */
> > > 
> > > But these are not "complex macros" that need an extra () added to them,
> > > right?
> > > 
> > > Checkpatch is a hint, it's not a code parser and can not always know
> > > what is happening.  With your knowledge of C, does this look like
> > > something that needs to be "fixed"?
> > > 
> > > thanks,
> > > 
> > > greg k-h
> > 
> > Hi Greg,
> > 
> > Thanks for your reply.
> > Actually, I'm following the Eudyptula Challenge and I'm at task 10.
> 
> First rule of that challenge is that you are not allowed to talk about
> it in public :)
> 
> That being said, you didn't answer any of my questions above :(
> 
> greg k-h

Ohh no, missed the rule. Sorry for that, I feel rookie :)
You are right, they are not complex macros.
Besides that, type cast operator doesn't have the highest precedence.
So, I think we can use enclosing paranthesis.

Thanks,
Fatih
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
