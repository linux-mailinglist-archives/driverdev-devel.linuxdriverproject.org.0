Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E8DD328202
	for <lists+driverdev-devel@lfdr.de>; Mon,  1 Mar 2021 16:15:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 93D22430C7;
	Mon,  1 Mar 2021 15:15:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 46NlbdiN6chd; Mon,  1 Mar 2021 15:15:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id DEF91430AF;
	Mon,  1 Mar 2021 15:15:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 268E11BF95E
 for <devel@linuxdriverproject.org>; Mon,  1 Mar 2021 15:15:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 160BD430A3
 for <devel@linuxdriverproject.org>; Mon,  1 Mar 2021 15:15:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OLalfzNKbqTN for <devel@linuxdriverproject.org>;
 Mon,  1 Mar 2021 15:15:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com
 [209.85.208.176])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D4FF74308F
 for <devel@driverdev.osuosl.org>; Mon,  1 Mar 2021 15:15:33 +0000 (UTC)
Received: by mail-lj1-f176.google.com with SMTP id k12so10807303ljg.9
 for <devel@driverdev.osuosl.org>; Mon, 01 Mar 2021 07:15:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=R7/iIj6EbH5N+oklRBw4i1togkeztVdJPjTtluVJh9A=;
 b=PrnTvzKvn2z+pMBtURjoJSLlLuKrh1D70JnYsZ3ltQWRzzJf45EOxgSyggWcR16j6/
 D3UKz5ok0V+OACdWC6f6pgsipcAs8pER5/iB9h72fIiELLLzuiJj+T58HPuNEsN+d0l8
 R8YfTt++mBMd4G+ThDbLdIBx0xB5Xt3XAYrIkycJ8Wy1gB8V45+/m3/U894jLzvn52fq
 +ytDMOsJGGxhYjXxLhnVcY+a2JkBxeqKkQ4ptSq8Z71PN0O5l58XFAl6PALZouNGRpI7
 CHgegBXT4QzG0vC3c64EZLlZn2GOFI50r+fdMQ7KnivTN9TrChuBhtK+d9AurQBfxWLR
 xCrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=R7/iIj6EbH5N+oklRBw4i1togkeztVdJPjTtluVJh9A=;
 b=LhSpPpTFdNMzae49eRBNHhChwMNw4B+qwinyYVyt3XEwcYkicinhosUqpvbULmbVoW
 mJQiK10hCk8HELcmPHYQu1XSlyYrxcUDNG5fAcpX/o45ivWKo3jkuE9vdOUioazWHuRz
 sGp7d4rkUuMufBZaz6cK2xUWqbZ35eKBrHO68seRmT9m2qc852SCwIGjLvus1eXlYoLl
 AF1XlZPXT1TNIhIJr4I68VvMIgLckrAl0Y1eo454iqLlvce2lnLQEonFYiflWF7a4ZYG
 miHqSg3PsAnE3u4s/PH1rp5V6Wh+SyG7UUg9mIubVKKp1wkHVBTrlBaZgMalM/kEOZYv
 jSQQ==
X-Gm-Message-State: AOAM530XosY29/xOJaYgltQuaKP8NXs8ZoqWLOwBmzzbstAqjVXDHQF5
 G5J9yc588bxIpI+lxxhITA==
X-Google-Smtp-Source: ABdhPJxplSz2K2AC9Y+v2F6sEepF2tJFJxTFQH7UlAqofhTiC2nSz472NDQHEiHFyDpc3sevDA8m3Q==
X-Received: by 2002:a2e:9dc2:: with SMTP id x2mr4817393ljj.306.1614611731496; 
 Mon, 01 Mar 2021 07:15:31 -0800 (PST)
Received: from mainframe ([139.193.28.239])
 by smtp.gmail.com with ESMTPSA id m19sm990552lfj.82.2021.03.01.07.15.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 01 Mar 2021 07:15:31 -0800 (PST)
Date: Mon, 1 Mar 2021 22:15:18 +0700
From: Candy Febriyanto <cfebriyanto@gmail.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH v2 3/3] staging: rtl8723bs: os_dep: Replace sprintf with
 scnprintf
Message-ID: <YD0FBv0tlaQ4uQdx@mainframe>
References: <cover.1614610197.git.cfebriyanto@gmail.com>
 <d76c5f1db8dbf02ac0ab954b0971ce24e5a8b9bd.1614610197.git.cfebriyanto@gmail.com>
 <20210301150725.GT2087@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210301150725.GT2087@kadam>
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org, hdegoede@redhat.com,
 Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Mar 01, 2021 at 06:07:25PM +0300, Dan Carpenter wrote:
> On Mon, Mar 01, 2021 at 10:00:11PM +0700, Candy Febriyanto wrote:
> > The use of sprintf with format string here means that there is a risk
> > that the writes will go out of bounds, replace it with scnprintf.
> > 
> > In one block of the translate_scan function sprintf is only called once
> > (it's not being used to concatenate strings) so there is no need to keep
> > the pointer "p", remove it.
> > 
> > Signed-off-by: Candy Febriyanto <cfebriyanto@gmail.com>
> > ---
> 
> Looks good.  TBH, v1 was also fine.  I should have just acked it instead
> of commenting...
> 
> Reviewed-by: Dan Carpenter <dan.carpenter@oracle.com>
> 
> regards,
> dan carpenter
> 

Thanks for the review!
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
