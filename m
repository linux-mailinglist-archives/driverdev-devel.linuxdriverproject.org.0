Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A052C334A4C
	for <lists+driverdev-devel@lfdr.de>; Wed, 10 Mar 2021 23:03:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0D0C5431EB;
	Wed, 10 Mar 2021 22:03:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hWzLCmIjklRg; Wed, 10 Mar 2021 22:03:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 198E2431E9;
	Wed, 10 Mar 2021 22:03:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 849F31BF37E
 for <devel@linuxdriverproject.org>; Wed, 10 Mar 2021 21:58:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7ABD6605C1
 for <devel@linuxdriverproject.org>; Wed, 10 Mar 2021 21:58:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 97Lgb7r7gHn7 for <devel@linuxdriverproject.org>;
 Wed, 10 Mar 2021 21:58:40 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com
 [IPv6:2a00:1450:4864:20::42f])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9746D600D4
 for <devel@driverdev.osuosl.org>; Wed, 10 Mar 2021 21:58:36 +0000 (UTC)
Received: by mail-wr1-x42f.google.com with SMTP id b18so25016911wrn.6
 for <devel@driverdev.osuosl.org>; Wed, 10 Mar 2021 13:58:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:message-id:references:mime-version:content-disposition
 :in-reply-to:subject:resent-from:resent-to:resent-cc:date:user-agent
 :content-transfer-encoding;
 bh=f6b0ySB65gAluU5jkcMgJzHgnrlwCgvwd9FpZIquqBY=;
 b=sTiEgF9Iv4fCiL3Fy32ZvjCnLrs4D6vQuKqN8uoGBKyfVHIPjm2LrzI8//JvGYCb1y
 s3lID+lzc+0jNED80PzqxXrm5XnE6xKbobpg7KnI66V/f6DAnsPTBX6u7Yhu7VW0eF7Q
 OizfaRos09J1eykOY5BifFAYVZs3y7R2g4sOT9qIo0lb3KtXFUePcpPcdHqDZxQ+HnjU
 NGNJp9eEIntQQdvuL5IUzGJEbcYPVM9goGKtf5xYASKnQ6Z8LvXV5I0ieJZEHfmu4CHT
 IYaEv0xaruNH2stzyvklmuEx4gE3ghrwZ4JqOMPEpxucYG+/GaEfYiSEsk/xkMUERQ8V
 3tug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:message-id:references:mime-version
 :content-disposition:in-reply-to:subject:resent-from:resent-to
 :resent-cc:date:user-agent:content-transfer-encoding;
 bh=f6b0ySB65gAluU5jkcMgJzHgnrlwCgvwd9FpZIquqBY=;
 b=MV+CHAZx/vJitSjbFlFhZeMuk8BqPc+4IbILQSZ5zbArZN4vIfhget4bUNpylHOPNR
 emVGIBlRatgf8+f4O+R+oWbslzcX6LTqc71KwqqvSGoOLxg6DG3Dkzr/ujlmQmFaENfW
 as/c3pbQ0lXg0dGPZFpqG6rtz8qfWrp1hjWqI6fl0kGpBj2aulKoTnFdqTtiVAvukLfk
 kf/CExSXscXN0Qli9R8rnYq85/s+32dr9Tor8orm/T76bQVBeYrOUEJATqXsg5TF3KkP
 pa0uxtlQ7zrAIzFPlHBkgfOHUdqKGeb81qEvIhF88Cm/RPMBfv++7KhA+5EbTtfc6MRa
 uRgA==
X-Gm-Message-State: AOAM533F9QsmheHk8PuwO5iQR/RAxey4SGW7ticvt/acDV5X5iKoARRH
 5tBSEYBWzV0YFblH7NhRdSM=
X-Google-Smtp-Source: ABdhPJzAqp1TDvBlhWhHs4lT0gM4vzEdEygAfn3QYyV1nKIi3kGqgBleYJHJyCu3Cupn/+7/E54qxA==
X-Received: by 2002:adf:e412:: with SMTP id g18mr5656234wrm.159.1615413514837; 
 Wed, 10 Mar 2021 13:58:34 -0800 (PST)
Received: from [192.168.43.236] ([5.171.80.77])
 by smtp.gmail.com with ESMTPSA id u15sm684371wmq.4.2021.03.10.13.58.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Mar 2021 13:58:34 -0800 (PST)
Received: from agape.jhs ([151.47.162.135]) by smtp.gmail.com with ESMTPSA
 id f21sm10126639ejw.124.2021.03.10.08.09.50 for
 <gregkh@linuxfoundation.org> (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384
 bits=256/256); Wed, 10 Mar 2021 08:09:50 -0800 (PST)
