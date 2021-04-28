Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D02536D30A
	for <lists+driverdev-devel@lfdr.de>; Wed, 28 Apr 2021 09:24:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7F11B83E04;
	Wed, 28 Apr 2021 07:24:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TxjfaMMbLx8q; Wed, 28 Apr 2021 07:24:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id DA20583CFE;
	Wed, 28 Apr 2021 07:24:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 830801BF31B
 for <devel@linuxdriverproject.org>; Wed, 28 Apr 2021 07:24:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 726564027A
 for <devel@linuxdriverproject.org>; Wed, 28 Apr 2021 07:24:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HOJybq2FFzEL for <devel@linuxdriverproject.org>;
 Wed, 28 Apr 2021 07:24:25 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com
 [IPv6:2607:f8b0:4864:20::102c])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 512E94020F
 for <devel@driverdev.osuosl.org>; Wed, 28 Apr 2021 07:24:25 +0000 (UTC)
Received: by mail-pj1-x102c.google.com with SMTP id
 l10-20020a17090a850ab0290155b06f6267so2418258pjn.5
 for <devel@driverdev.osuosl.org>; Wed, 28 Apr 2021 00:24:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=5LYTEtiy0oE5g1FSqUSMNy7xj6UIB0dhqsQ/+3S1wk4=;
 b=SM1AWmw9/8trQ3SQTV6NfuL94tmGNEIptbv5txAgGlF3ZYoDUjIC8lh2ePKnQt14yI
 7h8PE5HmubRqW11j6NhcX/6cxE8sP2jiw5oIIhiKJMfMMwftufJpLHjWKxIolmoWTDMH
 +cV2yWNrvyTBGfDS944AtQw4Gr0XdChhD/R6MrDQBSjsbDf44T6inkRuZq0J9DFScPwP
 24Nv8chpauIm9kd5g29y8Tf64ShJ/MFOr1T+ZPiUub/e6N7VMwR7wH+E4DkHAPkTRoIY
 /n2TGRaJmexM2IeA3LUwc5cx15bd3jzIyKXwFHOqETpjjFVjp0JjCnmUCKyyv+Grwdz9
 wxag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=5LYTEtiy0oE5g1FSqUSMNy7xj6UIB0dhqsQ/+3S1wk4=;
 b=tKMVAwdYGlkP9z613WKHKF/fAKCgEjJnIP9E3ILVNDaAluoD3kdN6yp8j/uF05Wop7
 sDVhU+HUVk2obkZpIbmtwkRKp4QF3VZVdNyVLe2CC1WUT77zV+lPglb8/jZFGC0Y3Mvr
 exv3EnMpgAuvx0Ml5t8Kyv52lVoB0sAGsf1pr7qiWYDIEcG8J6fGYAkmSbkddJASKr1F
 mN+IHP7MHtlUGDxkbQ02y6FkGP98oHdoC5IZ2gb6s94wGF3wVGHVkC4qk7bF12Kp84yi
 DPkUIbT5hv1dPzHQ1k8nOfZoHGTlWKLdLCBRxbgkRSkA/2zmOTXUhFXBs5rIldWQRCtz
 IqDg==
X-Gm-Message-State: AOAM532L8h/50ClzTrVN14fDu5MktMB2FWvIsR4hHW5JxzcJo4qLs3kh
 NPPGCzw39ew90VWFnfx7VvQ=
X-Google-Smtp-Source: ABdhPJwZaQfdMWK2Qw0BqpI7CLvaQ0aeijie8x34QV+qe7QAlVs/qbx/2qKWa1EXSNRz7nRydjrUiw==
X-Received: by 2002:a17:90b:190d:: with SMTP id
 mp13mr9959682pjb.156.1619594664696; 
 Wed, 28 Apr 2021 00:24:24 -0700 (PDT)
Received: from gmail.com ([103.52.209.34])
 by smtp.gmail.com with ESMTPSA id u69sm4377552pfc.76.2021.04.28.00.24.21
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 28 Apr 2021 00:24:23 -0700 (PDT)
Date: Wed, 28 Apr 2021 12:54:18 +0530
From: Jitendra <jkhasdev@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [PATCH] staging: rtl8192e: fix array of flexible structures
Message-ID: <20210428072418.GA1035@gmail.com>
References: <20210427174945.1323-1-jkhasdev@gmail.com>
 <YIhTjGpmLSYKuCi3@kroah.com> <20210427185844.GA1030@gmail.com>
 <YIj6MUO5+EDBzOwl@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YIj6MUO5+EDBzOwl@kroah.com>
User-Agent: Mutt/1.9.1 (2017-09-22)
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Apr 28, 2021 at 08:01:21AM +0200, Greg KH wrote:
>On Wed, Apr 28, 2021 at 12:28:44AM +0530, Jitendra wrote:
>> On Tue, Apr 27, 2021 at 08:10:20PM +0200, Greg KH wrote:
>> > On Tue, Apr 27, 2021 at 11:19:45PM +0530, Jitendra Khasdev wrote:
>> > > This patch fixes sparse warning "array of flexible structures"
>> > > for rtllib.h.
>> > >
>> > > eg. drivers/staging/rtl8192e/rtllib.h:832:48: warning: array of
>> > > flexible structures
>> > >
>> > > Signed-off-by: Jitendra Khasdev <jkhasdev@gmail.com>
>> > > ---
>> > >  drivers/staging/rtl8192e/rtllib.h | 10 +++++-----
>> > >  1 file changed, 5 insertions(+), 5 deletions(-)
>> > >
>> > > diff --git a/drivers/staging/rtl8192e/rtllib.h b/drivers/staging/rtl8192e/rtllib.h
>> > > index 4cabaf2..c7cb318 100644
>> > > --- a/drivers/staging/rtl8192e/rtllib.h
>> > > +++ b/drivers/staging/rtl8192e/rtllib.h
>> > > @@ -802,7 +802,7 @@ struct rtllib_authentication {
>> > >  	__le16 transaction;
>> > >  	__le16 status;
>> > >  	/*challenge*/
>> > > -	struct rtllib_info_element info_element[];
>> > > +	struct rtllib_info_element *info_element;
>> >
>> > You just changed the definition of this structure, and the other
>> > structures here.  Are you sure this is working properly?
>> >
>>
>> I have compiled the driver and install it on my vm, but I don't this specific
>> hardware, so couldn't test it.
>>
>> I fixed in context of sparse.
>
>Please verify that this change is correct by looking at how the
>structures are being created (i.e. is this being treated as a flexible
>array or a pointer?)
>
>I think we have been through this before and that sparse is not right,
>but I can't remember...
>
Yes, it is getting used as flexible array in code. hence, simply we can drop
this patch.

Also, looks to me, there is no more sparse warnings to fix in staging.

---
Jitendra
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
