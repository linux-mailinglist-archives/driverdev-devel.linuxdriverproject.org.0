Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CBB6A18559D
	for <lists+driverdev-devel@lfdr.de>; Sat, 14 Mar 2020 12:28:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 05B1287A7D;
	Sat, 14 Mar 2020 11:28:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pZa5AKE2Yk3G; Sat, 14 Mar 2020 11:28:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9B21487776;
	Sat, 14 Mar 2020 11:28:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 80CA21BF82F
 for <devel@linuxdriverproject.org>; Sat, 14 Mar 2020 11:28:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 73DD120428
 for <devel@linuxdriverproject.org>; Sat, 14 Mar 2020 11:28:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cxzKZe-OV0px for <devel@linuxdriverproject.org>;
 Sat, 14 Mar 2020 11:28:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f65.google.com (mail-pj1-f65.google.com
 [209.85.216.65])
 by silver.osuosl.org (Postfix) with ESMTPS id B32682040C
 for <devel@driverdev.osuosl.org>; Sat, 14 Mar 2020 11:28:22 +0000 (UTC)
Received: by mail-pj1-f65.google.com with SMTP id np16so5493344pjb.4
 for <devel@driverdev.osuosl.org>; Sat, 14 Mar 2020 04:28:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:subject:from:to:date:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=IEb+NSlMbsrypsWmkX+nuM5EY+ct1whAxHi5by7wFZk=;
 b=bG5aihcWf/+r0MsUj2isrV4f3QSpFroQialqMuYStk5Nevs/PLSH6f2w49GWMx/oP6
 G2MdC00xkDVCEADr0Rjp6z5PRXrNvhCBgrvybUrvH4yVOZZh4GS9qNPsTlUlZ7B+4Fev
 9VT71bq8ZUBkWy2isWKKxhVd2GqnDj/abb8FkanwvIqVSVBlYXXPBrO3P9qaOUKvrAOV
 5x9sgvgdOlhXYH8lPEK7hfNHKkhKgf5w6dLTb/V0Ns1TIfcsJFplgHxrVOaNvSsa2pWy
 Sv/vGKqaEOmcV4kIUnJaUSZQU6+cumfyNoLy6T3rP8xyGpb9jJXOF0Y+h07gSmgKJqlO
 tNCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=IEb+NSlMbsrypsWmkX+nuM5EY+ct1whAxHi5by7wFZk=;
 b=TycK3VUpJuV9xBH+YQruATTunLP7tzANyS1G2k0pxxceh4wtiLFpk941d4WnAYlf/0
 m2MuheUKFhOAn+zPXOuJqQyA/N2/Srq9y1jsgN47WuGawLBMot18JolTXntGawuiKIag
 9i5vmRtMOvBnPeoZ/UNtQAVBOtnnT882VMMRYVs93lr/6R95HE22rBBPsi9VEQ0yuzbz
 UzSSL9alOWpGrXhcTiZLjWZSukVbdZDGuf04+dOu7dG3d6MJeeuNc6HHadNIvVL4t7UJ
 GjJ0zOmocbCzzFZ5bj+LEZwAvIulFX8sc6u9BrKrBqOsqJrTxedfV9dWFhENUp5yYl4S
 PngA==
X-Gm-Message-State: ANhLgQ3JXlMCRrUz5F/ht9Cby74WerfkhLRTEl47MZn2Tb2jtq4ofVrY
 CzVmlOFNzk7fb37sx+fwXOY=
X-Google-Smtp-Source: ADFU+vvWDA/UB5PKw9LjOeGxLGURwiON+mQeVoXZ4PlIhdgEdD1da3aGdyT6lGwiv2m6wxkHaHO2lA==
X-Received: by 2002:a17:90a:c715:: with SMTP id
 o21mr15127998pjt.160.1584185301961; 
 Sat, 14 Mar 2020 04:28:21 -0700 (PDT)
