Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 407624749F
	for <lists+driverdev-devel@lfdr.de>; Sun, 16 Jun 2019 15:11:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D59E8203FB;
	Sun, 16 Jun 2019 13:11:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PkbmW4oiVaHd; Sun, 16 Jun 2019 13:11:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 999CD20380;
	Sun, 16 Jun 2019 13:11:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 297C41BF616
 for <devel@linuxdriverproject.org>; Sun, 16 Jun 2019 13:11:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 264A884B55
 for <devel@linuxdriverproject.org>; Sun, 16 Jun 2019 13:11:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dQcYs4ZhJVbe for <devel@linuxdriverproject.org>;
 Sun, 16 Jun 2019 13:11:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7934F84826
 for <devel@driverdev.osuosl.org>; Sun, 16 Jun 2019 13:11:50 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id c85so4175809pfc.1
 for <devel@driverdev.osuosl.org>; Sun, 16 Jun 2019 06:11:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=hxZ+Tk0X6SPqfPiZxIA7txr1wUPFjNoghrc0Yyk1PNQ=;
 b=uo2EMpLfGTxezUo9alrCiGtf8O0ESd4MXXvxtjgAYPYDzHa1MTki5GAz7pVg95r3R0
 i95S8LRgz8CGvAMmc2uUeXOfiWzzWyim2HOzYpcCjs2Tg/zl6zgX7zXSWFrHTNqnqroQ
 hoohG4GAEq0hUcWcV4BU72odZgoqetR1fjxHaQDWWZAHB0PFB8ziq2/ZyVe/K9VNEPAX
 pHk+/Soxafj6+Cl7pNh/FrGE1OzJZgYIN1VbKBsE90g4RdRsCGFnFY7Ugav8c1Oprhsl
 IRpFCCVuOe0yLAjh2cg6XQOuFtrbNEwm+fjnQMk7FxViRCG45cnMrI46PBWMzJkPyu2d
 1JqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=hxZ+Tk0X6SPqfPiZxIA7txr1wUPFjNoghrc0Yyk1PNQ=;
 b=F6Ogawg4Omr9vzQ4chDG9bW2Fn2u6ja4u0ROnjKaFxqIK+engDKOI4D+GMT+O//8JT
 r0HCEobKco4QvCcjCMowIOXPdSa9P/xRsn9Pi/LoY5n1QxGBj9g4fbK7LvIv3AUpvOaY
 MEEVC9Ai4R3jI5BimbN5WyX8x62Y1iFsrnVo0k/AlL+BHJPSWC2Gl6bo6uZynBt0Si/U
 tqKMlMxNya5xFCVFtSbL8SF3bVJ7sb1+yW0N7Ed2ITFHD/Nvi++ECoML7g3IkYObVcOv
 L6sFOTfpk44xPP7A41cfwYCjiCqNGfSXu+jBuZlWIC8elcFK9M446WfP68X37ynCUkld
 k28g==
X-Gm-Message-State: APjAAAW4zCJkm0grUv6VAxNY8eeZe9JtnxZUdZ+1Jky80gXbmZTkYmiW
 r4w21tC8QnSIRWV/3OaKkLw=
X-Google-Smtp-Source: APXvYqx1vNZbmGWsuMR4yX5Z4VKVvPaz584kQ/W9sIQv3cXofMflgQpUVJQ9iTy3eg1okt/QZRoSnw==
X-Received: by 2002:a17:90a:8415:: with SMTP id
 j21mr20906421pjn.21.1560690710016; 
 Sun, 16 Jun 2019 06:11:50 -0700 (PDT)
Received: from t-1000 (c-98-210-58-162.hsd1.ca.comcast.net. [98.210.58.162])
 by smtp.gmail.com with ESMTPSA id b15sm8442262pfi.141.2019.06.16.06.11.48
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 16 Jun 2019 06:11:49 -0700 (PDT)
Date: Sun, 16 Jun 2019 06:11:46 -0700
From: Shobhit Kukreti <shobhitkukreti@gmail.com>
To: Joe Perches <joe@perches.com>
Subject: Re: [PATCH v2] staging: rtl8723bs: Resolve checkpatch error "that
 open brace { should be on the previous line" in the rtl8723 driver
Message-ID: <20190616131145.GA30779@t-1000>
References: <20190615185355.GC10201@kroah.com>
 <1560634159-9015-1-git-send-email-shobhitkukreti@gmail.com>
 <1d668acbce4cc9759cc940f56016dc9437df5441.camel@perches.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1d668acbce4cc9759cc940f56016dc9437df5441.camel@perches.com>
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, Hans de Goede <hdegoede@redhat.com>,
 Bastien Nocera <hadess@hadess.net>, Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Jun 16, 2019 at 01:13:11AM -0700, Joe Perches wrote:
> On Sat, 2019-06-15 at 14:29 -0700, Shobhit Kukreti wrote:
> > Cleaned up the code from the following files to get rid of
> > check patch error "that open brace { should be on the previous line"
> 
> It's fine you are modifying brace styles, but:
> 
> > diff --git a/drivers/staging/rtl8723bs/os_dep/mlme_linux.c b/drivers/staging/rtl8723bs/os_dep/mlme_linux.c
> > index aa2499f..4631b68 100644
> > --- a/drivers/staging/rtl8723bs/os_dep/mlme_linux.c
> > +++ b/drivers/staging/rtl8723bs/os_dep/mlme_linux.c
> > @@ -46,8 +46,7 @@ void rtw_os_indicate_connect(struct adapter *adapter)
> >  	struct mlme_priv *pmlmepriv = &(adapter->mlmepriv);
> >  
> >  	if ((check_fwstate(pmlmepriv, WIFI_ADHOC_MASTER_STATE) == true) ||
> > -		(check_fwstate(pmlmepriv, WIFI_ADHOC_STATE) == true))
> > -	{
> > +		(check_fwstate(pmlmepriv, WIFI_ADHOC_STATE) == true)) {
> >  		rtw_cfg80211_ibss_indicate_connect(adapter);
> >  	}
> >  	else
> 
> the else should be on the same line as the close brace
> 
> > @@ -106,8 +105,9 @@ void rtw_reset_securitypriv(struct adapter *adapter)
> >  		adapter->securitypriv.ndisencryptstatus = Ndis802_11WEPDisabled;
> >  
> >  	}
> > -	else /* reset values in securitypriv */
> > -	{
> > +	else {
> > +		/* reset values in securitypriv */
> > +
> 
> and here.  etc.  Please change all instances appropriately.
Thank you for the feedback. I intented to do one kind of change in a
patch. This probably would need a patch set. Will edit appropriately. 

Best,
Shobhit Kukreti
> 
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
