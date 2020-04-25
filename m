Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 293631B86EC
	for <lists+driverdev-devel@lfdr.de>; Sat, 25 Apr 2020 16:08:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D0B4B20509;
	Sat, 25 Apr 2020 14:02:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iyAl4Ggs+drp; Sat, 25 Apr 2020 14:02:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 3C97A2038D;
	Sat, 25 Apr 2020 14:02:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6F2601BF30E
 for <devel@linuxdriverproject.org>; Sat, 25 Apr 2020 14:02:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 5451A203A7
 for <devel@linuxdriverproject.org>; Sat, 25 Apr 2020 14:02:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VjZ2lsYGL3Bo for <devel@linuxdriverproject.org>;
 Sat, 25 Apr 2020 14:02:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.17.21])
 by silver.osuosl.org (Postfix) with ESMTPS id 103FB2038D
 for <devel@driverdev.osuosl.org>; Sat, 25 Apr 2020 14:02:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1587823359;
 bh=cbbVI1PGCNAqbeyhd0rn3+oxRl+wxXYseCxr5QBOBU0=;
 h=X-UI-Sender-Class:Date:From:To:Cc:Subject:References:In-Reply-To;
 b=W01P/S7JvlociG9FeQ4GrGUrkdfG1pKgbWIQDCeMEt3qaSoP15oRM3VwsiLdMrSzS
 PS0ZaJ1Ssryu3m4IJoNtoXc/iXxxeF5nxy+Is5ZSrLEkY4jNCRjAHl88GpL2gMeKfS
 MIcDgF7SVwkAYa7bCP3w7hSJAx3lhX1foFDXVRbw=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from ubuntu ([83.52.229.196]) by mail.gmx.com (mrgmx104
 [212.227.17.174]) with ESMTPSA (Nemesis) id 1MhlGq-1ixhSp2JcW-00dn93; Sat, 25
 Apr 2020 16:02:39 +0200
Date: Sat, 25 Apr 2020 16:02:37 +0200
From: Oscar Carter <oscar.carter@gmx.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH v2] staging: vt6656: Add formula to the vnt_rf_addpower
 function
Message-ID: <20200425140237.GB3213@ubuntu>
References: <20200423170557.10401-1-oscar.carter@gmx.com>
 <20200425105714.GA2071664@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200425105714.GA2071664@kroah.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Provags-ID: V03:K1:Azk07uiBcDqWvl5IdR2SJ0a5orfygJTMkzEvVInPXE/rufeIZw7
 +ONWWNso4Gqutk6/xuv2Boky+OMDG/cSxFy5e36//K2AuTFzmyCmRg6NvTvvwx3D2zgQGwN
 FfCxUsf7DERunEQ1miLQ7P76b3UfhleohSoxDZgdkiP1fUDLY8gwEyBBmDzj90edfJNacEK
 m8zZ7jf/Ixb9p1TdpUAhw==
