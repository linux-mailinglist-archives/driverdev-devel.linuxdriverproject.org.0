Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 288C23166D8
	for <lists+driverdev-devel@lfdr.de>; Wed, 10 Feb 2021 13:36:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 93E3486779;
	Wed, 10 Feb 2021 12:36:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gSyt64q6iFc3; Wed, 10 Feb 2021 12:36:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id BFF3986769;
	Wed, 10 Feb 2021 12:36:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 625EC1BF861
 for <devel@linuxdriverproject.org>; Wed, 10 Feb 2021 12:36:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 5EF8386155
 for <devel@linuxdriverproject.org>; Wed, 10 Feb 2021 12:36:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HpfDT0gafq8m for <devel@linuxdriverproject.org>;
 Wed, 10 Feb 2021 12:36:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com
 [209.85.128.54])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1E65585D17
 for <devel@driverdev.osuosl.org>; Wed, 10 Feb 2021 12:36:07 +0000 (UTC)
Received: by mail-wm1-f54.google.com with SMTP id y134so1715754wmd.3
 for <devel@driverdev.osuosl.org>; Wed, 10 Feb 2021 04:36:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=hDKOpaktEStTreJr6wPyslF3miCA2TzjjN6jRt7iPts=;
 b=MrdG9kg6X4KPiSGmo1DrNL18ceyfSYusJI3mskQH0LSvKNMm/WYcibKYxde2grkDwA
 lfRYUMI+VGtFN6mcff2wRbB1VDk/nfeGXF+thBLQWEY7pglU3AujIpTInlvDRDqQmHbF
 X9nSW12/I7Fc9rss3x+U4UClyuNyAX5HmHZD+36pZ33Syrsvcbc3BB9GM7IShNPKO4Az
 BJUPdcg+DolMWdEKLgP5kF5tDx4V7+JCDHlR5TwGMqvtRTPw2mYkVFuKxD+BPUZJnYPz
 UK8NejyKFQehkmOWOhWe7zmeTijKvVaQUJ2bY7dQc/jWeMJEoSqbrkApJovnC2LXV4uR
 kAwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=hDKOpaktEStTreJr6wPyslF3miCA2TzjjN6jRt7iPts=;
 b=YHD+vilseopn4fd93rkvWEa+GKvDC4J5QaetpzcU3ip72QKPXZa3sIf9aNc3OW7+Tv
 fb3ROGyA0i1F+CZIXZEChjuMSJ3nJPTa/In4wwkERCEdyt18uplslANOmiNGBAC5TgZe
 /FW6xl4DL2kNkygZlE996cG7W88QJNydu1q9gFbaM+wggoD6X4pPzyjmIYlnmWifLdkz
 e2CDj8ByfuTwZg0JNJ0ova0k+evwaQngZX/m1TrSljMGuH6F1KWumM1PgyyCPnqZqHyv
 8gFcoezgqj/e+NWahw3kxEMYxdWmcSLBbgAq/6u0+rLVdtig5bB5Ct4pQhmRra8vzkaA
 ODbg==
X-Gm-Message-State: AOAM530ofZ8KJw0C7pyx1UPb2/xn8o9oj+sKKwGwsQVx2HYnD2vcXj+5
 bnTMEBfZU0AYRsKgh8umRwY=
X-Google-Smtp-Source: ABdhPJwMyaa98MzWtViUgyDn/EoQoFW2AbbhBoAJhFVNN/hjyjBxi4bL5f3ApCiy1wnIScJOHnwxOA==
X-Received: by 2002:a05:600c:4314:: with SMTP id
 p20mr2778220wme.52.1612960565373; 
 Wed, 10 Feb 2021 04:36:05 -0800 (PST)
Received: from localhost ([49.207.131.89])
 by smtp.gmail.com with ESMTPSA id i10sm3152614wrp.0.2021.02.10.04.36.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Feb 2021 04:36:04 -0800 (PST)
Date: Wed, 10 Feb 2021 18:05:53 +0530
From: Aakash Hemadri <aakashhemadri123@gmail.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH] staging: ralink-gdma: Fix checkpatch.pl CHECK
Message-ID: <20210210123553.bzkipyhvedvlcvcc@xps.yggdrail>
References: <20210210120348.262328-1-aakashhemadri123@gmail.com>
 <20210210121915.GX2696@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210210121915.GX2696@kadam>
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
 linux-kernel-mentees@lists.linuxfoundation.org, linux-kernel@vger.kernel.org,
 Shuah Khan <skhan@linuxfoundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 21/02/10 03:19PM, Dan Carpenter wrote:
> On Wed, Feb 10, 2021 at 05:33:48PM +0530, Aakash Hemadri wrote:
> > Remove CHECK: Lines should not end with a '('
> >
> > Signed-off-by: Aakash Hemadri <aakashhemadri123@gmail.com>
> > ---
> >
> >  drivers/staging/ralink-gdma/ralink-gdma.c | 28 ++++++++++++-----------
> >  1 file changed, 15 insertions(+), 13 deletions(-)
> >
> > diff --git a/drivers/staging/ralink-gdma/ralink-gdma.c b/drivers/staging/ralink-gdma/ralink-gdma.c
> > index 655df317d0ee..a11f915f3308 100644
> > --- a/drivers/staging/ralink-gdma/ralink-gdma.c
> > +++ b/drivers/staging/ralink-gdma/ralink-gdma.c
> > @@ -135,8 +135,7 @@ struct gdma_data {
> >  	int (*start_transfer)(struct gdma_dmaengine_chan *chan);
> >  };
> >
> > -static struct gdma_dma_dev *gdma_dma_chan_get_dev(
> > -	struct gdma_dmaengine_chan *chan)
> > +static struct gdma_dma_dev *gdma_dma_chan_get_dev(struct gdma_dmaengine_chan *chan)
> >  {
> >  	return container_of(chan->vchan.chan.device, struct gdma_dma_dev,
> >  		ddev);
> > @@ -510,10 +509,11 @@ static void gdma_dma_issue_pending(struct dma_chan *c)
> >  	spin_unlock_irqrestore(&chan->vchan.lock, flags);
> >  }
> >
> > -static struct dma_async_tx_descriptor *gdma_dma_prep_slave_sg(
> > -		struct dma_chan *c, struct scatterlist *sgl,
> > -		unsigned int sg_len, enum dma_transfer_direction direction,
> > -		unsigned long flags, void *context)
> > +static struct dma_async_tx_descriptor
> > +	*gdma_dma_prep_slave_sg(struct dma_chan *c, struct scatterlist *sgl,
>
> Don't do it like this...  The original code is better so, I guess, lets
> leave it as is.  There are two accepted ways to start a function in the
> kernel:
>
> ONE:
> static type
> function_name(paramenters)
>
> TWO
> static type function_name(paramenters)
>
> Either option will let you grep for the names of the functions:
>
> 	egrep "^[a-zA-Z]" dir/file.c | grep '('
>
> regards,
> dan carpenter
>
>

Appreciate the explanation,
Will drop it

thanks,
aakash hemadri
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
