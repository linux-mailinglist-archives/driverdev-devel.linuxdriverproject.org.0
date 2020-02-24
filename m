Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 444F8169F8D
	for <lists+driverdev-devel@lfdr.de>; Mon, 24 Feb 2020 08:52:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B1F2F86EC0;
	Mon, 24 Feb 2020 07:52:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Gs8KoRnA1ZUO; Mon, 24 Feb 2020 07:52:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 25A3E86D88;
	Mon, 24 Feb 2020 07:52:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7B36E1BF418
 for <devel@linuxdriverproject.org>; Mon, 24 Feb 2020 07:52:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 77F4086196
 for <devel@linuxdriverproject.org>; Mon, 24 Feb 2020 07:52:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HkITpyhclkt2 for <devel@linuxdriverproject.org>;
 Mon, 24 Feb 2020 07:52:40 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f66.google.com (mail-pj1-f66.google.com
 [209.85.216.66])
 by whitealder.osuosl.org (Postfix) with ESMTPS id EC62085A5B
 for <devel@driverdev.osuosl.org>; Mon, 24 Feb 2020 07:52:38 +0000 (UTC)
Received: by mail-pj1-f66.google.com with SMTP id r67so3813756pjb.0
 for <devel@driverdev.osuosl.org>; Sun, 23 Feb 2020 23:52:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=es-iitr-ac-in.20150623.gappssmtp.com; s=20150623;
 h=from:date:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=JijnfBoe2ezLgS/FxMC63FZES23LOalpXpAlXAEnkhA=;
 b=DcLj9+eR5e8Z4uahIyGYgjyx4asQksO/6H7tqTCiZ6ERfAPF/l2l4Gx20nc21kdKSf
 Ovh7VLoKklpjR93rugpizvQciSbhNyatHlCpE8Ic4SvsREmGNVU9Kw3tIsUI8/KQnx9g
 Ok6nza4rtKo7fJTnSCu6r3udQea/Wi/osvs4JG7f+B4fZkvENiQA88Imd9D0A9wPHuaR
 tFB8FmVTv97otuDupeQIpaBmgoslav9LgPUwXsQB+e6NczzgMDJ64HBPfgeZOltQkSDR
 Xk9UIgv1f4PUZ38jiTxjrAkwEO8my1L2wo2oyEJiYGoa/1FCP7KsOf+GYhzpEbCdMB2R
 c9cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=JijnfBoe2ezLgS/FxMC63FZES23LOalpXpAlXAEnkhA=;
 b=P91AoAfCXsCiteeicdmggAQhSlQtDtbT9iYf+v1KPB7Wsa1RlCIQOpafyxnd3Xds7m
 w2FRYJD3lLiMXnv0OdPKuTwb4RKw0LKcTaAEScioHJfo22vpmiuhVDgEjFFWXMzliUZv
 1FewK8l9rYFdm0ptds4UjmV8ezBk/o8Lsf/tlghB0ecqPzmmPhSUd8BJdypMEDn+RTkc
 fSls2B/EBtE6d90Mb37zwwoo82aktUSU3WUWg4R1JSs+JP9Zo4Lwc65P/rRXHH/X8MUX
 p2uKzJ7pi/g7wMy7xN5qmSX1KjpK//4EmAbVl2XWHyykddYVvfs2agmw9wAaUXCkztdI
 HVEQ==
X-Gm-Message-State: APjAAAUKBolmXOTd4RJBt+wiRkZ8vHKZTyH35uqMvwNgMsTcN4Ce+8eD
 YxMxwzOHKYe/RgChnFNGpw3Zqg==
X-Google-Smtp-Source: APXvYqxzheO72TA6WZPdEj47HYIj6iN5kdSApzc51FTGN+6EQ9pY76cexAxwtDaeyiTiJzQsK9ooOw==
X-Received: by 2002:a17:90a:da03:: with SMTP id
 e3mr19005507pjv.57.1582530757523; 
 Sun, 23 Feb 2020 23:52:37 -0800 (PST)
Received: from kaaira-HP-Pavilion-Notebook ([103.37.201.171])
 by smtp.gmail.com with ESMTPSA id z10sm11442677pgz.88.2020.02.23.23.52.34
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 23 Feb 2020 23:52:36 -0800 (PST)
From: Kaaira Gupta <kgupta@es.iitr.ac.in>
X-Google-Original-From: Kaaira Gupta <Kaairakgupta@es.iitr.ac.in>
Date: Mon, 24 Feb 2020 13:22:31 +0530
To: Benjamin Poirier <benjamin.poirier@gmail.com>
Subject: Re: [PATCH] staging: qlge: add braces around macro arguments
Message-ID: <20200224075231.GA4806@kaaira-HP-Pavilion-Notebook>
References: <20200221195649.GA18450@kaaira-HP-Pavilion-Notebook>
 <20200224053225.GB312634@f3>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200224053225.GB312634@f3>
User-Agent: Mutt/1.9.4 (2018-02-28)
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
Cc: devel@driverdev.osuosl.org, GR-Linux-NIC-Dev@marvell.com,
 Manish Chopra <manishc@marvell.com>, gregkh@linxfoundation.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Feb 24, 2020 at 02:32:25PM +0900, Benjamin Poirier wrote:
> On 2020/02/22 01:26 +0530, Kaaira Gupta wrote:
> > Fix checkpatch.pl warnings of adding braces around macro arguments to
> > prevent precedence issues by adding braces in qlge_dbg.c
> > 
> > Signed-off-by: Kaaira Gupta <kgupta@es.iitr.ac.in>
> > ---
> >  drivers/staging/qlge/qlge_dbg.c | 6 +++---
> >  1 file changed, 3 insertions(+), 3 deletions(-)
> > 
> > diff --git a/drivers/staging/qlge/qlge_dbg.c b/drivers/staging/qlge/qlge_dbg.c
> > index 8cf39615c520..c7af2548d119 100644
> > --- a/drivers/staging/qlge/qlge_dbg.c
> > +++ b/drivers/staging/qlge/qlge_dbg.c
> > @@ -1525,7 +1525,7 @@ void ql_dump_regs(struct ql_adapter *qdev)
> >  #ifdef QL_STAT_DUMP
> >  
> >  #define DUMP_STAT(qdev, stat)	\
> > -	pr_err("%s = %ld\n", #stat, (unsigned long)qdev->nic_stats.stat)
> > +	pr_err("%s = %ld\n", #stat, (unsigned long)(qdev)->nic_stats.stat)
> >  
> >  void ql_dump_stat(struct ql_adapter *qdev)
> >  {
> > @@ -1578,12 +1578,12 @@ void ql_dump_stat(struct ql_adapter *qdev)
> >  #ifdef QL_DEV_DUMP
> >  
> >  #define DUMP_QDEV_FIELD(qdev, type, field)		\
> > -	pr_err("qdev->%-24s = " type "\n", #field, qdev->field)
> > +	pr_err("qdev->%-24s = " type "\n", #field, (qdev)->(field))
> >  #define DUMP_QDEV_DMA_FIELD(qdev, field)		\
> >  	pr_err("qdev->%-24s = %llx\n", #field, (unsigned long long)qdev->field)
>                                                                    ^^^^
> You missed one.

It makes the line characaters greater than 80. Shall I still add braces?
I mean it's better that I add them to prevent precedence issues, but it
adds another warning, hence I wasn't sure.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
