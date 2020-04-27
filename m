Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CC411BA3C2
	for <lists+driverdev-devel@lfdr.de>; Mon, 27 Apr 2020 14:46:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C253284EC1;
	Mon, 27 Apr 2020 12:36:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8ypO2KRjuPd2; Mon, 27 Apr 2020 12:36:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8ED0E845D4;
	Mon, 27 Apr 2020 12:36:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3AFAB1BF3AA
 for <devel@linuxdriverproject.org>; Mon, 27 Apr 2020 12:36:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 3609C84AB2
 for <devel@linuxdriverproject.org>; Mon, 27 Apr 2020 12:36:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QmJ+xzHZj99a for <devel@linuxdriverproject.org>;
 Mon, 27 Apr 2020 12:36:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f68.google.com (mail-ed1-f68.google.com
 [209.85.208.68])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C211984763
 for <devel@driverdev.osuosl.org>; Mon, 27 Apr 2020 12:36:29 +0000 (UTC)
Received: by mail-ed1-f68.google.com with SMTP id f12so13269693edn.12
 for <devel@driverdev.osuosl.org>; Mon, 27 Apr 2020 05:36:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=PLUp+H7tLoE7SqL2B/5Sr5RyPMPq2y7xz4BTXAvd9zk=;
 b=Mf1WP5XnzaDH9wPHukRV8bbvRPNRmZ2+SC0Y3EZgsPhYhW+DN+4m+XsX6HAJMlmJFd
 9wjS25y9Zb1+0Z7IxanewEwe1SvR1CymsXiS0Mvyy7I3Ymvn7ek3E7B6bVbN3Gni+Or4
 vlleN1AxUg+T/IJGQ3MDxDoeeQqj6mhCk2Q+1WzBPAMItDnER+7Hv0oOQBpWUVyYUbKl
 YTKdKJ/tk7xyobHPvOf1TOkEVdTCvPggyXpDfakHgb1jrn722RJRqf2B+bx2gaQhJGS8
 lLNnttJpyVU4XSwBqVvcDR7jUydDRzNvqiIUOrzcK+pEu4QoPT8/8y8FbjnLzq553q9v
 utPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=PLUp+H7tLoE7SqL2B/5Sr5RyPMPq2y7xz4BTXAvd9zk=;
 b=NQ7r1q5B4AHroQdgpVy808o9r+SYYm98np4sc1qFDZ9EULQCoaOjOMYmzgl9Kuw0ui
 NLOWkJYI4fZiJoixc4sHmXm9gMfO8xcmq+uhjRNz2WXsjGhXGlu1iEaepyiqiEFnW/cB
 LI1euAknRE5Yqztqfmc1oPN0lvNBNkPC/Tg7gfg+7+O2QFIgdjWkN0Bq/eNcZ7rKHZMT
 Pcj7nueyAmqHa/d0n9yckgkM3aKtN8DBp5NRCZ2YA3W0nOAuqIKJv/L5VhuGaFwFGwWj
 WUNX5d+LtKJ/Q/1ZnG9bbRTvng36kijGUwjAAoy136yxL3aQzTTT8j+XwAy5hNVprqd/
 51jg==
X-Gm-Message-State: AGi0PuYQ2ntID46JKrkrcyb5K4RpLMT5XwZgDzveHCrnqXfQpzyUY90T
 gsFpv7Dc6lZoZRu8MY2GevA=
X-Google-Smtp-Source: APiQypIWrAvc4+fSH7YxABePAo7Zu9cVJBR6VJKr1ooQvQPnNyq7X9TWDSeFjgjWJ2uHKxGNGt1ZSA==
X-Received: by 2002:aa7:dd84:: with SMTP id g4mr14403690edv.257.1587990987953; 
 Mon, 27 Apr 2020 05:36:27 -0700 (PDT)
Received: from localhost
 (ipv6-80adf4751ff4da96.ost.clients.hamburg.freifunk.net.
 [2a03:2267:4:0:80ad:f475:1ff4:da96])
 by smtp.gmail.com with ESMTPSA id z26sm2941505ejb.36.2020.04.27.05.36.26
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 27 Apr 2020 05:36:27 -0700 (PDT)
Date: Mon, 27 Apr 2020 14:36:25 +0200
From: Oliver Graute <oliver.graute@gmail.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH v1] staging: fbtft: fb_st7789v: Initialize the Display
Message-ID: <20200427123625.GE18436@portage>
References: <1586424337-26602-1-git-send-email-oliver.graute@gmail.com>
 <20200409102013.GP2001@kadam> <20200427083642.GD18436@portage>
 <20200427093306.GU2682@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200427093306.GU2682@kadam>
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
Cc: devel@driverdev.osuosl.org, linux-fbdev@vger.kernel.org,
 gregkh@linuxfoundation.org, Oliver Graute <oliver.graute@kococonnector.com>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 27/04/20, Dan Carpenter wrote:
> On Mon, Apr 27, 2020 at 10:36:42AM +0200, Oliver Graute wrote:
> > On 09/04/20, Dan Carpenter wrote:
> > > On Thu, Apr 09, 2020 at 11:25:32AM +0200, Oliver Graute wrote:
> > > > From: Oliver Graute <oliver.graute@kococonnector.com>
> > > > 
> > > > Set Gamma Values and Register Values for the HSD20_IPS
> > > > 
> > > > Signed-off-by: Oliver Graute <oliver.graute@kococonnector.com>
> > > > ---
> > > >  drivers/staging/fbtft/fb_st7789v.c | 12 ++++++------
> > > >  1 file changed, 6 insertions(+), 6 deletions(-)
> > > > 
> > > > diff --git a/drivers/staging/fbtft/fb_st7789v.c b/drivers/staging/fbtft/fb_st7789v.c
> > > > index 84c5af2dc9a0..b0aa96b703a8 100644
> > > > --- a/drivers/staging/fbtft/fb_st7789v.c
> > > > +++ b/drivers/staging/fbtft/fb_st7789v.c
> > > > @@ -17,8 +17,8 @@
> > > >  #define DRVNAME "fb_st7789v"
> > > >  
> > > >  #define DEFAULT_GAMMA \
> > > > -	"70 2C 2E 15 10 09 48 33 53 0B 19 18 20 25\n" \
> > > > -	"70 2C 2E 15 10 09 48 33 53 0B 19 18 20 25"
> > > > +	"D0 05 0A 09 08 05 2E 44 45 0F 17 16 2B 33\n" \
> > > > +	"D0 05 0A 09 08 05 2E 43 45 0F 16 16 2B 33"
> > > 
> > > How do you know this won't break someone else's setup?
> > 
> > Should I declare an extra define for my values?
> > 
> > +#define HSD20_IPS_GAMMA \
> > +	"D0 05 0A 09 08 05 2E 44 45 0F 17 16 2B 33\n" \
> > +	"D0 05 0A 09 08 05 2E 43 45 0F 16 16 2B 33"
> > 
> 
> That's fine, but it can't be a compile time thing.  Both types of
> hardware have to be working/available at run time.

ok, what is the proper way to handover the gamma values during run time?

Best Regards,

Oliver
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
