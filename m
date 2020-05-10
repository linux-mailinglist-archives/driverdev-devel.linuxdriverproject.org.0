Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D3E811CC973
	for <lists+driverdev-devel@lfdr.de>; Sun, 10 May 2020 10:35:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5CDB7868A8;
	Sun, 10 May 2020 08:35:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ARfXQtHaM0JP; Sun, 10 May 2020 08:35:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 51BCE85886;
	Sun, 10 May 2020 08:35:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 33BD11BF3EE
 for <devel@linuxdriverproject.org>; Sun, 10 May 2020 08:35:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 307D9876CF
 for <devel@linuxdriverproject.org>; Sun, 10 May 2020 08:35:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0YO1bh6mhImj for <devel@linuxdriverproject.org>;
 Sun, 10 May 2020 08:35:29 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 44940876A0
 for <devel@driverdev.osuosl.org>; Sun, 10 May 2020 08:35:29 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id x17so6941995wrt.5
 for <devel@driverdev.osuosl.org>; Sun, 10 May 2020 01:35:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hFhG+vZs/X4tuUT4PqnSohgKP+CFxzcIDKpFvhiq2Dg=;
 b=oct//JNERRXBJjc5U7Sj4+s7mJhNBT3ABvsBWvii8Rrs2OckEQycVk3UPwSE3cnubc
 XVZVkZJbvDJZD2fhfqSbv2z5GZ+mbJZF3XPKQuTpHZ80Y5+lHwoTOWK0EWx89rTuAuPi
 s3r3HX5QLHPdxrXouGVhFXhFpGnx06010TXBln+xGvpy9yuvX8XBE6s9fxh502qqOike
 6oBp8+D6FzSjNBBCeqE+OfqW4fi/RcTvEZqOXEVZLyjbNfMkUYMuecnTTFB1ggJZLjPA
 c5ogaqGMInlbVArjrBzYXV4ygEIRdzdMv9cHe9o4PvtwjiMAxXrAo4i83WvntGFtN893
 wGhg==
X-Gm-Message-State: AGi0PuZqiQ3XVjKVO5oXAH/cDnrHypJGIecVmNXnHmFEb6fMBn3c/41v
 k2FLUIsyNM+ydIhInfYCbtNghHiOQncQ7WOtJc/I
X-Google-Smtp-Source: APiQypL1p9BdfOAzzmp+n/a/4JAtl4MGpsbsogjDDiDXwhFnWp8k7Ijt9lWhxol8IIu94KfrvisAcXf3IBpj799R/N8=
X-Received: by 2002:adf:ec85:: with SMTP id z5mr1666465wrn.153.1589099727564; 
 Sun, 10 May 2020 01:35:27 -0700 (PDT)
MIME-Version: 1.0
References: <20200510060645.10159-1-john.oldman@polehill.co.uk>
 <20200510065519.GB3434442@kroah.com>
In-Reply-To: <20200510065519.GB3434442@kroah.com>
From: John Oldman <john.oldman@polehill.co.uk>
Date: Sun, 10 May 2020 09:35:14 +0100
Message-ID: <CA+JojbpnUxiONfG7tXdd8nt=uKLtnv65EtFeEAa0UKMkcQi6XA@mail.gmail.com>
Subject: Re: [PATCH V2] staging: vc04_services: vchiq_connected.c: Block
 comment alignment
To: Greg KH <gregkh@linuxfoundation.org>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Thanks for the feedback Greg.
Will resubmit the patch as you suggest.
Thanks
john

On Sun, 10 May 2020 at 07:55, Greg KH <gregkh@linuxfoundation.org> wrote:
>
> On Sun, May 10, 2020 at 07:06:45AM +0100, John Oldman wrote:
> > Coding style issue
> >
> > Signed-off-by: John Oldman <john.oldman@polehill.co.uk>
> > ---
> > v1: Initial attempt.
> > V2: Resubmitted with shorter comment line, as suggested by Greg KH.
> >
> > This patch clears the checkpatch.pl "Block comments should align the * on each line" warning.
>
> Why is this text not in the changelog area?  Don't you think that it is
> better than the 3 words you currently put there?
>
> Please fix up and resend.
>
> thanks,
>
> greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
