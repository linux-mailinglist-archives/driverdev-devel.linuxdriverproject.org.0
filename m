Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A6DD1A240
	for <lists+driverdev-devel@lfdr.de>; Fri, 10 May 2019 19:23:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 888C7889C1;
	Fri, 10 May 2019 17:23:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UwoVyT7D4Ddb; Fri, 10 May 2019 17:23:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 934B3889B1;
	Fri, 10 May 2019 17:23:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 064EB1BF5DA
 for <devel@linuxdriverproject.org>; Fri, 10 May 2019 17:23:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id EFF9B87A77
 for <devel@linuxdriverproject.org>; Fri, 10 May 2019 17:23:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id r4FmULFuyJjP for <devel@linuxdriverproject.org>;
 Fri, 10 May 2019 17:23:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 489A3879F1
 for <devel@driverdev.osuosl.org>; Fri, 10 May 2019 17:23:14 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id g9so3555263pfo.11
 for <devel@driverdev.osuosl.org>; Fri, 10 May 2019 10:23:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=wKTqfFOYYmSMRtaxYzh3rDlijcoMoye7aE2PTxLgk+M=;
 b=t1dJasqSSqrY0/mFV00RuccD2sYzP9oFsunitbSpAuSt1fNb9B4gI6obiOEsrvCosV
 XetVN/B4ciIH1wZX1get32F9AQd8t2a9d3gDP6AsPv3LB7INIxqdRgULFZOg05v8SUV2
 KWoVRoYp6OlQIjeJLPPgstr3MrvBzHD8WilxhrUTrcyH4jaP8+SgYt9Pp++Gkn017VTz
 QVFigekAt09Z0tBuJPkW4jcL2JtPYquudkMRHyi5UNokSas+Y3ob+mQxcPk1CLxOGQZw
 jtnaKMmOT+VLV+ndXd/zaRkkQpu4bTgVytF0r6ZcaddFPo5gAeOqVEYO0OBPU4HQwaVd
 Y4gQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=wKTqfFOYYmSMRtaxYzh3rDlijcoMoye7aE2PTxLgk+M=;
 b=iQxIQOy+qpmDmH7I9wof3+Ac45xL0MZ7nvvj7Wsm20lneDG5QOTn70HMoLdK94wptw
 YY7XF8ZncW3mwDqOwbJAbWC80ITfNZj2MAAG1j+pcLQQQPLVNttMIIoTmW1Q5Us0zWU7
 xLA7u630DXfAve0z5/lenE4cRa/Y1nwHnwDIpmjcnqKtXU+TPTe/UAXCM5SZxq+1FMWP
 bxqzqzqUResY56s5DRb4JyWSxuhU4bM5Q1Wm4eHeoWO5wX9ny/mE7cTW7gacaYVN+Xg1
 Sf+WquXwGJvlD5XCusEl3BhKFyAibEUb3KBpUbieUx/ky0BGYF+8MZAA4ZZKVGMRSVa+
 fIzA==
X-Gm-Message-State: APjAAAU4x4R3klMGJHVc+88LJdQ15AdNkhC6lrtRA5Se3LQ8wq1l0tvM
 9zV6C1fQw3kJwbtkjOAWdus=
X-Google-Smtp-Source: APXvYqz/c5oedmTv7OXut2ZRscRfwnPG32MfuwyJponuIrspwqX1LA8WYBs8p7OnuJHVzPSao12rNA==
X-Received: by 2002:aa7:9206:: with SMTP id 6mr15840843pfo.71.1557508993973;
 Fri, 10 May 2019 10:23:13 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.92.73])
 by smtp.gmail.com with ESMTPSA id z9sm6220113pga.92.2019.05.10.10.23.10
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 10 May 2019 10:23:12 -0700 (PDT)
Date: Fri, 10 May 2019 22:53:08 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Dan Carpenter <dan.carpenter@oracle.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Tim Collier <osdevtc@gmail.com>,
 Chris Opperman <eklikeroomys@gmail.com>, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH] staging: wlan-ng: collect return status without variable
Message-ID: <20190510172308.GA3075@hari-Inspiron-1545>
References: <20190510023900.GA4390@hari-Inspiron-1545>
 <20190510105754.GA18105@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190510105754.GA18105@kadam>
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

On Fri, May 10, 2019 at 01:57:54PM +0300, Dan Carpenter wrote:
> On Fri, May 10, 2019 at 08:09:00AM +0530, Hariprasad Kelam wrote:
> > diff --git a/drivers/staging/wlan-ng/cfg80211.c b/drivers/staging/wlan-ng/cfg80211.c
> > index 8a862f7..5dad5ac 100644
> > --- a/drivers/staging/wlan-ng/cfg80211.c
> > +++ b/drivers/staging/wlan-ng/cfg80211.c
> > @@ -231,17 +231,12 @@ static int prism2_set_default_key(struct wiphy *wiphy, struct net_device *dev,
> >  {
> >  	struct wlandevice *wlandev = dev->ml_priv;
> >  
> > -	int err = 0;
> > -	int result = 0;
> > -
> > -	result = prism2_domibset_uint32(wlandev,
> > -		DIDMIB_DOT11SMT_PRIVACYTABLE_WEPDEFAULTKEYID,
> > -		key_index);
> > -
> > -	if (result)
> > -		err = -EFAULT;
> > -
> > -	return err;
> > +	if (prism2_domibset_uint32(wlandev,
> > +				   DIDMIB_DOT11SMT_PRIVACYTABLE_WEPDEFAULTKEYID,
> > +				   key_index))
> > +		return -EFAULT;
> > +	else
> > +		return 0;
> 
> We should just preserve the error codes from prism2_domibset_uint32().
> 
> 	return prism2_domibset_uint32(dev->ml_priv,
> 				DIDMIB_DOT11SMT_PRIVACYTABLE_WEPDEFAULTKEYID,
> 				key_index);
>
   prism2_domibset_uint32 function can return  -ENODEV,-EPERM,-EBUSY if
   fail  case.

   If we observe the pattern of calling this function,we can find
   
   "return -EFAULT on failure and 0 on success".

   Due to this we  can not collect return status directly.
> regards,
> dan carpenter
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
