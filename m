Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CA321A71B
	for <lists+driverdev-devel@lfdr.de>; Sat, 11 May 2019 09:58:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 745B18636D;
	Sat, 11 May 2019 07:58:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rbr5f2HLBeJg; Sat, 11 May 2019 07:58:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D9E0B86360;
	Sat, 11 May 2019 07:58:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 23EBA1BF2B5
 for <devel@linuxdriverproject.org>; Sat, 11 May 2019 07:58:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 20D568671E
 for <devel@linuxdriverproject.org>; Sat, 11 May 2019 07:58:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2IDIjS+fWWTc for <devel@linuxdriverproject.org>;
 Sat, 11 May 2019 07:58:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 170B1866B1
 for <devel@driverdev.osuosl.org>; Sat, 11 May 2019 07:58:20 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id a3so4134284pgb.3
 for <devel@driverdev.osuosl.org>; Sat, 11 May 2019 00:58:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=uQaA5fcRvs5IaqVA9AoxeTKiHpRpWKn2OxP1/dwsWz4=;
 b=Up8YnEAFqQ27j6vsFXS8mDUMbFQj58WAXF+diuSBBfP5dtRoqjcP8pbM0d/BszKOx4
 rhLH88f2b+O3GXwVWOwMwcNm2sbkzash9yuEPgUIMwmKNexrQW+GoOnt8yHHmfoj7wCB
 yDWmiJYAsXHISW5+N9TTLGbWKIPI7VALac9J78ycqsn1SYHPJII6C8ZkUAaZAeAm7UNl
 /cUP0si1Khgzdx+1tTSUCyjbpZeZ60JR7SWJoBiUgs8fUecrHbybefAV4CJ7O29NhKxa
 2phmZE9LRgIX/b934HiGE7NrFBYW2GdXKCKWLaI1q8Mx5epjKX7dA13yY7mfJD5bPKGR
 UpXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=uQaA5fcRvs5IaqVA9AoxeTKiHpRpWKn2OxP1/dwsWz4=;
 b=cgHu8pAcE00kceFLz5lwmh0qg97dPiQlAzSwVjOAvNeSPJRTM2UMcdGGipgsUYDkPX
 XjFStBsS5atdu0B0jGHDBLw72Hg6PUTwFSFS1i9qZBt6GZtVt+0/x8ykZgp+Q2DbVvkG
 RRBPMMHH6eqHylkGeKQrrA2w4Bl0b+QLczTyRCAnIPdSzsYGEokDZNibe7Da5cB3Z2ge
 vPsnme//8jKNgJNrcHTV1K3jwUMeghF8j335opOaMVxH3fjvZRmBBGOBwrmws4jYfsne
 jPsGsQm+8DJYVyAbBOz3TOmGn8PLipwNKq4EBX7IlLjmKnB0oUJV/OOBc6uBuU0C0XDQ
 kxOA==
X-Gm-Message-State: APjAAAU0SBlsim4p4U8J6NN3CUbWeufWTmSrtbjcezR5TznIazVrcqkg
 drnTL3uyCjrOYSzs2Tk+SF4=
X-Google-Smtp-Source: APXvYqyA4+E/kRijAqizOl5z6WSpDlb8MgZUtaK+ymaQrNGDYyz9PO5lPtqSpi//yp+ljP4P5zVEDw==
X-Received: by 2002:a62:6f02:: with SMTP id k2mr20548059pfc.136.1557561499736; 
 Sat, 11 May 2019 00:58:19 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.92.73])
 by smtp.gmail.com with ESMTPSA id c14sm7970466pgl.43.2019.05.11.00.58.16
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 11 May 2019 00:58:18 -0700 (PDT)
Date: Sat, 11 May 2019 13:28:13 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Dan Carpenter <dan.carpenter@oracle.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Tim Collier <osdevtc@gmail.com>, Chris Opperman <eklikeroomys@gmail.com>,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] staging: wlan-ng: collect return status without variable
Message-ID: <20190511075813.GA17352@hari-Inspiron-1545>
References: <20190510023900.GA4390@hari-Inspiron-1545>
 <20190510105754.GA18105@kadam>
 <20190510172308.GA3075@hari-Inspiron-1545>
 <20190510184011.GE18105@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190510184011.GE18105@kadam>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, May 10, 2019 at 09:40:11PM +0300, Dan Carpenter wrote:
> On Fri, May 10, 2019 at 10:53:08PM +0530, Hariprasad Kelam wrote:
> > On Fri, May 10, 2019 at 01:57:54PM +0300, Dan Carpenter wrote:
> > > On Fri, May 10, 2019 at 08:09:00AM +0530, Hariprasad Kelam wrote:
> > > > diff --git a/drivers/staging/wlan-ng/cfg80211.c b/drivers/staging/wlan-ng/cfg80211.c
> > > > index 8a862f7..5dad5ac 100644
> > > > --- a/drivers/staging/wlan-ng/cfg80211.c
> > > > +++ b/drivers/staging/wlan-ng/cfg80211.c
> > > > @@ -231,17 +231,12 @@ static int prism2_set_default_key(struct wiphy *wiphy, struct net_device *dev,
> > > >  {
> > > >  	struct wlandevice *wlandev = dev->ml_priv;
> > > >  
> > > > -	int err = 0;
> > > > -	int result = 0;
> > > > -
> > > > -	result = prism2_domibset_uint32(wlandev,
> > > > -		DIDMIB_DOT11SMT_PRIVACYTABLE_WEPDEFAULTKEYID,
> > > > -		key_index);
> > > > -
> > > > -	if (result)
> > > > -		err = -EFAULT;
> > > > -
> > > > -	return err;
> > > > +	if (prism2_domibset_uint32(wlandev,
> > > > +				   DIDMIB_DOT11SMT_PRIVACYTABLE_WEPDEFAULTKEYID,
> > > > +				   key_index))
> > > > +		return -EFAULT;
> > > > +	else
> > > > +		return 0;
> > > 
> > > We should just preserve the error codes from prism2_domibset_uint32().
> > > 
> > > 	return prism2_domibset_uint32(dev->ml_priv,
> > > 				DIDMIB_DOT11SMT_PRIVACYTABLE_WEPDEFAULTKEYID,
> > > 				key_index);
> > >
> >    prism2_domibset_uint32 function can return  -ENODEV,-EPERM,-EBUSY if
> >    fail  case.
> > 
> >    If we observe the pattern of calling this function,we can find
> >    
> >    "return -EFAULT on failure and 0 on success".
> > 
> >    Due to this we  can not collect return status directly.
> 
> Yes, I know this code is full of nonsense.
> 
> It shouldn't just always return -EFAULT, it should preserve the correct
> error code.  This is only called from rdev_set_default_key() if you want
> to check the caller.
> 
> regards,
> dan carpenter
 Yes , Caller not particular about -EFAULT,there is no
 need of masking all errors with EFAULT in  fail case. 

 We can directly collect the return status.
 Will  resend the patch with suggested changes

 Thanks,
 Hariprasad k
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
