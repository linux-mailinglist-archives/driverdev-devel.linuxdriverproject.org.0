Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DEA7C16B6B9
	for <lists+driverdev-devel@lfdr.de>; Tue, 25 Feb 2020 01:30:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 4D0E92151F;
	Tue, 25 Feb 2020 00:30:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ebr2u1BjojSX; Tue, 25 Feb 2020 00:30:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 2C8A62079D;
	Tue, 25 Feb 2020 00:30:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E1B9F1BF3B0
 for <devel@linuxdriverproject.org>; Tue, 25 Feb 2020 00:30:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id DCD0A86717
 for <devel@linuxdriverproject.org>; Tue, 25 Feb 2020 00:30:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id btkemZWWg2HZ for <devel@linuxdriverproject.org>;
 Tue, 25 Feb 2020 00:30:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 694C2864E0
 for <devel@driverdev.osuosl.org>; Tue, 25 Feb 2020 00:30:23 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id n7so6256500pfn.0
 for <devel@driverdev.osuosl.org>; Mon, 24 Feb 2020 16:30:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=l/HYeO0SZpS2mVUEBc8APQcdfzEO6/5KedHOJbsf1+0=;
 b=d+skt2sBbLEVjHlgxNGLIubTJBeEodN4PlxOzAs5oAvGHhQqltucdP6v5tOf6XcYMX
 cRz6VpU8Q2zwK8I/YGoCcvi2U8KE6bVvbziI5ANX7sDgjF5OCQugJ/0MUpMlvShH3mvr
 +Rhyagz/9IKvIMjzA/UDGl/8uCo79t8W2QIeuDZM6m3u8Rmb7/Rz4UdPG/y1yQuHePZf
 iKxR+9gGm2tepBJIw9wJjT4/OBOO13/XPzB7vsspr6WqM8jZ5PilKldvGJi/7DQxKlj/
 KejvBoO03k0GXlqOD0ip8YO01dxBuBwlvnnbHz4gvCTA7rdrzpfSrSfCc6/K76/bi15e
 i36g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=l/HYeO0SZpS2mVUEBc8APQcdfzEO6/5KedHOJbsf1+0=;
 b=MMIKyI5mGQ2TM8JP86bTvTFSUaVFsAw7MRG3MSjkUU5Ap5Q+53qbzawsP9nDZ0LRun
 Fdk1mHAuzt43FOh+PT6xKmnp8/BxrieTXc+Lu/U29YkVI0N5LJvtVKF7gZVEnuZ5T5O9
 LYnjozqcQQ307LoBPbd/zVDC6D9QCjFxTd2hUwjLTZMBAuzTXCEjkDCFWZPi0643/mND
 fMxq5LJBBfySKshXdn8LFmyfk5ZJhEFJFSpFFe441LtBDsnWrtlDszMV0tc92jQN5pPT
 EO7RqT9yP9d409CHEgQaYgdvUoYto6jt+1ki//yhcR6opcZKEZgT7ozuW0+2dBmcHMI9
 /Q6g==
X-Gm-Message-State: APjAAAUYdzkfNMCVMa4ow0dRh0iMMdU7pBdFVziaprZzLmtXITooAkLj
 GBuWvJxGd9LJlKEgzb59m3M=
X-Google-Smtp-Source: APXvYqx/y0zhrSvkI4rUBOZfz0EjA3mPwVjbL5QtqAqm8B32FetJzyy3bYZGWGpfGrC3ye4Nc8uDsA==
X-Received: by 2002:a63:1044:: with SMTP id 4mr57319701pgq.412.1582590622846; 
 Mon, 24 Feb 2020 16:30:22 -0800 (PST)
Received: from f3 (ag119225.dynamic.ppp.asahi-net.or.jp. [157.107.119.225])
 by smtp.gmail.com with ESMTPSA id y190sm14543502pfb.82.2020.02.24.16.30.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 24 Feb 2020 16:30:21 -0800 (PST)
Date: Tue, 25 Feb 2020 09:30:16 +0900
From: Benjamin Poirier <benjamin.poirier@gmail.com>
To: Kaaira Gupta <kgupta@es.iitr.ac.in>
Subject: Re: [PATCH] staging: qlge: add braces around macro arguments
Message-ID: <20200225003016.GA360989@f3>
References: <20200221195649.GA18450@kaaira-HP-Pavilion-Notebook>
 <20200224053225.GB312634@f3>
 <20200224075231.GA4806@kaaira-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200224075231.GA4806@kaaira-HP-Pavilion-Notebook>
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

On 2020/02/24 13:22 +0530, Kaaira Gupta wrote:
> On Mon, Feb 24, 2020 at 02:32:25PM +0900, Benjamin Poirier wrote:
> > On 2020/02/22 01:26 +0530, Kaaira Gupta wrote:
> > > Fix checkpatch.pl warnings of adding braces around macro arguments to
> > > prevent precedence issues by adding braces in qlge_dbg.c
> > > 
> > > Signed-off-by: Kaaira Gupta <kgupta@es.iitr.ac.in>
> > > ---
> > >  drivers/staging/qlge/qlge_dbg.c | 6 +++---
> > >  1 file changed, 3 insertions(+), 3 deletions(-)
> > > 
> > > diff --git a/drivers/staging/qlge/qlge_dbg.c b/drivers/staging/qlge/qlge_dbg.c
> > > index 8cf39615c520..c7af2548d119 100644
> > > --- a/drivers/staging/qlge/qlge_dbg.c
> > > +++ b/drivers/staging/qlge/qlge_dbg.c
> > > @@ -1525,7 +1525,7 @@ void ql_dump_regs(struct ql_adapter *qdev)
> > >  #ifdef QL_STAT_DUMP
> > >  
> > >  #define DUMP_STAT(qdev, stat)	\
> > > -	pr_err("%s = %ld\n", #stat, (unsigned long)qdev->nic_stats.stat)
> > > +	pr_err("%s = %ld\n", #stat, (unsigned long)(qdev)->nic_stats.stat)
> > >  
> > >  void ql_dump_stat(struct ql_adapter *qdev)
> > >  {
> > > @@ -1578,12 +1578,12 @@ void ql_dump_stat(struct ql_adapter *qdev)
> > >  #ifdef QL_DEV_DUMP
> > >  
> > >  #define DUMP_QDEV_FIELD(qdev, type, field)		\
> > > -	pr_err("qdev->%-24s = " type "\n", #field, qdev->field)
> > > +	pr_err("qdev->%-24s = " type "\n", #field, (qdev)->(field))
> > >  #define DUMP_QDEV_DMA_FIELD(qdev, field)		\
> > >  	pr_err("qdev->%-24s = %llx\n", #field, (unsigned long long)qdev->field)
> >                                                                    ^^^^
> > You missed one.
> 
> It makes the line characaters greater than 80. Shall I still add braces?
> I mean it's better that I add them to prevent precedence issues, but it
> adds another warning, hence I wasn't sure.

Generally speaking, it's ok to spread the macro body onto multiple
lines.
In this case, it would be better to replace this printk format type with
"%pad". See Documentation/core-api/printk-formats.rst
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