Received: from Shreeya-Patel ([113.193.35.211])
 by smtp.googlemail.com with ESMTPSA id 8sm21886437pfp.67.2020.03.14.04.28.18
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 14 Mar 2020 04:28:21 -0700 (PDT)
Message-ID: <4deeaef8f8e0f23a9adbfd7d98840624e2994cf2.camel@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: rtl8723bs: rtw_mlme:
 Remove unnecessary conditions
From: Shreeya Patel <shreeya.patel23498@gmail.com>
To: Joe Perches <joe@perches.com>, gregkh@linuxfoundation.org, 
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, 
 outreachy-kernel@googlegroups.com, sbrivio@redhat.com,
 daniel.baluta@gmail.com,  nramas@linux.microsoft.com, hverkuil@xs4all.nl,
 Larry.Finger@lwfinger.net
Date: Sat, 14 Mar 2020 16:58:16 +0530
In-Reply-To: <25a1aca2c993ecb70ba7cd9c9e38bce9170a98b0.camel@perches.com>
References: <20200313102912.17218-1-shreeya.patel23498@gmail.com>
 <25a1aca2c993ecb70ba7cd9c9e38bce9170a98b0.camel@perches.com>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, 2020-03-13 at 14:21 -0700, Joe Perches wrote:

Hi Joe,

> On Fri, 2020-03-13 at 15:59 +0530, Shreeya Patel wrote:
> > Remove unnecessary if and else conditions since both are leading to
> > the
> > initialization of "phtpriv->ampdu_enable" with the same value.
> > Also, remove the unnecessary else-if condition since it does
> > nothing.
> 
> []
> > diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme.c
> > b/drivers/staging/rtl8723bs/core/rtw_mlme.c
> 
> []
> > @@ -2772,16 +2772,7 @@ void rtw_update_ht_cap(struct adapter
> > *padapter, u8 *pie, uint ie_len, u8 channe
> >  
> >  	/* maybe needs check if ap supports rx ampdu. */
> >  	if (!(phtpriv->ampdu_enable) && pregistrypriv->ampdu_enable ==
> > 1) {
> > -		if (pregistrypriv->wifi_spec == 1) {
> > -			/* remove this part because testbed AP should
> > disable RX AMPDU */
> > -			/* phtpriv->ampdu_enable = false; */
> > -			phtpriv->ampdu_enable = true;
> > -		} else {
> > -			phtpriv->ampdu_enable = true;
> > -		}
> > -	} else if (pregistrypriv->ampdu_enable == 2) {
> > -		/* remove this part because testbed AP should disable
> > RX AMPDU */
> > -		/* phtpriv->ampdu_enable = true; */
> > +		phtpriv->ampdu_enable = true;
> 
> This isn't the same test.
> 
> This could be:
>  	if ((!(phtpriv->ampdu_enable) && pregistrypriv->ampdu_enable ==
> 1)) ||
> 	    pregistrypriv->ampdu_enable == 2)
> 		phtpriv->ampdu_enable = true;
> 
> Though it is probably more sensible to just set
> phtpriv->ampdu_enable without testing whether or
> not it's already set:
> 
> 	if (pregistrypriv->ampdu_enable == 1 ||
> 	    pregistrypriv->ampdu_enable == 2)
> 		phtpriv->ampdu_enable = true;

But the else-if block which I removed in v2 of this patch had nothing
in the block.
It was not assigning any value to "phtpriv->ampdu_enable". ( basically
it was empty and useless)

Now as per your suggestion if I do the change then the value of
"phtpriv->ampdu_enable" will be changed to true when we have
"pregistrypriv->ampdu_enable == 2" condition. But in real it should be
the same as it was by default coming from the start of the function.
( This is because the else-if block was empty and doing nothing )

Please let me know if I was able to make you understand my point of
view here. Also, please correct me if I am wrong.


Thanks


> 
> 

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
