Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 310EE334B7B
	for <lists+driverdev-devel@lfdr.de>; Wed, 10 Mar 2021 23:22:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D967C82F41;
	Wed, 10 Mar 2021 22:22:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NaNs5Z7XOHFM; Wed, 10 Mar 2021 22:22:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0094882F37;
	Wed, 10 Mar 2021 22:22:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5A79F1BF29E
 for <devel@linuxdriverproject.org>; Wed, 10 Mar 2021 22:13:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 530CB42FF2
 for <devel@linuxdriverproject.org>; Wed, 10 Mar 2021 22:13:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JbClcZNVKMda for <devel@linuxdriverproject.org>;
 Wed, 10 Mar 2021 22:13:42 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com
 [IPv6:2a00:1450:4864:20::336])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7616942FB1
 for <devel@driverdev.osuosl.org>; Wed, 10 Mar 2021 22:13:40 +0000 (UTC)
Received: by mail-wm1-x336.google.com with SMTP id
 124-20020a1c00820000b029010b871409cfso11997465wma.4
 for <devel@driverdev.osuosl.org>; Wed, 10 Mar 2021 14:13:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:message-id:references:mime-version:content-disposition
 :in-reply-to:subject:resent-from:resent-to:resent-cc:date:user-agent
 :content-transfer-encoding;
 bh=f6b0ySB65gAluU5jkcMgJzHgnrlwCgvwd9FpZIquqBY=;
 b=dUOutTFWzecLpw/uH1JQ7qFklqMkd1HC0mHP4hUFIznvT0XIZcvRdVnhV4JznL1zyg
 GcorLaiY44LNgaoPg283+dUDbyX4eawoN4xnjnmeb0dvehqLfIfj7LfnseGbl5Fn/nyb
 kt5dbbShu6NOpJjSQ+pVy1PHHWIaLszqK/HJpZp5F4SpEwA+HlJLSDsRXjvsC5BIhMAH
 g5bR004z4zxJpfr5HCYMjrmDzlZm8O7P9bBGPk/7Vsf4AZp0Igv4Mie/diTvrTfj7LIs
 vLXdT0N7Gmv1k6vL0+Ve/Z5YLdt5bh1FxEryctQwrAHPPCCeOONFfEPGuCQopZ2fUv5G
 nnwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:message-id:references:mime-version
 :content-disposition:in-reply-to:subject:resent-from:resent-to
 :resent-cc:date:user-agent:content-transfer-encoding;
 bh=f6b0ySB65gAluU5jkcMgJzHgnrlwCgvwd9FpZIquqBY=;
 b=Fo5SuQKd3m0YJBya/rs/Oz7GD76MrXaQ3LhDf5hY/HFJh9sfMekNvH2ibLJcvPYNg1
 G+sx0LrPRsEWpYaf3H9YIWH95DGVdnffw8aJKzxihsRipvvpp519JMeU0BUQ+/s16xbW
 T8MCGmMWWuk+vcLOEp1PqAcuikZh1iOsQAN0o+6h7mguM2aGhnoMD5+TpsVc40crMMND
 9pQEdZzqdAnX2TxGAdtWmfY/JzhsXWITM3NLV/8iA37wW3Ij7vvbYkt/gqHgB5ICo7qS
 hdcx9J85juYW6LwuK6tKBzuYbdtwCb14oPdqVs+4i8s8trcJsEpSr+PRUFCtM59GN+vw
 lD3w==
X-Gm-Message-State: AOAM532XnO/w+//cDLuakrJgPULJzxl7RtKlovbQGh46nb6/8R2zzQIM
 Qza+XAOqDqMXmD3FT7c1CsI=
X-Google-Smtp-Source: ABdhPJy+jaRhQfyr5OAeh4pDipJ/SdY0izbXnb/3YYJI9iW5xj0hYSCcuVsquyReoZH6DrILWwTnWw==
X-Received: by 2002:a05:600c:19ce:: with SMTP id
 u14mr4701474wmq.109.1615414416742; 
 Wed, 10 Mar 2021 14:13:36 -0800 (PST)
Received: from [192.168.43.236] ([5.171.72.165])
 by smtp.gmail.com with ESMTPSA id b65sm760286wmh.4.2021.03.10.14.13.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Mar 2021 14:13:36 -0800 (PST)
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
Date: Wed, 10 Mar 2021 23:13:35 +0100
User-Agent: Evolution 3.30.5-1.1 
Resent-Message-Id: <20210310221343.530CB42FF2@smtp2.osuosl.org>
Resent-Date: Wed, 10 Mar 2021 22:13:43 +0000 (UTC)
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
