Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 356A230AE18
	for <lists+driverdev-devel@lfdr.de>; Mon,  1 Feb 2021 18:40:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2DBE185495;
	Mon,  1 Feb 2021 17:40:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jBzF1qhHdgbL; Mon,  1 Feb 2021 17:40:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0FDB48544C;
	Mon,  1 Feb 2021 17:40:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D6CA11BF962
 for <devel@linuxdriverproject.org>; Mon,  1 Feb 2021 17:40:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id CEEE98697B
 for <devel@linuxdriverproject.org>; Mon,  1 Feb 2021 17:40:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4GYVrtExnXkl for <devel@linuxdriverproject.org>;
 Mon,  1 Feb 2021 17:40:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f43.google.com (mail-pj1-f43.google.com
 [209.85.216.43])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4E8308697A
 for <devel@driverdev.osuosl.org>; Mon,  1 Feb 2021 17:40:38 +0000 (UTC)
Received: by mail-pj1-f43.google.com with SMTP id gx20so26757pjb.1
 for <devel@driverdev.osuosl.org>; Mon, 01 Feb 2021 09:40:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=GTMtuxP7iEoUqiDSP2dht+ZCnCmYXbJy1K3YoeV/SmU=;
 b=MDGJWNwJ35gvKBo5NLN7kGZe+ApEGYNEz82zcPwbM4tWvcYrjTo4TAYaPXMoEFK+8u
 1x/oEJhAO4bMA06NTZ5IGC4fRw1CPtoWCY+7O3vErExC0MWqP2OsjWOAAi+aPJoT9zp/
 qVejQXXi2R8y3ngoZHbnpSFo1rxY0P9rYO077gAjHPQYXV7HH34KFJ7sNvKSolvrYOoO
 nIWncGjfwmIiYQvSkdCLiis9c+spsUZz0Mnb2kWPvwbFT1Ko5Fneqw1BzH3kxJ8SH1Sp
 +yOQcj2IPKZSfYtQLww4HhIBNbJOzE8Zjf04DWqD0eYqIBcy8SYWitY5fPl04b3WKE8G
 /naw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GTMtuxP7iEoUqiDSP2dht+ZCnCmYXbJy1K3YoeV/SmU=;
 b=DlHZyK4c1uAThy7fM29COLzM/2GA4fp2qfzMaKakRvpd3k3jwlfAhLzZvAbd6o7Wkl
 5UXKNd2aCAZXGKpaShqLhn2MbbA9Bsxqgda2oIWn7XhPaas04dv2Dpm1h7EJYBksGfyf
 vKsXSluauxCrE0RmIZ3mxOiFBEF8qYmldWD+UiUwOX+UsWd1T5vT20nbXOTy6M0Bp7XP
 xAEOf31EHC+YqXfd4wfQJ+TDBnRD5qOc4kgY8m4UyxgdqDLr8pbbIhFTRH/Y5yh/ZzDj
 ZxSCIK0NTxXoiKT68R43dxT83hiYHSxYLn+uHrpEB7pk7CoMM4yWeol56IdKhYQbDdbv
 fNrg==
X-Gm-Message-State: AOAM532Zo/VhJUR1vEOXHATBSO6xFgbrLwlO7eeMBSFt0s/khbFUvS5Z
 t8FZzO7/347I7fiHClTfAFfyXKflm3eJnTgnHdw=
X-Google-Smtp-Source: ABdhPJzsf/mGYBUXGJkiBfEdfymx5WNNIChE3ZG2ug5Z0AG7OF70uy77dHN6ipEiQgy2rF+Pjpv6HrFP20KM9qiJSp8=
X-Received: by 2002:a17:902:7b96:b029:de:7ae6:b8db with SMTP id
 w22-20020a1709027b96b02900de7ae6b8dbmr18507825pll.0.1612201237868; Mon, 01
 Feb 2021 09:40:37 -0800 (PST)
MIME-Version: 1.0
References: <1611838435-151774-1-git-send-email-zhangxuezhi3@gmail.com>
 <CAHp75Vd=ijxnamuSYuxNLeyhGMCod=HaXWrQ0W0+3QCsQAychg@mail.gmail.com>
 <20210129130110.00003bb1@gmail.com>
 <CAHp75Vdi4H_zY3+QPSq_wmdf20B9xPeqsOT10JHfMLJESX77gA@mail.gmail.com>
 <20210129215638.000047b0@gmail.com>
 <CAHp75VcdOibSRuSBZYhFtEcVxuammYMfcnrUQGvS6ttArFxj6g@mail.gmail.com>
 <20210130143924.00005432@gmail.com>
In-Reply-To: <20210130143924.00005432@gmail.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Mon, 1 Feb 2021 19:40:21 +0200
Message-ID: <CAHp75VenJVOSbAXryGK_BWytRJF=T1zwk5xDimRQOTojoXbMFQ@mail.gmail.com>
Subject: Re: [PATCH v12] staging: fbtft: add tearing signal detect
To: carlis <zhangxuezhi3@gmail.com>
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
Cc: "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 "open list:FRAMEBUFFER LAYER" <linux-fbdev@vger.kernel.org>,
 Deepak R Varma <mh12gx2825@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 oliver.graute@kococonnector.com,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Stefano Brivio <sbrivio@redhat.com>, Colin King <colin.king@canonical.com>,
 zhangxuezhi1@yulong.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Jan 30, 2021 at 8:39 AM carlis <zhangxuezhi3@gmail.com> wrote:
> On Fri, 29 Jan 2021 16:26:12 +0200
> Andy Shevchenko <andy.shevchenko@gmail.com> wrote:
> > On Fri, Jan 29, 2021 at 3:56 PM carlis <zhangxuezhi3@gmail.com> wrote:
> > > On Fri, 29 Jan 2021 12:23:08 +0200
> > > Andy Shevchenko <andy.shevchenko@gmail.com> wrote:

...

> > > Hi, I apologize for what I said in the previous two emails. I missed
> > > one email you sent before, and now I probably understand what you
> > > meant. Here is a version I modified according to your suggestion:

I have realized that you are mocking stuff in the generic fbtft
structure for all drivers while only a single one is going to use
that. Consider moving everything to the driver in question.


-- 
With Best Regards,
Andy Shevchenko
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