From: Fabio Aiuto <fabioaiuto83@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Message-ID: <20210310160946.GA6421@agape.jhs>
References: <20210310153717.GA5741@agape.jhs>
 <YEjrEErDZTH47gto@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YEjrEErDZTH47gto@kroah.com>
Subject: Re: [PATCH] staging: rtl8723bs: align comments
Resent-From: Fabio Aiuto <fabioaiuto83@gmail.com>
Resent-To: Greg KH <gregkh@linuxfoundation.org>
Resent-Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>, 
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Date: Wed, 10 Mar 2021 22:58:32 +0100
User-Agent: Evolution 3.30.5-1.1 
Resent-Message-Id: <20210310215843.7ABD6605C1@smtp3.osuosl.org>
Resent-Date: Wed, 10 Mar 2021 21:58:43 +0000 (UTC)
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

On Wed, Mar 10, 2021 at 04:51:44PM +0100, Greg KH wrote:
> On Wed, Mar 10, 2021 at 04:37:21PM +0100, Fabio Aiuto wrote:
> > fix the following checkpatch warnings:
> > 
> > WARNING: Block comments use * on subsequent lines
> > +	/*
> > +		AMPDU_para [1:0]:Max AMPDU Len => 0:8k , 1:16k, 2:32k, 3:64k
> > --
> > WARNING: Block comments use * on subsequent lines
> > +/*
> > +op_mode
> > 
> > Signed-off-by: Fabio Aiuto <fabioaiuto83@gmail.com>
> > ---
> >  drivers/staging/rtl8723bs/core/rtw_ap.c | 28 ++++++++++++-------------
> >  1 file changed, 14 insertions(+), 14 deletions(-)
> > 
> > diff --git a/drivers/staging/rtl8723bs/core/rtw_ap.c b/drivers/staging/rtl8723bs/core/rtw_ap.c
> > index b6f944b37b08..3a0e4f64466a 100644
> > --- a/drivers/staging/rtl8723bs/core/rtw_ap.c
> > +++ b/drivers/staging/rtl8723bs/core/rtw_ap.c
> > @@ -721,9 +721,9 @@ static void update_hw_ht_param(struct adapter *padapter)
> >  
> >  	/* handle A-MPDU parameter field */
> >  	/*
> > -		AMPDU_para [1:0]:Max AMPDU Len => 0:8k , 1:16k, 2:32k, 3:64k
> > -		AMPDU_para [4:2]:Min MPDU Start Spacing
> > -	*/
> > +	 *	AMPDU_para [1:0]:Max AMPDU Len => 0:8k , 1:16k, 2:32k, 3:64k
> > +	 *	AMPDU_para [4:2]:Min MPDU Start Spacing
> > +	 */
> >  	max_AMPDU_len = pmlmeinfo->HT_caps.u.HT_cap_element.AMPDU_para & 0x03;
> >  
> >  	min_MPDU_spacing = (
> > @@ -1815,17 +1815,17 @@ void update_beacon(struct adapter *padapter, u8 ie_id, u8 *oui, u8 tx)
> >  }
> >  
> >  /*
> > -op_mode
> > -Set to 0 (HT pure) under the following conditions
> > -	- all STAs in the BSS are 20/40 MHz HT in 20/40 MHz BSS or
> > -	- all STAs in the BSS are 20 MHz HT in 20 MHz BSS
> > -Set to 1 (HT non-member protection) if there may be non-HT STAs
> > -	in both the primary and the secondary channel
> > -Set to 2 if only HT STAs are associated in BSS,
> > -	however and at least one 20 MHz HT STA is associated
> > -Set to 3 (HT mixed mode) when one or more non-HT STAs are associated
> > -	(currently non-GF HT station is considered as non-HT STA also)
> > -*/
> > + *op_mode
> > + *Set to 0 (HT pure) under the following conditions
> > + *	 - all STAs in the BSS are 20/40 MHz HT in 20/40 MHz BSS or
> > + *	 - all STAs in the BSS are 20 MHz HT in 20 MHz BSS
> > + *Set to 1 (HT non-member protection) if there may be non-HT STAs
> > + *	 in both the primary and the secondary channel
> > + *Set to 2 if only HT STAs are associated in BSS,
> > + *	 however and at least one 20 MHz HT STA is associated
> > + *Set to 3 (HT mixed mode) when one or more non-HT STAs are associated
> > + *	 (currently non-GF HT station is considered as non-HT STA also)
> > + */
> 
> Add a space after the ' ' to make it look correct please.
> 
> thanks,
> 
> greg k-h
I am sorry, I fear I don't understand, checkpatch.sh script says the patch is ok.
Where have I to add a ' ' (a blank?)?

thank you,

fabio

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
