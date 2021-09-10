Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 84F84407037
	for <lists+driverdev-devel@lfdr.de>; Fri, 10 Sep 2021 19:05:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1F90360718;
	Fri, 10 Sep 2021 17:05:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VKlZlfQQk5AL; Fri, 10 Sep 2021 17:05:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5E9B46065A;
	Fri, 10 Sep 2021 17:05:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id F148A1BF83C
 for <devel@linuxdriverproject.org>; Fri, 10 Sep 2021 17:05:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E093340466
 for <devel@linuxdriverproject.org>; Fri, 10 Sep 2021 17:05:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id n3k9zkm4SXfh for <devel@linuxdriverproject.org>;
 Fri, 10 Sep 2021 17:05:07 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com
 [IPv6:2a00:1450:4864:20::235])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 22E4E40346
 for <devel@driverdev.osuosl.org>; Fri, 10 Sep 2021 17:05:07 +0000 (UTC)
Received: by mail-lj1-x235.google.com with SMTP id w4so4241183ljh.13
 for <devel@driverdev.osuosl.org>; Fri, 10 Sep 2021 10:05:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=v2uHo0KL4tP8i7F5Ezn7qF1nuW399RUbWTYsco45lbE=;
 b=Gh0rtBaEd97D+5SpIuEt2bCTCCw4UDFXm8Ymf2Sh0tn/rWqMUvhO7CDl/W/kgHOv11
 rFotXtDOuMes+OhBWneyrv9LgUwGFNOQOFXqEN/9i/oBiyOGyM6j49ugH4Jxe6KmiUBi
 X7naAqA/WJkuhzzVNwVncYFqkgd3CntmVdkLko3SV+KhSeX0+wBkFgvx7eXNLybM4JPh
 3d3u23cA/wMPZWm4I50i3yvowNK4XgK30L+MDen5iHPECFyEanEbFrsX+HIoaJhzwuYE
 Aq7IN/rKw0gR4IX4bTLJ9vs4zdhCt7kz3Ug70o+dfQo97khbQb2GRGCu5hhNPhxGCsgF
 r/nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=v2uHo0KL4tP8i7F5Ezn7qF1nuW399RUbWTYsco45lbE=;
 b=ZZSHjrDKIETQkXJk42QqcWoLigYpUJ992dr/9oEboCe8ymxxku6hv19YtunafqNnGn
 4Wna5q0IekoJ/TY3KOpmLHsYP+R/TarTQPbIAaCtTZUJ0MiAFCxNc8mBq3ZtRAsc/pT6
 wJpiyV69Me6TcW7lfe5wNl049ZGw3jDfL2aI8nkrJJDPUfSVEhZV8QCT5QDdu9TL6jXp
 +zBsOl7vLdrYYgVH85Hf0esrGaX7HTxYK9g68051NDjd8PfzrDDjcCTJDkFMIuKrTbm5
 1qrwbJyUbvCRHfyTBYhCHANfRN3X5IBgglo6tugTB+ShHMOAn/G4dfkv9t7l/KYB5HPf
 5lkw==
X-Gm-Message-State: AOAM532katZsccxEoBLcK6I+GL53sVZMDqMgZbuOrREx0H9cNDxhP8tl
 JZJ58vCRnD5KDGfaAvpfebg=
X-Google-Smtp-Source: ABdhPJzYw419oOrtRsYCDIM2D1Cfjgfaqc/Oq/JMFlKMR88lfrIfVzm2rVNNT/3gy32wAVZCdFMqGw==
X-Received: by 2002:a2e:bb85:: with SMTP id y5mr5045243lje.207.1631293505129; 
 Fri, 10 Sep 2021 10:05:05 -0700 (PDT)
Received: from kari-VirtualBox ([31.132.12.44])
 by smtp.gmail.com with ESMTPSA id h21sm608079lfv.273.2021.09.10.10.05.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 Sep 2021 10:05:04 -0700 (PDT)
Date: Fri, 10 Sep 2021 20:05:03 +0300
From: Kari Argillander <kari.argillander@gmail.com>
To: =?utf-8?B?SsOpcsO0bWU=?= Pouiller <jerome.pouiller@silabs.com>
Subject: Re: [PATCH 29/31] staging: wfx: remove useless comments after #endif
Message-ID: <20210910170503.cnc2eri32v3bgo65@kari-VirtualBox>
References: <20210910160504.1794332-1-Jerome.Pouiller@silabs.com>
 <20210910160504.1794332-30-Jerome.Pouiller@silabs.com>
 <20210910162718.tjcwwxtxbr3ugdgf@kari-VirtualBox>
 <3556920.DX4m0svyV5@pc-42>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3556920.DX4m0svyV5@pc-42>
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
Cc: devel@driverdev.osuosl.org, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "David S . Miller" <davem@davemloft.net>, Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Sep 10, 2021 at 06:49:30PM +0200, J=E9r=F4me Pouiller wrote:
> On Friday 10 September 2021 18:27:18 CEST Kari Argillander wrote:
> > On Fri, Sep 10, 2021 at 06:05:02PM +0200, Jerome Pouiller wrote:
> > > From: J=E9r=F4me Pouiller <jerome.pouiller@silabs.com>
> > >
> > > Comments after the last #endif of header files don't bring any
> > > information and are redundant with the name of the file. Drop them.
> > =

> > How so? You see right away that this indeed is header guard and not some
> > other random thing. Also kernel coding standard says:
> > =

> >         At the end of any non-trivial #if or #ifdef block (more than a
> >         few line), place a comment after the #endif on the same line,
> >         noting the conditional expression used.
> > =

> > There is no point dropping them imo. If you think about space saving
> > this patch will take more space. Because it will be in version history.
> > So nack from me unless some one can trun my head around.
> =

> IMHO, the #endif on the last line of an header file terminates a trivial
> #ifdef block.
> Moreover, they are often out-of-sync with the #ifndef statement, like her=
e:

That one is of course true. =


> =

> [...]
> > > diff --git a/drivers/staging/wfx/key.h b/drivers/staging/wfx/key.h
> > > index dd189788acf1..2d135eff7af2 100644
> > > --- a/drivers/staging/wfx/key.h
> > > +++ b/drivers/staging/wfx/key.h
> > > @@ -17,4 +17,4 @@ int wfx_set_key(struct ieee80211_hw *hw, enum set_k=
ey_cmd cmd,
> > >               struct ieee80211_vif *vif, struct ieee80211_sta *sta,
> > >               struct ieee80211_key_conf *key);
> > >
> > > -#endif /* WFX_STA_H */
> > > +#endif
> [...]
> =

> -- =

> J=E9r=F4me Pouiller
> =

> =

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
