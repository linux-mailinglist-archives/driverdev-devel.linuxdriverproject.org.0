Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D960340C0C
	for <lists+driverdev-devel@lfdr.de>; Thu, 18 Mar 2021 18:45:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B2A2A8414A;
	Thu, 18 Mar 2021 17:45:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eoHZq5oOXU4w; Thu, 18 Mar 2021 17:45:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0DC5D84174;
	Thu, 18 Mar 2021 17:45:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0E44C1BF3D0
 for <devel@linuxdriverproject.org>; Thu, 18 Mar 2021 17:45:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7A86A84148
 for <devel@linuxdriverproject.org>; Thu, 18 Mar 2021 17:45:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5US5Ejbq1-Eb for <devel@linuxdriverproject.org>;
 Thu, 18 Mar 2021 17:45:04 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com
 [IPv6:2a00:1450:4864:20::634])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BDAB68414A
 for <devel@driverdev.osuosl.org>; Thu, 18 Mar 2021 17:45:03 +0000 (UTC)
Received: by mail-ej1-x634.google.com with SMTP id t18so5283636ejc.13
 for <devel@driverdev.osuosl.org>; Thu, 18 Mar 2021 10:45:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=ioOO0LiL4FNkPW514HE/8fYLRbusHR/SGGNRs1YWCtY=;
 b=gFv9a9LL7Uc3hgkgq3sWblz9gZC5lnLx1vgq2EHPNCAKExckj2zGmFfveD46J42GLe
 8l7wIUt5dq3GCEbjiv8jBL/PEhIn+f3Ib9FzZPDOS2fTeH+hg5FqxxNsTeh8d3I+MXon
 4QXfWZa8eoySo8w3FrZKAWUhxbBI8kVCB/Ek3Ov6c/h0ePbzZAW7fo1fP6y4Z3tI8EB9
 UP2JYo+QpxUP10+dwr9eXljyNR/TWKiJwAzHNEjj6bXWZWU8cGfFUb8RzBIy9f9NXULQ
 5BhHlgDObs9c16zGH33EP+vZXSRCIEG1jJqX0rEcAohfKdEkV1A07S//86m3s8bIYjHv
 pzEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=ioOO0LiL4FNkPW514HE/8fYLRbusHR/SGGNRs1YWCtY=;
 b=Lrx1NHqt0z1lpme1jymFM8bVhhTsyOk1TsX1GtKYfgZv5XleXysr0gPohkGEh7jhP0
 czlQmvwtVmb/Mf5i4ON5bZ+UcF5a0QKsldElzTdL3spQhAIP5fVi+aNbWtOvCNFI3bok
 b+QqsjzGT8WYwNzkzhzSPdENle0Gh9zO5evMJVYje0CQU9ccxbbO3DbTexNUg+zQrZ23
 bMBoDtqHSrW21bbtZBFyQhR5dF8yQtesPuUoJSwDuMdEng5q6AFz0rbtfTcZZOlBMxO0
 3Ryrvp14k9hQcD5hp2+v0JSGDV6oaM7Qmj93ZvYfvjv0pDOi9WQQE3TnV+gidzeLL/vt
 drQw==
X-Gm-Message-State: AOAM530rY5PMB+V+MFySv4YRXmj69chw3SuvBAd1Ur0izizIunQ8zfFf
 22xc1g+mXm9hrmQrsPeGVbY=
X-Google-Smtp-Source: ABdhPJyt2UFcZKA9mjfBndm2WbEOtaDIVnjp7bOFLNe8c1WOzzRxgjbRuvv+D3bpc0o9OZyTTb3DKA==
X-Received: by 2002:a17:906:a51:: with SMTP id
 x17mr42668575ejf.25.1616089502073; 
 Thu, 18 Mar 2021 10:45:02 -0700 (PDT)
Received: from cesati.gmail.com (93-48-145-141.ip257.fastwebnet.it.
 [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id w18sm2359625ejn.23.2021.03.18.10.45.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Mar 2021 10:45:01 -0700 (PDT)
Date: Thu, 18 Mar 2021 18:45:13 +0100
From: Marco Cesati <marcocesati@gmail.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH 01/43] Staging: rtl8723bs: fix names in rtw_mlme.h
Message-ID: <20210318174513.7ksachb6lfo3lxst@cesati.gmail.com>
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

OK, I'll fix it. Thanks,

Marco

> 
> >  	GHZ24_50 = 0,
> >  	GHZ_50,
> >  	GHZ_24,
> 
> regards,
> dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
