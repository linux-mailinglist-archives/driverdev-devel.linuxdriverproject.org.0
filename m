Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B5192292612
	for <lists+driverdev-devel@lfdr.de>; Mon, 19 Oct 2020 12:51:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1D719872E1;
	Mon, 19 Oct 2020 10:51:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0nwVRa4KKEuz; Mon, 19 Oct 2020 10:51:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 005BE86E4F;
	Mon, 19 Oct 2020 10:51:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 66CFC1BF2BA
 for <devel@linuxdriverproject.org>; Mon, 19 Oct 2020 10:51:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 63656871F1
 for <devel@linuxdriverproject.org>; Mon, 19 Oct 2020 10:51:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1zVavfL09R9p for <devel@linuxdriverproject.org>;
 Mon, 19 Oct 2020 10:51:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B2C75871E5
 for <devel@driverdev.osuosl.org>; Mon, 19 Oct 2020 10:51:38 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id r10so5790454pgb.10
 for <devel@driverdev.osuosl.org>; Mon, 19 Oct 2020 03:51:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=POJUUWt1MFPOM3h57wm7ZLoYvrjx8cgXX5L8pirMN6k=;
 b=Vfr6xkW9HKYZrqGUS2tPGml8eGqgr4Vaw9XPImttfIDIjVrKNu09lX5opzwzuCmXjD
 uzlq6hs18uAPBoscuR5ByuOUaH6zi8jcZRtm2TxhhfdeyASx5mvdST5Fk6oOhzGUaPT5
 OD8RSWa6vXPquRa1c7rbGS2cDjkmX8xyCbYfr4xmljeQgkdPU9Y3uKirqN2TSexX5tU5
 kiJtmRxl9W5bv5dLd95bxPQPq+GV8vMddpH9cFemwds+PlGZmruAeyWciIxVWBQWOcQj
 0XJi4Fphy2FhfAXy5AR2HJjj25PeivA99yE5yBMmbIaiPAqRbc33k25UBfACTJnIrKL2
 /cGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=POJUUWt1MFPOM3h57wm7ZLoYvrjx8cgXX5L8pirMN6k=;
 b=O0VTQSJ4xN5sjEDwno0O5UduC5HHo3JoJObtWi3ZOuR1+NgEWgAf5stxtGUiwxDR1F
 RnvJOFq357ZSXeMFq6A01atVzT/r82q+eT7mb/+ksNTPqOImZAgD7jXm4CpMKENnkdJ7
 prLLfkNe0qJtxmh++h4aLJB9z4yx/YygxcIkjU3pB8i80NbyGYsnPQK0bh2+0x9Mm/8K
 Py0xIQTxC6BNrZa9v13AddXPyQij08r0S346Kgm95lJtO/vUXVRWcV0+sdu7v42Gw75R
 fO7AR2r/mEZMN1pl+2QfigPnk65cFtxx0N0JSI2HtOX1NuvKpOJ5agLdvP3vJLqI4R92
 Fi3Q==
X-Gm-Message-State: AOAM530Y7KY5sbkflNk4A2N8us7tiZ1+iNKUpiJWNKVzv+oravsgVGgJ
 khavC+oOm1b4lU/Od/mokVo=
X-Google-Smtp-Source: ABdhPJyjK0eEebdNtip4vguQ4a4r+w/iv7Sj3JgwhAfLseE1w/u7CT/iKwI06+W/WwrowuHbuPOu5w==
X-Received: by 2002:aa7:9a4a:0:b029:155:323e:adae with SMTP id
 x10-20020aa79a4a0000b0290155323eadaemr16056891pfj.70.1603104698282; 
 Mon, 19 Oct 2020 03:51:38 -0700 (PDT)
Received: from ubuntu204 ([103.108.75.206])
 by smtp.gmail.com with ESMTPSA id bj17sm11408865pjb.15.2020.10.19.03.51.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 19 Oct 2020 03:51:37 -0700 (PDT)
Date: Mon, 19 Oct 2020 16:21:32 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: Ian Abbott <abbotti@mev.co.uk>
Subject: Re: [PATCH 1/2] staging: comedi: Simplify conditional evaluation
Message-ID: <20201019105132.GA9681@ubuntu204>
References: <0fbce7fd820c72b6dd6dc8964d4bdaf433e39540.1603050372.git.mh12gx2825@gmail.com>
 <90da78e2-eaa3-1174-744e-5ab6a49eb338@mev.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <90da78e2-eaa3-1174-744e-5ab6a49eb338@mev.co.uk>
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
Cc: devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Oct 19, 2020 at 11:17:38AM +0100, Ian Abbott wrote:
> On 18/10/2020 20:48, Deepak R Varma wrote:
> > Boolean comparison of the condition inside unittest function is
> > unnecessary and can be simplified by directly using the condition
> > outcome for evaluation. Issue reported by :
> > scripts/coccinelle/misc/boolinit.cocci
> > 
> > Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
> > ---
> >   drivers/staging/comedi/drivers/tests/ni_routes_test.c | 8 ++++----
> >   1 file changed, 4 insertions(+), 4 deletions(-)
> > 
> > diff --git a/drivers/staging/comedi/drivers/tests/ni_routes_test.c b/drivers/staging/comedi/drivers/tests/ni_routes_test.c
> > index eaefaf596a37..7db83cf5e4aa 100644
> > --- a/drivers/staging/comedi/drivers/tests/ni_routes_test.c
> > +++ b/drivers/staging/comedi/drivers/tests/ni_routes_test.c
> > @@ -499,13 +499,13 @@ void test_route_register_is_valid(void)
> >   	const struct ni_route_tables *T = &private.routing_tables;
> >   	init_pci_fake();
> > -	unittest(route_register_is_valid(4, O(4), T) == false,
> > +	unittest(!route_register_is_valid(4, O(4), T),
> >   		 "check for bad source 4-->4\n");
> > -	unittest(route_register_is_valid(0, O(1), T) == true,
> > +	unittest(!route_register_is_valid(0, O(1), T),
> >   		 "find first source\n");
> > -	unittest(route_register_is_valid(4, O(6), T) == true,
> > +	unittest(!route_register_is_valid(4, O(6), T),
> >   		 "find middle source\n");
> > -	unittest(route_register_is_valid(9, O(8), T) == true,
> > +	unittest(!route_register_is_valid(9, O(8), T),
> >   		 "find last source");
> >   }
> 
> NAK.
> 
> It looks like you have inadvertently inverted some of the tests.

Hi Ian,
Thank you for catching that. I am correcting it and will send a v2
shortly.

Deepak.

> 
> -- 
> -=( Ian Abbott <abbotti@mev.co.uk> || MEV Ltd. is a company  )=-
> -=( registered in England & Wales.  Regd. number: 02862268.  )=-
> -=( Regd. addr.: S11 & 12 Building 67, Europa Business Park, )=-
> -=( Bird Hall Lane, STOCKPORT, SK3 0XA, UK. || www.mev.co.uk )=-
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
