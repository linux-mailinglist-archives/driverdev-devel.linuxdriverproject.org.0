Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 31A9A340C06
	for <lists+driverdev-devel@lfdr.de>; Thu, 18 Mar 2021 18:43:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9398A4DC1A;
	Thu, 18 Mar 2021 17:43:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Yrn0j6pVC41b; Thu, 18 Mar 2021 17:43:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 895454C4BF;
	Thu, 18 Mar 2021 17:43:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 165E41BF3D0
 for <devel@linuxdriverproject.org>; Thu, 18 Mar 2021 17:43:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0F328400B5
 for <devel@linuxdriverproject.org>; Thu, 18 Mar 2021 17:43:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KOv8ng7BHb6n for <devel@linuxdriverproject.org>;
 Thu, 18 Mar 2021 17:43:26 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com
 [IPv6:2a00:1450:4864:20::435])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 51307400A4
 for <devel@driverdev.osuosl.org>; Thu, 18 Mar 2021 17:43:26 +0000 (UTC)
Received: by mail-wr1-x435.google.com with SMTP id v4so6434327wrp.13
 for <devel@driverdev.osuosl.org>; Thu, 18 Mar 2021 10:43:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=fJ7yn16GOXYvzOvHv/S6FiEQye9fBshmq9fDqn5U6oA=;
 b=rkbSkxfasoAHyohebT2UzNNpTc9o2GBqg/X5ddquXlNFaNm5H/XnNYGhiCiJ+Oiq6J
 Cw/BlZsA4vrqiIrNnNbh6VvXMiqP6CkW1HkJtH0SD0nYuW4noxo9c6kyysM4OH/3Nh/y
 gfp4Rgabao3wO3A9B7N11r3ithByfh/KsL1cK6tdpJOuqukcH4ypumHzPKfwLnV82Q/I
 qnIKK1PK6B+4ug3ZE4J8YdI8QusCnn913GEyGZJL0uw8jAAZMrICPcZnFMQCAEl+CUSE
 0l4wNFPZJWmg/PUGMJFA6UrXFPC1pYaR7cfUJCxdoMoKeXm/cDuowfF8YpYvnQyoARIx
 Gjdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=fJ7yn16GOXYvzOvHv/S6FiEQye9fBshmq9fDqn5U6oA=;
 b=TSThjdssw1ez9kPscIL66EsiyD9Thlr2cZ6xicoYoGeZg7rGCzEVDTON4Ga45E6khV
 Sz3mbZali/m2WAI33AgozZUBlwGb823MaSXguDV1FIWtVz/UQYnJw3ZhssUQfq4lHShX
 6bO2GAwuU2Z4FsNrLsUpj1yJfA8I0vc1y7lttzxut/OJJMKWHGBNANtKys/2mJ7XAo8D
 zR2R9D1zlEC/TMjG+PqP58t82UujoAudkgAhf777U/nGguVxMKRzKiJ6+dGP6d88ZjN6
 /s1M3ruBcWNr7784TC29qmV9UjjXS4CKy4MN3c8N0NQiaU8yOO+UZ2H0xdnEb2AfY4XL
 Jcxg==
X-Gm-Message-State: AOAM531zTM0sWhDtLfqqplzPtd39ygtKAfM6bDr4yfLn94cjLXl2KqwV
 ghkZ8p8Pxz1paH9q9MZYx/s4NCzKokc=
X-Google-Smtp-Source: ABdhPJz4YDtBa8Qx4TOmy0FlWap9PAywE8QqdjEuiyy4rWDjYAj/FqpYntdDgg4DLFATTV7BVGWygA==
X-Received: by 2002:a5d:58c9:: with SMTP id o9mr410773wrf.181.1616089404641;
 Thu, 18 Mar 2021 10:43:24 -0700 (PDT)
Received: from cesati.gmail.com (93-48-145-141.ip257.fastwebnet.it.
 [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id y10sm3915908wrl.19.2021.03.18.10.43.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Mar 2021 10:43:24 -0700 (PDT)
Date: Thu, 18 Mar 2021 18:43:35 +0100
From: Marco Cesati <marcocesati@gmail.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH 01/43] Staging: rtl8723bs: fix names in rtw_mlme.h
Message-ID: <20210318174335.tjmulpy4q43qfpte@cesati.gmail.com>
References: <20210317222130.29528-1-marcocesati@gmail.com>
 <20210317222130.29528-2-marcocesati@gmail.com>
 <20210318121604.GE2087@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210318121604.GE2087@kadam>
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

On Thu, Mar 18, 2021 at 03:16:04PM +0300, Dan Carpenter wrote:
> On Wed, Mar 17, 2021 at 11:20:48PM +0100, Marco Cesati wrote:
> > diff --git a/drivers/staging/rtl8723bs/include/rtw_mlme.h b/drivers/staging/rtl8723bs/include/rtw_mlme.h
> > index 1ebc1e183381..ffcceb1fdde6 100644
> > --- a/drivers/staging/rtl8723bs/include/rtw_mlme.h
> > +++ b/drivers/staging/rtl8723bs/include/rtw_mlme.h
> > @@ -81,13 +81,13 @@ enum dot11AuthAlgrthmNum {
> >  };
> >  
> >  /*  Scan type including active and passive scan. */
> > -enum RT_SCAN_TYPE {
> > +enum rt_scan_type {
> >  	SCAN_PASSIVE,
> >  	SCAN_ACTIVE,
> >  	SCAN_MIX,
> >  };
> >  
> > -enum  _BAND {
> > +enum  _band {
> 
> _band is a bad name.

OK, I'll fix it.

Marco

> 
> >  	GHZ24_50 = 0,
> >  	GHZ_50,
> >  	GHZ_24,
> 
> regards,
> dan carpenter

-- 

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
