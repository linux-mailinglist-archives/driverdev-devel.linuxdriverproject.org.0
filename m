Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D23243A000
	for <lists+driverdev-devel@lfdr.de>; Sat,  8 Jun 2019 15:45:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7C82D878A5;
	Sat,  8 Jun 2019 13:45:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id h0jDmkTeR3+o; Sat,  8 Jun 2019 13:45:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0B6D586EB1;
	Sat,  8 Jun 2019 13:45:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8B7F91BF427
 for <devel@linuxdriverproject.org>; Sat,  8 Jun 2019 13:45:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7D59886F5C
 for <devel@linuxdriverproject.org>; Sat,  8 Jun 2019 13:45:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gfgrffA+TzO2 for <devel@linuxdriverproject.org>;
 Sat,  8 Jun 2019 13:45:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f194.google.com (mail-qk1-f194.google.com
 [209.85.222.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 009CC86EB1
 for <devel@driverdev.osuosl.org>; Sat,  8 Jun 2019 13:45:36 +0000 (UTC)
Received: by mail-qk1-f194.google.com with SMTP id m14so3025306qka.10
 for <devel@driverdev.osuosl.org>; Sat, 08 Jun 2019 06:45:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=MUPzmCJTf51J7FWBUyfukjZxItNopz4dEjvYkIcFsmw=;
 b=Q2pkpTSh1sN3U8JV85bhk2nEzmUygYdBsraQ4g0HlG3alCSXucsczck0e33FeJTdWh
 9XOj8LtvUveWSagEvqU257mowxAolaPyE4Tfa0WzkOs2VJNbd9cAnyQ/I1oLCWJoykuq
 t2OiqtWF51/6yhnwsOaImIfM7TCPufiXxfrgf5tQHtdC/OkoL9Fz1lmba+i6BjvjgQKa
 7k56dP/NuDsV6kLYgsASzfGz7hGa44Knslc4/+MKbEoCo1VtS4gSgB7cWa7AnYDIiDuY
 5iV4+Y45m6x+gOxvXcYAGOgDvJtRWlzqZ+AU+BiOQh8SWpwsYXPEUTeFnP9G57XRDjL2
 +5Yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=MUPzmCJTf51J7FWBUyfukjZxItNopz4dEjvYkIcFsmw=;
 b=rcDzVdEMiWhwSRkGbRG6y9jZ0d229BWfIpQjI7y4AVHBWdXX70BFCeV5rsla1BAhjU
 kitODMe9VsU7scrRu87/tx1QdZHwZq9RAauCwpuETHSzmJr+jcJCNML5HOjehBF12nka
 +1qnHYXXEUrrmm6TMYLf+28AUtfWzwzy2O9yBcR1vfNn3v2Da75+BK1AgtzVePJ6nDU6
 161KYkh3BPaxziMylNxbIqWzJTFbxQ+Y1/UhKjMvwnIChmwBRIIcrPjVr8+AZOjLJU23
 jmTD0Ij9WDe2xb8olw1aSrwH6kYN6uk2mdUiS0wZ+6d3RYYmwi+vkDcVfIsGGucSJMl0
 jOUA==
X-Gm-Message-State: APjAAAVurrMlsDWiaT9LTqtB/FVD9wMHWmG2IFYjc+z//5SwgjnAc0sb
 QOANObzjtp8jDUud/qUDGPQ=
X-Google-Smtp-Source: APXvYqy7bXDSwzqI7DavVnoWod/v6m7quPV7wq8QDArJeMYTrf7s3jVmLs4z11XCnh1WGiWiSQTX7A==
X-Received: by 2002:a37:9c16:: with SMTP id f22mr48508568qke.261.1560001536036; 
 Sat, 08 Jun 2019 06:45:36 -0700 (PDT)
Received: from arch-01.home (c-73-132-202-198.hsd1.md.comcast.net.
 [73.132.202.198])
 by smtp.gmail.com with ESMTPSA id l94sm2427949qte.48.2019.06.08.06.45.34
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 08 Jun 2019 06:45:35 -0700 (PDT)
Date: Sat, 8 Jun 2019 13:45:05 +0000
From: Geordan Neukum <gneukum1@gmail.com>
To: Hao Xu <haoxu.linuxkernel@gmail.com>
Subject: Re: [PATCH 1/2] staging: kpc2000: kpc2000_i2c: void* -> void *
Message-ID: <20190608134505.GA963@arch-01.home>
References: <1559978867-3693-1-git-send-email-haoxu.linuxkernel@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1559978867-3693-1-git-send-email-haoxu.linuxkernel@gmail.com>
User-Agent: Mutt/1.12.0 (2019-05-25)
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Jun 08, 2019 at 03:27:46PM +0800, Hao Xu wrote:
> modify void* to void * for #define inb_p(a) readq((void*)a)
> and #define outb_p(d,a) writeq(d,(void*)a)
> 
> Signed-off-by: Hao Xu <haoxu.linuxkernel@gmail.com>
> ---
>  drivers/staging/kpc2000/kpc2000_i2c.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/kpc2000/kpc2000_i2c.c b/drivers/staging/kpc2000/kpc2000_i2c.c
> index a434dd0..de3a0c8 100644
> --- a/drivers/staging/kpc2000/kpc2000_i2c.c
> +++ b/drivers/staging/kpc2000/kpc2000_i2c.c
> @@ -124,9 +124,9 @@ struct i2c_device {
>  
>  // FIXME!
>  #undef inb_p
> -#define inb_p(a) readq((void*)a)
> +#define inb_p(a) readq((void *)a)
>  #undef outb_p
> -#define outb_p(d,a) writeq(d,(void*)a)
> +#define outb_p(d,a) writeq(d,(void *)a)

Alternatively to fixing up the style here, did you consider just
removing these two macros altogether and calling [read|write]q
directly throughout the kpc_i2c driver (per the '//FIXME' comment)?

Unless, I'm misunderstanding something, these macros are shadowing the
functions [in|out]b_p, which already exist in io.h. [in|out]b_p are for
8-bit i/o transactions and [read|write]q are for 64-bit transactions, so
shadowing the original [in|out]b_p with something that actually does
64-bit transactions is probably potentially misleading here.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
