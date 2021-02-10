Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A83E31601F
	for <lists+driverdev-devel@lfdr.de>; Wed, 10 Feb 2021 08:37:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C16ED8489F;
	Wed, 10 Feb 2021 07:37:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id a-ve5hEuCaza; Wed, 10 Feb 2021 07:37:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id A79BE84DFE;
	Wed, 10 Feb 2021 07:37:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1B98B1BF487
 for <devel@linuxdriverproject.org>; Wed, 10 Feb 2021 07:37:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 17F6486F65
 for <devel@linuxdriverproject.org>; Wed, 10 Feb 2021 07:37:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9xn3+Z4KmLyK for <devel@linuxdriverproject.org>;
 Wed, 10 Feb 2021 07:37:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f176.google.com (mail-pg1-f176.google.com
 [209.85.215.176])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 63A4686EA3
 for <devel@driverdev.osuosl.org>; Wed, 10 Feb 2021 07:37:47 +0000 (UTC)
Received: by mail-pg1-f176.google.com with SMTP id t25so696123pga.2
 for <devel@driverdev.osuosl.org>; Tue, 09 Feb 2021 23:37:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=xrVzKrroi0WiHoE1Eiac+UaIa6UslROTnvy19e6lBxc=;
 b=N6BtSQq2SQ5DKbwJBX/ElpBVsWMbQzzhZmz0PHhY83pLiRbyJK3FXiAd4Su0AREyDJ
 WcVzQfZtuRVT6ZA/s5yGDvpwEs9mqnve5KVUsE27eEmv7qT4N2vbYznUQVpjntvw96az
 aLeoDYH5+na8K+GExcDiEKFfhKjUVhsPjiuT3mKRJVCw0iF0o3sjXe0ZlIPHvI+Q+NuO
 o9n8vgs2cGJOHRKilEc4iDuvpESwZqNTFnH4tFgbDllnzE4Bmw15pl8zovVPwnkHGh13
 2C0Ijjpujst/ml6gyYjMNPpQPPe0b54sjKNlY85s/JaMX09j2ZoZETRS19/+lNWMrPnm
 t7jw==
X-Gm-Message-State: AOAM532FYjwJyql8AwC6/KZu8fr9Cs9+UxO1oQh/BX9o4QxkL5UaOfjZ
 MPyE/GMUnTHm+lzPK5f2FW8=
X-Google-Smtp-Source: ABdhPJznPFpnLqFW26o4g5iuGiEFHDto1iWEJQp+BgovpxC+1gMiK/lG8V83mRgNWMKiYacR/5VoRg==
X-Received: by 2002:a63:564f:: with SMTP id g15mr1942501pgm.334.1612942667048; 
 Tue, 09 Feb 2021 23:37:47 -0800 (PST)
Received: from karthik-strix-linux.karthek.com ([192.140.154.101])
 by smtp.gmail.com with ESMTPSA id u31sm1318993pgl.9.2021.02.09.23.37.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 09 Feb 2021 23:37:46 -0800 (PST)
Date: Wed, 10 Feb 2021 13:07:41 +0530
From: karthek <mail@karthek.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH] staging: rtl8723bs: fix block comments alignment
Message-ID: <YCONRdMzQu7KAJEP@karthik-strix-linux.karthek.com>
References: <YCLaHXD/sUKM5HZE@karthik-strix-linux.karthek.com>
 <20210210072717.GS2696@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210210072717.GS2696@kadam>
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
 linux-kernel@vger.kernel.org, Stephen Rothwell <sfr@canb.auug.org.au>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Feb 10, 2021 at 10:27:17AM +0300, Dan Carpenter wrote:
> On Wed, Feb 10, 2021 at 12:23:17AM +0530, karthik alapati wrote:
> > fix checkpatch.pl warning for "block comments should align the * on each line"
> > 
> > Signed-off-by: karthik alapati <mail@karthek.com>
> > ---
> >  .../staging/rtl8723bs/hal/rtl8723b_phycfg.c   | 204 +++++++++---------
> >  1 file changed, 102 insertions(+), 102 deletions(-)
> > 
> > diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_phycfg.c b/drivers/staging/rtl8723bs/hal/rtl8723b_phycfg.c
> > index cf23414d7..003f954c2 100644
> > --- a/drivers/staging/rtl8723bs/hal/rtl8723b_phycfg.c
> > +++ b/drivers/staging/rtl8723bs/hal/rtl8723b_phycfg.c
> > @@ -20,16 +20,16 @@
> >  #define MAX_DOZE_WAITING_TIMES_9x 64
> >  
> >  /**
> > -* Function:	phy_CalculateBitShift
> > -*
> > -* OverView:	Get shifted position of the BitMask
> > -*
> > -* Input:
> > -*		u32 	BitMask,
> > -*
> > -* Output:	none
> > -* Return:		u32 	Return the shift bit bit position of the mask
> > -*/
> > + * Function:	phy_CalculateBitShift
> > + *
> > + * OverView:	Get shifted position of the BitMask
> > + *
> > + * Input:
> > + *		u32 	BitMask,
> 
> Why is this on a different line??
> 
> > + *
> > + * Output:	none
> > + * Return:		u32 	Return the shift bit bit position of the mask
> 
> The "u32" is indented more than the "none".  "bit bit" is probably a
> typo?
> 
> > + */
> >  static	u32 phy_CalculateBitShift(u32 BitMask)
> >  {
> >  	u32 i;
> 
> There is a proper kernel-doc style that function comments are supposed
> to use.  https://www.kernel.org/doc/html/latest/doc-guide/kernel-doc.html
> 
> ./scripts/kernel-doc -v -none drivers/staging/rtl8723bs/hal/rtl8723b_phycfg.c
> 
> regards,
> dan carpenter
> 

thats my old patch
the new one is already sent to greg,lkml
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
