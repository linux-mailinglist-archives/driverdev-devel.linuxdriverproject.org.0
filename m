Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BAD5C23E774
	for <lists+driverdev-devel@lfdr.de>; Fri,  7 Aug 2020 08:51:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9EA908841E;
	Fri,  7 Aug 2020 06:51:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EK6iHgT1PPfi; Fri,  7 Aug 2020 06:51:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2DB628837C;
	Fri,  7 Aug 2020 06:51:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A13821BF3CA
 for <devel@linuxdriverproject.org>; Fri,  7 Aug 2020 06:51:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 9D5738861A
 for <devel@linuxdriverproject.org>; Fri,  7 Aug 2020 06:51:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8DQnyHf0HB7k for <devel@linuxdriverproject.org>;
 Fri,  7 Aug 2020 06:51:25 +0000 (UTC)
X-Greylist: delayed 05:00:49 by SQLgrey-1.7.6
Received: from mail-ej1-f65.google.com (mail-ej1-f65.google.com
 [209.85.218.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 90D9588612
 for <devel@driverdev.osuosl.org>; Fri,  7 Aug 2020 06:51:25 +0000 (UTC)
Received: by mail-ej1-f65.google.com with SMTP id jp10so978515ejb.0
 for <devel@driverdev.osuosl.org>; Thu, 06 Aug 2020 23:51:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=GEqwqYzm5hBTHtEMjhPr1RMlBJXotR2ShP/q7XiMds8=;
 b=K59azOHEihLKYtrXBJVdrZ9lhi1MRP4V4B+xsIG+UgkqMVo3Lkigc03xj3IsnpNAtz
 aJhPq1/rFY0tVuSGO4AElm7fKIdIwRNJzcWXUbCyGYZ8DAVto/qzsbBENy4k1EHiRFeR
 1YtgZwuRZLSWv8L58z6bY2Yf7qcnOQvWCU8G0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GEqwqYzm5hBTHtEMjhPr1RMlBJXotR2ShP/q7XiMds8=;
 b=R6yNdfY03hbqyfVGEQECbsOPQiFuVbtoL0DtQ96g3z9OySgOE/CagMy2P4Ro+2uZGQ
 V7uconeRyB2UmbZd47rcWNS6wPgjx5jeBTp8NGu7BtXo1Ch/LpSK2GLHZUl/2JBUqLSG
 NoYvFaH8Sdj5HCjHBKAp5PL5ufz7nviDc1NlRO4RFSBj+U+5k4Tge4XmR3ocbQ51FIQR
 SfP3yJqssd6gvpAe+yzMxSELQktazVyLPHMa/wGr8BbF2aK5oxYgBsX3KzmTR17DFFIh
 id2PWykohgm/jL4gwSdCc+cjokAdCwO7YAmhh13tr/p5Dadld+p8zqkVBaeVo0/RdLSN
 CcWg==
X-Gm-Message-State: AOAM531w5NjEyzf833VHnMvr1BuvjCsdTXEOI9Rzioq+JsgFZdUY0FNb
 L4t5ExCc2nHQMJX+slEth9v0ewWhgdCd8TGbjlmBhA==
X-Google-Smtp-Source: ABdhPJycBsYihQ6WLQL2DbLBiaCDD4ezOrWrW6HMoL9l4LCvH6nKVPnySRZpJBF1oivhsog0Z9+pM75cdoeYDcnTiNQ=
X-Received: by 2002:a17:906:38c7:: with SMTP id
 r7mr8318245ejd.118.1596783083914; 
 Thu, 06 Aug 2020 23:51:23 -0700 (PDT)
MIME-Version: 1.0
References: <20200710144520.RESEND.1.Id0f52f486e277b5af30babac8ba6b09589962a68@changeid>
 <20200710070332.GA1175842@kroah.com>
 <CANMq1KDcKWgyYYP_m0-WV7602g7zUbU0PPkvwXxbSTF5vFfKGQ@mail.gmail.com>
 <CANMq1KC7CgUT+neoOUZbnr8MbDgqEikqt2vn8dxAS1rpX=C2aA@mail.gmail.com>
 <20200807062809.GB979264@kroah.com>
In-Reply-To: <20200807062809.GB979264@kroah.com>
From: Nicolas Boichat <drinkcat@chromium.org>
Date: Fri, 7 Aug 2020 14:51:12 +0800
Message-ID: <CANMq1KD_hJ_ST3du7dcSd8GBtdL4d-C1pWbxXz8Wu8w79-2fUg@mail.gmail.com>
Subject: Re: [RESEND PATCH] media: atomisp: Replace trace_printk by pr_info
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
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
Cc: devel@driverdev.osuosl.org, Mauro Carvalho Chehab <mchehab@kernel.org>,
 lkml <linux-kernel@vger.kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Aug 7, 2020 at 2:28 PM Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
>
> On Fri, Aug 07, 2020 at 09:50:23AM +0800, Nicolas Boichat wrote:
> > On Fri, Jul 24, 2020 at 8:41 PM Nicolas Boichat <drinkcat@chromium.org> wrote:
> > >
> > > On Fri, Jul 10, 2020 at 3:03 PM Greg Kroah-Hartman
> > > <gregkh@linuxfoundation.org> wrote:
> > > >
> > > > On Fri, Jul 10, 2020 at 02:45:29PM +0800, Nicolas Boichat wrote:
> > > > > trace_printk should not be used in production code, replace it
> > > > > call with pr_info.
> > > > >
> > > > > Signed-off-by: Nicolas Boichat <drinkcat@chromium.org>
> > > > > ---
> > > > > Sent this before as part of a series (whose 4th patch was a
> > > > > change that allows to detect such trace_printk), but maybe it's
> > > > > easier to get individual maintainer attention by splitting it.
> > > >
> > > > Mauro should take this soon:
> > > >
> > > > Acked-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> > >
> > > Mauro: did you get a chance to look at this? (and the other similar
> > > patch "media: camss: vfe: Use trace_printk for debugging only")
> >
> > Mauro: Another gentle ping. Thanks.
>
> It's the middle of the merge window, maintainers can't do anything until
> after 5.9-rc1 is out, sorry.

Huh, wait, looks like Mauro _did_ pick it (found it in this email
"[GIT PULL for v5.8-rc7] media fixes").

My bad then, I was expecting an ack ,-)

Thanks!

> greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