X-UI-Out-Filterresults: notjunk:1;V03:K0:nAjiWf6LWYs=:PG/MUaPGxZ06hcvjWN2f8U
 jBkRp0WLdpdYsP0b8IPRHiU0qq/xBcSq0yCLf2Bhd52dIQ/bWx7CXFiBDFNYjg7eikTZJAxG4
 wQbjhlRWJcSRpdwMCptGL2vo+6LffaOqOcci3OhROj7juUL1gEXVLoNhOTdsXcjSu6zMMfGCp
 WiE0kLdYb57V44aZGB/vcMfThS5aRGxdxCxQJ+23gaGidW/IsgVOYENEsdmJZiDldymSvASS1
 zFvIjhtxa1xHkKeI4holYEibNc4n9F1n0toTVMckCJ8yfji+dkt4t+3TiPm43REYQxLW/5zOJ
 4KXrUpc1GMyvjYNC2TgpjlEZ1Mqnu3J1goqSSHQpnlWT27sh/PBKAUxnr9iwKEkGIafmD3+E5
 wQO8GPFahn0IyBQMRZmATPB5vt2LriJk+gtjj5CIJJ1RUgytwiS/ZmORU1KNpwtuwh4LYo2KD
 JspDnhicXL0YLFvfL5WibN1kLh54DNu97rto+dEY3ToN4dYKPM+2eKdX2XAJFyszjyGCThVKC
 gJkvxN7QtyFqavIFUbKtU3GPAIiYe2Ch0JhycYBDc0qbSfRoXzYjHHi2NS0LdS0kfd6ApqRLn
 /4jIjaGhE/xl+M/+8MUEstvumpHzRlX0oBRe/l3n9teGalJTuOMMT9/dTSl4/t3uZvN73J1za
 ZrTU7JI0rS7mvNA/LyJnGeNWmDWWAW5iENJ5GO7H5jI3epH9sSNDtJzXyQ5rshOyp03290zQe
 J+i8pTPq8Jc6Zdj+Yp0u7JlMx782ZX04+Z8ven9+J3YxNjgRdjDE2rIitJogZpVAJ5hserVHa
 tGIa03QyWHi+6gCs9bXlJlWxOlmcYMXOwZEwNYdRgiv+yJhKxAC99CFJGgMEegWp3j0JGkTjR
 ADOSbLAQ4vQK1vDC7GiqulOSfdaCnPOQ1rGrPFJ7ETdYR3aoEBc4YUlObiONRbEcr4KJWE4od
 ivU5/AgeeIVem7Ipkd/wMuWFMuTWQ510pAfTjmosglKw4ERKsHK1dJyueTEEfdHp5E8HTMZKK
 itPcNDnr6aXaI8kWwwoCA0mpFzwfUW1PHRG+aealEpujwaJ7eKPg1xXJiCjd7DkBhDGGAEC6t
 By1o+gtnLlBLbaf2g4q53HnppZjFFw8d1BHsa5pu+0/MrJpoiWS9c16X0Vmmccgeq6PGJTn5x
 5sChTGqEfFUs/XtR4vxrZjRKXuX3zi/boMvSrmabjrJ2FRtgEscSrdPKftHMNelaw+O2VKBCP
 7w3Q24ZwGdkTsehrK
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
Cc: devel@driverdev.osuosl.org, Oscar Carter <oscar.carter@gmx.com>,
 Malcolm Priestley <tvboxspy@gmail.com>, linux-kernel@vger.kernel.org,
 Forest Bond <forest@alittletooquiet.net>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Apr 25, 2020 at 12:57:14PM +0200, Greg Kroah-Hartman wrote:
> On Thu, Apr 23, 2020 at 07:05:57PM +0200, Oscar Carter wrote:
> > Use a formula to calculate the return value of the vnt_rf_addpower
> > function instead of the "if" statement with literal values for every
> > case.
> >
> > Signed-off-by: Oscar Carter <oscar.carter@gmx.com>
> > ---
> > Changelog v1 -> v2
> > - Change the type of "base" variable from s32 to int as Dan Carpenter
> >   suggested.
> > - Remove the "--" postoperator and replace with (base - 1) as Dan
> >   Carpenter suggested. Also, as this expression has a minus before the
> >   parenthesis, remove it an apply the minus operator changing the sign of
> >   "base" and literal "1".
> >
> >  drivers/staging/vt6656/rf.c | 20 +++-----------------
> >  1 file changed, 3 insertions(+), 17 deletions(-)
> >
> > diff --git a/drivers/staging/vt6656/rf.c b/drivers/staging/vt6656/rf.c
> > index 06fa8867cfa3..612fd4a59f8a 100644
> > --- a/drivers/staging/vt6656/rf.c
> > +++ b/drivers/staging/vt6656/rf.c
> > @@ -538,28 +538,14 @@ int vnt_rf_write_embedded(struct vnt_private *priv, u32 data)
> >
> >  static u8 vnt_rf_addpower(struct vnt_private *priv)
> >  {
> > +	int base;
> >  	s32 rssi = -priv->current_rssi;
> >
> >  	if (!rssi)
> >  		return 7;
> >
> > -	if (priv->rf_type == RF_VT3226D0) {
> > -		if (rssi < -70)
> > -			return 9;
> > -		else if (rssi < -65)
> > -			return 7;
> > -		else if (rssi < -60)
> > -			return 5;
> > -	} else {
> > -		if (rssi < -80)
> > -			return 9;
> > -		else if (rssi < -75)
> > -			return 7;
> > -		else if (rssi < -70)
> > -			return 5;
> > -	}
> > -
> > -	return 0;
> > +	base = (priv->rf_type == RF_VT3226D0) ? -60 : -70;
> > +	return (rssi < base) ? ((rssi - base + 1) / -5) * 2 + 5 : 0;
>
> I _hate_ ? : functions, just spell this out please as a real if()
> statement.
>
Ok, I will do the modification and I will resend a new version patch.

> thanks,
>
> greg k-h

thanks,

oscar carter
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
