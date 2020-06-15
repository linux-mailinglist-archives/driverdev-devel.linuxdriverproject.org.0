Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E3501F9360
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Jun 2020 11:29:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C3DEB886F8;
	Mon, 15 Jun 2020 09:29:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Puq+yxEXtWhZ; Mon, 15 Jun 2020 09:29:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 85630882B5;
	Mon, 15 Jun 2020 09:29:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 898171BF4E6
 for <devel@linuxdriverproject.org>; Mon, 15 Jun 2020 09:29:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 79A5824A75
 for <devel@linuxdriverproject.org>; Mon, 15 Jun 2020 09:29:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Uw1DB4wfO+Sz for <devel@linuxdriverproject.org>;
 Mon, 15 Jun 2020 09:29:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by silver.osuosl.org (Postfix) with ESMTPS id 05AFF227FC
 for <devel@driverdev.osuosl.org>; Mon, 15 Jun 2020 09:29:04 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id u26so13659884wmn.1
 for <devel@driverdev.osuosl.org>; Mon, 15 Jun 2020 02:29:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=9EDtJNfX1SAp0MBHTf1DDs5zKPsOXN9CX0Ktu243vuw=;
 b=sFuFpUNqWigBExkx20jCEZPeFLzamfwkmd3Fd/Id0kN+BJSI0pQipK/DaO2A3lrwMA
 r4pb6FvIjue2bc3TDHLA11I1TH6OUg74T89Y0OMml13+StHNUHubqjFhdkfMMo4TzVz1
 tdt0i9mG1xZF8Ifj1x4Oso7dVuQmfC9H3wWvi6OjXRdIQsoyny/UYUy1Uf+5NUObR07l
 LtfmZPtN7+aUIl7PAqgKUmryDf+QtcyhDMLs76/30/hVtxi1PdqJBWNffbqcRInb73Fb
 N+LRVLIPkuZvITgrdHkVq4XAFRoprFGy5aahYrY2Zl1TtuqUG7wibz0J7UvnUoU4drLQ
 KCAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9EDtJNfX1SAp0MBHTf1DDs5zKPsOXN9CX0Ktu243vuw=;
 b=FxmOp8QdP9lJalZezw7bC62qfMM0BjbtW413Jr4BIZw+kZUUtqbP9iwX3g7mqj6wgz
 a1qKf6UrOFESXXNdr5us5U/nGm67yXsD9m87YoVtaSLjS7X7JNvW7kHcw442OEao6Drf
 UjOLyicp2KoCe8OTDm/ykwit/PADprxFzGjKFdt+UX69zTd0acTavI1rsox1HrwB1USJ
 0UrZY4qUBTFcVnH2OM9nLnhtovml+Gk70klG39qEg0vpOveUHcVWrVprRvt4xLyJpg0S
 KjuqkLg5Pgx0ri1NbPkSQI/5roo7OUM7e4bbTXRewG+CvmX+h+/GwHV43ejYK8E/2wp1
 VAuw==
X-Gm-Message-State: AOAM531PbkBMmQvItGTK5HRCG87V4rQgCowinIFG6d6SC+eleTop9AaA
 wgc6A8fShHfPkiBDmMyrJPJsH55DVf6oMBOoq7k=
X-Google-Smtp-Source: ABdhPJyCePymwAb915SzpAfLx2XsbhZ2ocwEbcv4PcsBnWgEQHMoHAZiY8Vqju7OcjmQszvVxsVQQkKUSvdBuewdn3U=
X-Received: by 2002:a1c:7c0e:: with SMTP id x14mr11600752wmc.1.1592213342244; 
 Mon, 15 Jun 2020 02:29:02 -0700 (PDT)
MIME-Version: 1.0
References: <20200614135125.19502-1-rikajff@gmail.com>
 <20200614140531.GA2661398@kroah.com>
In-Reply-To: <20200614140531.GA2661398@kroah.com>
From: Ricardo Ferreira <rikajff@gmail.com>
Date: Mon, 15 Jun 2020 10:28:51 +0100
Message-ID: <CACtES-qmpRJ2mk+1vhsJm55G6j6U1+rLB1t2izHwJ1u4_eUKHw@mail.gmail.com>
Subject: Re: [PATCH] Staging: rtl8712: Addressed checkpatch.pl issues related
 to macro parameter wrapping in parentheses.
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
Cc: devel@driverdev.osuosl.org,
 Florian Schilhabel <florian.c.schilhabel@googlemail.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Nishka Dasgupta <nishkadg.linux@gmail.com>,
 Dan Carpenter <dan.carpenter@oracle.com>,
 Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, 14 Jun 2020 at 15:05, Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
>
> On Sun, Jun 14, 2020 at 02:51:25PM +0100, Ricardo Ferreira wrote:
> >  #define init_h2fwcmd_w_parm_no_rsp(pcmd, pparm, code) \
> >  do {\
> > -     INIT_LIST_HEAD(&pcmd->list);\
> > -     pcmd->cmdcode = code;\
> > -     pcmd->parmbuf = (u8 *)(pparm);\
> > -     pcmd->cmdsz = sizeof(*pparm);\
> > -     pcmd->rsp = NULL;\
> > -     pcmd->rspsz = 0;\
> > +     INIT_LIST_HEAD(&(pcmd)->list);\
> > +     (pcmd)->cmdcode = code;\
> > +     (pcmd)->parmbuf = (u8 *)((pparm));\
> > +     (pcmd)->cmdsz = sizeof(*(pparm));\
> > +     (pcmd)->rsp = NULL;\
> > +     (pcmd)->rspsz = 0;\
> >  } while (0)
>
> Does that change really make any sense?  checkpatch is a nice hint,
> sometimes it is not correct...

(Replying again since I mistakenly sent my comments only to Greg...)

Yeah I was over-eager and applied some of checkpatche's patches
without thinking twice... I guess the parenthesis wrapping only makes
sense when you have an operator (either binary or unary). I've
rechecked each macro identified by checkpatch to see if there is a
need for parenthesis wrapping in their current usage.

Regards,
Ricardo Ferreira.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
