Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1971133D4F3
	for <lists+driverdev-devel@lfdr.de>; Tue, 16 Mar 2021 14:37:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id ECFDA83D81;
	Tue, 16 Mar 2021 13:36:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DdoW6caEUtz7; Tue, 16 Mar 2021 13:36:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4DF3A83D80;
	Tue, 16 Mar 2021 13:36:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 52B481BF5B4
 for <devel@linuxdriverproject.org>; Tue, 16 Mar 2021 13:36:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4239F4300F
 for <devel@linuxdriverproject.org>; Tue, 16 Mar 2021 13:36:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Td7bgJFThzIX for <devel@linuxdriverproject.org>;
 Tue, 16 Mar 2021 13:36:45 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com
 [IPv6:2a00:1450:4864:20::430])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9089242D1D
 for <devel@driverdev.osuosl.org>; Tue, 16 Mar 2021 13:36:45 +0000 (UTC)
Received: by mail-wr1-x430.google.com with SMTP id d15so10474865wrv.5
 for <devel@driverdev.osuosl.org>; Tue, 16 Mar 2021 06:36:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=7bLhDPuLSWfk3cqi2O7Xv2xxQBRYGHZeZiusa5rwe4c=;
 b=emDDfnDkZjL5XROGG8NZ0S6eXGoBK42uXSn4PwxAtCFdKRWSeXpnxiqXZbcHLgTDwn
 WbXrCMOmzzFxRA+gTc4tuG2qVsiEHRR4QtFMHWsDei2xQtxOQWCY5mXCuNigLEqoeyrR
 olqfMy2S2C/TklVqX3tP6ArISoKpsAJaZsou1S+kEq8vrcwHcdGPzOKRJU0E8djsqo0K
 1AvSr+52ZCMU0us5YCmrKKt3ola+fyp6zgAxe7ovlAKHLTsNAn9VaOlLhl1PASPTd7iN
 VF75QxzZxqAX6S8wq+hdzEQgpEldVonE/P3k6BT2lLLI4etEoqwVbfan8OCctqR0R2Ct
 e/nQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=7bLhDPuLSWfk3cqi2O7Xv2xxQBRYGHZeZiusa5rwe4c=;
 b=CsEKW7Uc5kSfqu/RCdjpG7tDGuPQhZrIAZu0PH0vW+xMbTzUlEH5naFY1KRsssQPm/
 S5/zCfjR+32xzy/aUaKVUG+h+3Ab0BxEJyFkbK59DvFkbW09v804Qww7PgVve9lh1KPH
 LsWkvFDRKbBhpo5/63BLWl8qpYIve0H9jUe0e455jYvq7g71z6qQixbloR6/ss9aBO5j
 2e1hrmbu1VXddZ33RzQUZVT8nKek+5I+xrtf/k74N1/+L+Pg9GbzNwlv3vbVs2TNJRMn
 B4pTy52TRPdyvPtDwxQyIzhR6xRVUYeM5toJQve5EkRFflAollBioIAzzROwHvxNeN1e
 ybRA==
X-Gm-Message-State: AOAM53047RU1Hk2QMsBSjBxXHYJO34ny+MrRFtLgwK7Mh7IhGNTRmTVB
 6+cO3EFAMzxzm3ONhwl/Ro0=
X-Google-Smtp-Source: ABdhPJxwUCtxObCyAsCDfc6iKpAkZsob7P2k/VT17EV8+d65j/GD8O6eDW33c1ggIUQ1AgRb2QdUsA==
X-Received: by 2002:adf:c186:: with SMTP id x6mr4981647wre.253.1615901803815; 
 Tue, 16 Mar 2021 06:36:43 -0700 (PDT)
Received: from agape.jhs ([5.171.72.71])
 by smtp.gmail.com with ESMTPSA id 21sm3279133wme.6.2021.03.16.06.36.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Mar 2021 06:36:43 -0700 (PDT)
Date: Tue, 16 Mar 2021 14:36:39 +0100
From: Fabio Aiuto <fabioaiuto83@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [PATCH 05/15] staging: rtl8723bs: remove unused code blocks
 conditioned by never set CONFIG_PM
Message-ID: <20210316133638.GA1465@agape.jhs>
References: <cover.1615801721.git.fabioaiuto83@gmail.com>
 <77ea39e63246fa4756afcf2bdea573f43fefc74c.1615801721.git.fabioaiuto83@gmail.com>
 <YFCY564YYio8lkUT@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YFCY564YYio8lkUT@kroah.com>
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
 kernelnewbies@kernelnewbies.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Mar 16, 2021 at 12:39:19PM +0100, Greg KH wrote:
> On Mon, Mar 15, 2021 at 11:15:02AM +0100, Fabio Aiuto wrote:
> > remove conditional code blocks checked by unused CONFIG_PM
> > 
> > cleaning required in TODO file:
> > 
> > find and remove code blocks guarded by never set CONFIG_FOO defines
> > 
> > Signed-off-by: Fabio Aiuto <fabioaiuto83@gmail.com>
> > ---
> >  drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c | 8 --------
> >  1 file changed, 8 deletions(-)
> > 
> > diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c b/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
> > index 2ff71d001c07..5748e1c1a25c 100644
> > --- a/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
> > +++ b/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
> > @@ -3198,14 +3198,6 @@ static void rtw_cfg80211_preinit_wiphy(struct adapter *padapter, struct wiphy *w
> >  	wiphy->flags |= WIPHY_FLAG_HAS_REMAIN_ON_CHANNEL;
> >  	wiphy->flags |= WIPHY_FLAG_OFFCHAN_TX | WIPHY_FLAG_HAVE_AP_SME;
> >  
> > -#if defined(CONFIG_PM)
> > -	wiphy->max_sched_scan_reqs = 1;
> > -#endif
> > -
> > -#if defined(CONFIG_PM)
> > -	wiphy->wowlan = &wowlan_stub;
> > -#endif
> 
> How this is "unused"?  This is a real config option, did you just change
> the logic here?
> 
> thanks,
> 
> greg k-h

Hi Greg,

ignore this patch. I missed that definition of PM config option.
I dropped it off my own local repo.

Thank you,

fabio
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
