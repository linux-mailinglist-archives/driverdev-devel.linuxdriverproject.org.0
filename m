Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 72ACD344E69
	for <lists+driverdev-devel@lfdr.de>; Mon, 22 Mar 2021 19:23:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A4A3983396;
	Mon, 22 Mar 2021 18:23:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pVQI8t1OrCNO; Mon, 22 Mar 2021 18:23:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D88C3832FF;
	Mon, 22 Mar 2021 18:23:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 41D421BF300
 for <devel@linuxdriverproject.org>; Mon, 22 Mar 2021 18:22:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3D693832FF
 for <devel@linuxdriverproject.org>; Mon, 22 Mar 2021 18:22:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id he1pDfx-RLfQ for <devel@linuxdriverproject.org>;
 Mon, 22 Mar 2021 18:22:52 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com
 [IPv6:2a00:1450:4864:20::530])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 68972832EB
 for <devel@driverdev.osuosl.org>; Mon, 22 Mar 2021 18:22:52 +0000 (UTC)
Received: by mail-ed1-x530.google.com with SMTP id h13so20542858eds.5
 for <devel@driverdev.osuosl.org>; Mon, 22 Mar 2021 11:22:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=asL2ZZdtkm66EuwKx1Rl/XrY+7M28qzFVlOOJDLrX1Q=;
 b=jKJvrSeRF6WQqvVAhseT8JuAeNVVKu5BVHgSK5zf55N/aCZZMavPrcVmTO6k2s4y6R
 M28a6saDUEFEzuei1dG/wxw71JTuTWaTklTZp8dxzQAS8EsLE2tbS6mBsOJe5MG8kEsG
 ptlcs01Z1gxqievx+csQxXG4RhSATpkzo0hTAK6wc3MZ/J4AfBzWc7t/GxbZjA6cMBbC
 Lu0za++wqkBLJf914TLR/vCydahGRWYz0lCPzorsE3JBOtFv1KKmtEiJ8JV4gXAfxecf
 gGkGuzipWzdTnARJWMxhniq2ER3gQEossUtqCZbfd3HZnb3OTXA6Q665eT7ndcbanrlX
 6WDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=asL2ZZdtkm66EuwKx1Rl/XrY+7M28qzFVlOOJDLrX1Q=;
 b=Xs082cBNa/f9/yX3YIQ143puCU6i7pYegXot5kzuQa/vKcCxiN0QYGPafNoSbUEcfG
 wLVRMEzlplVVzJ/eUfFepXz1ncyduJPTE7MP0+DvEuTq/WYIfmk1qR59WtE/IooYFQls
 KEBiGqhu1LGNftusSSpOVAC/OA2wh0U3c6lo7f0IZUKVXcq9QJfpL+0uf2/6d3V7sxNG
 2XStOcNte1X/zA9ueQNi6tqEW6c5mgImeJ5UV3g3Cad68kJrJjbzApXXCT9LHc98GWPo
 M7sZmW0w5Vn0WNFRovBCyJ/gMSI+QjfYrKQEQ7UOh/GyJTFoOs0RWY84yU4cipBXVF//
 KGeA==
X-Gm-Message-State: AOAM532pmiIAzYvKwpCIB9hExnHEvZYxQqA4vV14gf+2RshZEZRAl7Xw
 lUPV7/tTHaFYLNQ346XzHTM=
X-Google-Smtp-Source: ABdhPJzdlnMnhcI11rqCVdKyiJ4uKdceNJbkp7h+h/nHy3QamkCbfqong+uG+lmxdK0+gA5sf51O4Q==
X-Received: by 2002:aa7:d4cb:: with SMTP id t11mr946836edr.202.1616437370465; 
 Mon, 22 Mar 2021 11:22:50 -0700 (PDT)
Received: from agape.jhs ([151.37.41.34])
 by smtp.gmail.com with ESMTPSA id e26sm12663906edj.29.2021.03.22.11.22.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 22 Mar 2021 11:22:50 -0700 (PDT)
