Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CB80330B4DE
	for <lists+driverdev-devel@lfdr.de>; Tue,  2 Feb 2021 02:52:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 16DD48584A;
	Tue,  2 Feb 2021 01:52:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lfiXWmbuGNpS; Tue,  2 Feb 2021 01:52:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EC5CB84ADC;
	Tue,  2 Feb 2021 01:52:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DC2CB1BF97C
 for <devel@linuxdriverproject.org>; Tue,  2 Feb 2021 01:52:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D8ABE8703C
 for <devel@linuxdriverproject.org>; Tue,  2 Feb 2021 01:52:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tEhwBw24g14Z for <devel@linuxdriverproject.org>;
 Tue,  2 Feb 2021 01:52:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com
 [209.85.210.176])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6AFDE87038
 for <devel@driverdev.osuosl.org>; Tue,  2 Feb 2021 01:52:51 +0000 (UTC)
Received: by mail-pf1-f176.google.com with SMTP id w18so13274185pfu.9
 for <devel@driverdev.osuosl.org>; Mon, 01 Feb 2021 17:52:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :organization:mime-version:content-transfer-encoding;
 bh=4dPB0xdozLnJ4HtFbULqQeJT3HtsViC+HjWIT7oeuiI=;
 b=A596Ysvq014L9mFKZs37S5/W5bTE2ckwYfmpCpJ9nK27wUnTGUHfcS4olYHh1lwEYi
 OG/cmNrMZ26tasIl3Q05IDWl/L7kDiv6u0J6SksFwo9iFK2K6lc9PpwLmyCnDho+mehZ
 AYBbibs05MBm8Z6SI6sJrBe/I9tVoQnacJWdZH3O3fANifne1TFM/clp/0CFlVvuDBLz
 Qk2bF3qevUtqIag/7tnISR7FZ6TkzhH+oFCeAaL99nzf33V/4dcm6ET4hCE9epWFKHFh
 5bHuvJwOh1oKv3pKEGkFwRwA4DJ9G+Rt3XsCWjTgn+a7fqsUHVabiv9qYDTlufjtZfmL
 8IxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:organization:mime-version:content-transfer-encoding;
 bh=4dPB0xdozLnJ4HtFbULqQeJT3HtsViC+HjWIT7oeuiI=;
 b=oLaFl8bf9wUxObKY3/L826PBqiBHuFelbLiF01jFFkRLbqZxkJ7dNXZXasPcCTTtMo
 PvAt/N9SK1Eg2XN4DwrKpre2npZbBXgOUyewvQ+WFtXft6Wz9mnh/U9uOPFjql7QvJCE
 J1Q8Qko+czVGw43uIWqbhE3Iawg36RktailfxFgt/1U0tJFNpof80+m+SpSFNE8Bxwcw
 AQWx8vjPCSHpUUWL1P0Fs1nnw3zxpomqgjauO52DgoVlNh4DFqVC4CzRxR/uR3D1JPNa
 9E6iWDT9yzOq3KlfwoXFxMpQaiTxxjr1uNeHXcxPjFctxkQuI+14BIeQ7Nssr1Brh23i
 CvAw==
X-Gm-Message-State: AOAM531NQWNsZqxC6JgR54jWmucvelVOHHlBXcsJnlxv85rcD4xGYiw8
 /vQjO7ydyYtgpqGEz92lcZI=
X-Google-Smtp-Source: ABdhPJzpk7F4glgCPjEUcr5K297Ke5ORCshoB5cX9ev1Y19QQXM9NU6F/FQlje3ynVyzVGfMyxYuvg==
X-Received: by 2002:a63:a542:: with SMTP id r2mr19669741pgu.211.1612230771093; 
 Mon, 01 Feb 2021 17:52:51 -0800 (PST)
Received: from localhost ([103.220.76.197])
 by smtp.gmail.com with ESMTPSA id fs14sm712574pjb.46.2021.02.01.17.52.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 01 Feb 2021 17:52:50 -0800 (PST)
Date: Tue, 2 Feb 2021 09:52:34 +0800
From: Carlis <zhangxuezhi3@gmail.com>
To: Andy Shevchenko <andy.shevchenko@gmail.com>
Subject: Re: [PATCH v12] staging: fbtft: add tearing signal detect
Message-ID: <20210202095234.000059ca@gmail.com>
In-Reply-To: <CAHp75VenJVOSbAXryGK_BWytRJF=T1zwk5xDimRQOTojoXbMFQ@mail.gmail.com>
References: <1611838435-151774-1-git-send-email-zhangxuezhi3@gmail.com>
 <CAHp75Vd=ijxnamuSYuxNLeyhGMCod=HaXWrQ0W0+3QCsQAychg@mail.gmail.com>
 <20210129130110.00003bb1@gmail.com>
 <CAHp75Vdi4H_zY3+QPSq_wmdf20B9xPeqsOT10JHfMLJESX77gA@mail.gmail.com>
 <20210129215638.000047b0@gmail.com>
 <CAHp75VcdOibSRuSBZYhFtEcVxuammYMfcnrUQGvS6ttArFxj6g@mail.gmail.com>
 <20210130143924.00005432@gmail.com>
 <CAHp75VenJVOSbAXryGK_BWytRJF=T1zwk5xDimRQOTojoXbMFQ@mail.gmail.com>
Organization: Coolpad
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; i686-w64-mingw32)
MIME-Version: 1.0
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

On Mon, 1 Feb 2021 19:40:21 +0200
Andy Shevchenko <andy.shevchenko@gmail.com> wrote:

> On Sat, Jan 30, 2021 at 8:39 AM carlis <zhangxuezhi3@gmail.com> wrote:
> > On Fri, 29 Jan 2021 16:26:12 +0200
> > Andy Shevchenko <andy.shevchenko@gmail.com> wrote:  
> > > On Fri, Jan 29, 2021 at 3:56 PM carlis <zhangxuezhi3@gmail.com>
> > > wrote:  
> > > > On Fri, 29 Jan 2021 12:23:08 +0200
> > > > Andy Shevchenko <andy.shevchenko@gmail.com> wrote:  
> 
> ...
> 
> > > > Hi, I apologize for what I said in the previous two emails. I
> > > > missed one email you sent before, and now I probably understand
> > > > what you meant. Here is a version I modified according to your
> > > > suggestion:  
> 
> I have realized that you are mocking stuff in the generic fbtft
> structure for all drivers while only a single one is going to use
> that. Consider moving everything to the driver in question.
> 
> 

hi, 
   Do you mean that i define the TE completion and irq_te in the
   fb_st7789v.c as i did before?
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
