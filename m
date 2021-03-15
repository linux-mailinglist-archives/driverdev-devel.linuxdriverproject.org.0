Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A94E333BBD6
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Mar 2021 15:21:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B8E998372B;
	Mon, 15 Mar 2021 14:21:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OHMmbaOFP0_6; Mon, 15 Mar 2021 14:21:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id EA4008376B;
	Mon, 15 Mar 2021 14:21:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C624E1BF29D
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 14:21:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B57FC6F559
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 14:21:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id d0LFq702HZJY for <devel@linuxdriverproject.org>;
 Mon, 15 Mar 2021 14:21:35 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com
 [IPv6:2a00:1450:4864:20::335])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E3C03605C3
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 14:21:34 +0000 (UTC)
Received: by mail-wm1-x335.google.com with SMTP id
 w203-20020a1c49d40000b029010c706d0642so2387774wma.0
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 07:21:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=Ga/L4y7MvmQKT1EW+VXUakMEFFtc6tQt1JEqwsfn4GA=;
 b=b9zAXRM/d58UMUMO922/JHQVU6sBp7jrAFYCdYkEa6KeU+1rplffzoZgXHh6jahf/W
 OLyS5beKhSAk0h07t4bqVxlCp03l2XvLnC1AlA/9AZN7TLxqNa2J49jv5jhP8IujzFXV
 sFjJR3JHKpCyaKbR/FfJ3B5UinA4MgYfP2dkeveBLbj2pPf3fAsn2JjancvJ6YcRa3HV
 wO0WbDxjGbIJkUE9zQ6Z4znuq1Wh8ZjVCwlfu0wWj49yrFKE91gxGw2kLV+GYB/7ZJJP
 Btqg9tyTwDauG3p0+J8HphVxHhTQVNIFKUK3hzIeAVkrqNHuywJ2vvibxtyWhDq/JLpB
 AOcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Ga/L4y7MvmQKT1EW+VXUakMEFFtc6tQt1JEqwsfn4GA=;
 b=WFbXa/2lleFcwEX7Q56mdRrG8ljrTyHWOUvSw4gn45thURgfGZSqpgDUKS513gFpTR
 w5jSSipu4rAH4/f5fwWRjOB+LLjaVG6pej3NgDPmA0MD2n2ElmCNB1iBBMlsU6H+XOVb
 /JUKobNrDDD6Wkd+vnqD6zdTJ74wglSe3jWfIBOjtKPAedOAo827zyFb8fNKlewHibsS
 BC+65PWL+BvQkFB1OeU3nUcWz6x0qxoWAroyGB9s1FWFILLv6XfQQZ6Yb4FWvtsFONJX
 tvs+fjb9Swq48qDX2AiqHjiuNZCHKua33IS3TdoOxzRdeMExQg1V/+KRruMrWzp52W98
 8DAQ==
X-Gm-Message-State: AOAM53284yBEwP77eao6apspt56TFfPPuRKJ//7ZQfTuY3QTRTWmf8nA
 U1zpjNFy1hpSQmt4uUHhPfA=
X-Google-Smtp-Source: ABdhPJwjtUhIIfq8nhkfrSZpZ/sVUT1Sz+on9TrvPUJA+ide+3BWlZL0VPtksn3tFSN25+xBKN9x/Q==
X-Received: by 2002:a05:600c:47d7:: with SMTP id
 l23mr12173215wmo.155.1615818093132; 
 Mon, 15 Mar 2021 07:21:33 -0700 (PDT)
Received: from cesati.gmail.com (93-48-145-141.ip257.fastwebnet.it.
 [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id h22sm14786659wmb.36.2021.03.15.07.21.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Mar 2021 07:21:32 -0700 (PDT)
Date: Mon, 15 Mar 2021 15:21:44 +0100
From: Marco Cesati <marcocesati@gmail.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH 01/33] staging: rtl8723bs: remove typedefs in
 HalBtcOutSrc.h
Message-ID: <20210315142144.nxddidcvsyafyfuv@cesati.gmail.com>
References: <20210312082638.25512-1-marco.cesati@gmail.com>
 <20210312082638.25512-2-marco.cesati@gmail.com>
 <20210315141414.GO2087@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210315141414.GO2087@kadam>
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
 Larry Finger <Larry.Finger@lwfinger.net>, Hans de Goede <hdegoede@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Mar 15, 2021 at 05:14:15PM +0300, Dan Carpenter wrote:
> On Fri, Mar 12, 2021 at 09:26:06AM +0100, Marco Cesati wrote:
> > diff --git a/drivers/staging/rtl8723bs/hal/HalBtc8723b1Ant.c b/drivers/staging/rtl8723bs/hal/HalBtc8723b1Ant.c
> > index ef8c6a0f31ae..87dc63408133 100644
> > --- a/drivers/staging/rtl8723bs/hal/HalBtc8723b1Ant.c
> > +++ b/drivers/staging/rtl8723bs/hal/HalBtc8723b1Ant.c
> > @@ -151,7 +151,7 @@ static u8 halbtc8723b1ant_BtRssiState(
> >  }
> >  
> >  static void halbtc8723b1ant_UpdateRaMask(
> > -	PBTC_COEXIST pBtCoexist, bool bForceExec, u32 disRateMask
> > +	struct BTC_COEXIST * pBtCoexist, bool bForceExec, u32 disRateMask
> 
> There is an extra space between the "* pBtCoexist" which checkpatch
> warned you about.  :/  It makes me sad that you did all this work
> without looking at the checkpatch output.
> 
> ERROR: "foo * bar" should be "foo *bar"
> #146: FILE: drivers/staging/rtl8723bs/hal/HalBtc8723b1Ant.c:154:
> +       struct BTC_COEXIST * pBtCoexist, bool bForceExec, u32 disRateMask
> 
> regards,
> dan carpenter

You are right, it was a fault of mine. However, I am sending another
patchset that fixes all POINTER_LOCATION errors in staging/rtl8723bs.

Marco


---- 
Marco Cesati, PhD
Dept. of Civil Engineering and Computer Science Engineering
Univ. of Rome Tor Vergata
via del Politecnico 1, I-00133 Rome, Italy
Tel. +39 06 7259 7389
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
