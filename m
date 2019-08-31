Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 25E20A41F7
	for <lists+driverdev-devel@lfdr.de>; Sat, 31 Aug 2019 05:48:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4CD1387FED;
	Sat, 31 Aug 2019 03:48:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ksyjFlzZawXm; Sat, 31 Aug 2019 03:47:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D6E4587789;
	Sat, 31 Aug 2019 03:47:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3086C1BF989
 for <devel@linuxdriverproject.org>; Sat, 31 Aug 2019 03:47:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 29BF187789
 for <devel@linuxdriverproject.org>; Sat, 31 Aug 2019 03:47:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HhRUugB2Id1i for <devel@linuxdriverproject.org>;
 Sat, 31 Aug 2019 03:47:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
 [209.85.214.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9BBDA8776C
 for <devel@driverdev.osuosl.org>; Sat, 31 Aug 2019 03:47:55 +0000 (UTC)
Received: by mail-pl1-f193.google.com with SMTP id d3so4213855plr.1
 for <devel@driverdev.osuosl.org>; Fri, 30 Aug 2019 20:47:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:date:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=yvj22pKsTnN55dr342mORvtOeCDZfEMR6FT1RYtpiQ4=;
 b=MpBtAe0awJ1+HulguMUZ+P7g0cX3vj4PqDf92ZYfTchSs71weYGGlctQPeHwLoYjz9
 Eo3czEO4PDKIgifu3aZpJrQnzAHHrXDqS4mkQyV+yXgL8paUGLF+6L2dkgdjZJi1BfnH
 mcZ5Lcf01VM0vcDeD3LTcWckqMMylSbJd6JXzmry6cYUp3lfe2UESZS1Zgiw2//4L6UD
 oq7U0NKs9YU3/QCOjysK+ASvi8ofh0ONSaXwGatz3slUaq8XGrj8ORFY8K6CzWhlA4r5
 1m8GT2N+d4rpfs7XlR9S31ylTTULpWWfANQN977BKysViQo14b9/O4JYJsOK9DyD/D3M
 QI4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=yvj22pKsTnN55dr342mORvtOeCDZfEMR6FT1RYtpiQ4=;
 b=aGJIeGkyH6Hjdf971byWsLweV2lGJMyIRmWL6DMnhLR1rAgi7T/L6sE70R60c+bqO8
 4Z64SizIc8NPVdrukU7R+UQAthn3OTtxRutnHaxwCKDMJE42p2CG/EkHxBjTTxzJx6Xm
 EWoz8cnjsuRDExiRu/WYzfmRK+mAmJiQalmS/E4pdKTPDXMouc5uk2fPe9RIpB3peARJ
 HTbegw4K4uXxCJsv5l5yGkQjJZ5khnn7IjOIjch4ODalYVEB2yOP7YusWCyKHsNHmVJo
 JRv4zWZzictBQKVe0u0jDl6kDaCIOyipNZBDkBXfvjMUHY6nNqUufRi9nnNgwOqJlcaH
 H09g==
X-Gm-Message-State: APjAAAW4NWi0GHQPL7sU7eeEJ0whK21r4zQW7zLLqetsqZVMYR1lq7y1
 KOdiau4tr4+/H9lCyUPXIPc=
X-Google-Smtp-Source: APXvYqyYh830X5nmk422I7s0sLXWmH4x90+uW/Fk2xfjbXPS32+k26ISBqqb7UcVro5gFB4U7tLNKA==
X-Received: by 2002:a17:902:d717:: with SMTP id
 w23mr19358805ply.321.1567223274931; 
 Fri, 30 Aug 2019 20:47:54 -0700 (PDT)
Received: from dell-inspiron ([117.220.112.196])
 by smtp.gmail.com with ESMTPSA id s24sm6724794pgm.3.2019.08.30.20.47.52
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 30 Aug 2019 20:47:54 -0700 (PDT)
From: P Sai Prasanth <saip2823@gmail.com>
X-Google-Original-From: P Sai Prasanth <beowulf@dell-inspiron>
Date: Sat, 31 Aug 2019 09:17:48 +0530
To: Joe Perches <joe@perches.com>
Subject: Re: [PATCH v3] staging: rts5208: Fix checkpath warning
Message-ID: <20190831034748.GB23177@dell-inspiron>
References: <20190831022515.GA4917@dell-inspiron>
 <3dc5ac616a3c2bfc48b8b3dfa1213532610b6431.camel@perches.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3dc5ac616a3c2bfc48b8b3dfa1213532610b6431.camel@perches.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 19-08-30 19:58:09, Joe Perches wrote:
> On Sat, 2019-08-31 at 07:55 +0530, P SAI PRASANTH wrote:
> > This patch fixes the following checkpath warning
> > in the file drivers/staging/rts5208/rtsx_transport.c:546
> > 
> > WARNING: line over 80 characters
> > +                               option = RTSX_SG_VALID | RTSX_SG_END |
> > RTSX_SG_TRANS_DATA;
> []
> > diff --git a/drivers/staging/rts5208/rtsx_transport.c b/drivers/staging/rts5208/rtsx_transport.c
> []
> > @@ -540,11 +540,10 @@ static int rtsx_transfer_sglist_adma(struct rtsx_chip *chip, u8 card,
> >  
> >  			dev_dbg(rtsx_dev(chip), "DMA addr: 0x%x, Len: 0x%x\n",
> >  				(unsigned int)addr, len);
> > -
> > +
> 
> This same line delete then insert the same blank line
> is very unusual.
> 
> What did you use to create this patch?
> 
> > +			option = RTSX_SG_VALID | RTSX_SG_TRANS_DATA;
> >  			if (j == (sg_cnt - 1))
> > -				option = RTSX_SG_VALID | RTSX_SG_END | RTSX_SG_TRANS_DATA;
> > -			else
> > -				option = RTSX_SG_VALID | RTSX_SG_TRANS_DATA;
> > +				option |= RTSX_SG_END;
> >  
> >  			rtsx_add_sg_tbl(chip, (u32)addr, (u32)len, option);
> >  
>
I have used vim for creating this patch. Upon checking, there is an extra tab on
the new blankline which has been added. I'm sending an update immediately.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