Date: Mon, 22 Mar 2021 19:22:46 +0100
From: Fabio Aiuto <fabioaiuto83@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [PATCH 02/11] staging: rtl8723bs: moved function prototypes out
 of core/rtw_efuse.c
Message-ID: <20210322182245.GB1443@agape.jhs>
References: <cover.1616422773.git.fabioaiuto83@gmail.com>
 <c46e7d7a686988bb6aaea9bc24b15188136e0aed.1616422773.git.fabioaiuto83@gmail.com>
 <YFjA2XhxhJE/iN4j@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YFjA2XhxhJE/iN4j@kroah.com>
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
Cc: joe@perches.com, apw@canonical.com, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Mar 22, 2021 at 05:07:53PM +0100, Greg KH wrote:
> On Mon, Mar 22, 2021 at 03:31:40PM +0100, Fabio Aiuto wrote:
> > fix the following checkpatch issues:
> > 
> > WARNING: externs should be avoided in .c files
> > 35: FILE: drivers/staging/rtl8723bs/core/rtw_efuse.c:35:
> > +bool
> > 
> > moved two function prototypes in include/rtw_efuse.h
> > 
> > Signed-off-by: Fabio Aiuto <fabioaiuto83@gmail.com>
> > ---
> >  drivers/staging/rtl8723bs/core/rtw_efuse.c    | 10 ----------
> >  drivers/staging/rtl8723bs/include/rtw_efuse.h |  3 +++
> >  2 files changed, 3 insertions(+), 10 deletions(-)
> > 
> > diff --git a/drivers/staging/rtl8723bs/core/rtw_efuse.c b/drivers/staging/rtl8723bs/core/rtw_efuse.c
> > index 32ca10f01413..0772397738d4 100644
> > --- a/drivers/staging/rtl8723bs/core/rtw_efuse.c
> > +++ b/drivers/staging/rtl8723bs/core/rtw_efuse.c
> > @@ -32,11 +32,6 @@ u8 fakeBTEfuseModifiedMap[EFUSE_BT_MAX_MAP_LEN] = {0};
> >  #define REG_EFUSE_CTRL		0x0030
> >  #define EFUSE_CTRL			REG_EFUSE_CTRL		/*  E-Fuse Control. */
> >  
> > -bool
> > -Efuse_Read1ByteFromFakeContent(
> > -	struct adapter *padapter,
> > -	u16 	Offset,
> > -	u8 *Value);
> >  bool
> >  Efuse_Read1ByteFromFakeContent(
> >  	struct adapter *padapter,
> > @@ -53,11 +48,6 @@ Efuse_Read1ByteFromFakeContent(
> >  	return true;
> >  }
> >  
> > -bool
> > -Efuse_Write1ByteToFakeContent(
> > -	struct adapter *padapter,
> > -	u16 	Offset,
> > -	u8 Value);
> >  bool
> >  Efuse_Write1ByteToFakeContent(
> >  	struct adapter *padapter,
> > diff --git a/drivers/staging/rtl8723bs/include/rtw_efuse.h b/drivers/staging/rtl8723bs/include/rtw_efuse.h
> > index 5bae46ecd9de..1f304df8c421 100644
> > --- a/drivers/staging/rtl8723bs/include/rtw_efuse.h
> > +++ b/drivers/staging/rtl8723bs/include/rtw_efuse.h
> > @@ -103,6 +103,9 @@ extern u8 fakeBTEfuseInitMap[];
> >  extern u8 fakeBTEfuseModifiedMap[];
> >  /*------------------------Export global variable----------------------------*/
> >  
> > +bool Efuse_Read1ByteFromFakeContent(struct adapter *padapter, u16 Offset, u8 *Value);
> > +bool Efuse_Write1ByteToFakeContent(struct adapter *padapter, u16 Offset, u8 Value);
> 
> No, there's no need for this to be in a .h file, it is only called from
> one .c file.
> 
> Make the thing static and all should be fine, right?
> 
> thanks,
> 
> greg k-h

ok, better static function when possibile. 

Thank you Greg,

fabio
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
