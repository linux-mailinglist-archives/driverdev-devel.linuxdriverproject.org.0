Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B68E22910C
	for <lists+driverdev-devel@lfdr.de>; Wed, 22 Jul 2020 08:41:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B8CC687A2E;
	Wed, 22 Jul 2020 06:41:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EHSd6RolDYHt; Wed, 22 Jul 2020 06:41:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1E04087155;
	Wed, 22 Jul 2020 06:41:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5E6B31BF41B
 for <devel@linuxdriverproject.org>; Wed, 22 Jul 2020 06:41:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 529398808C
 for <devel@linuxdriverproject.org>; Wed, 22 Jul 2020 06:41:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HRNltvXMlkQm for <devel@linuxdriverproject.org>;
 Wed, 22 Jul 2020 06:41:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C0F5988089
 for <devel@driverdev.osuosl.org>; Wed, 22 Jul 2020 06:41:26 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id o13so691013pgf.0
 for <devel@driverdev.osuosl.org>; Tue, 21 Jul 2020 23:41:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=qyPW4HmP8LsPvQOX+3YPrhNh30ysQJ2dk05K8JzNy3g=;
 b=TFmM2kMjczTcUvvEX4xOqIpXOj1+T2HnKZMIBqQSKW2k23r9ln8Cf2TxXBm/bl2T9c
 8NJ8Ue5hPZujaDqiDccZSudauHIadQlMXeoqqemGP5yq85HcN1cPAGAx3YzMa+TEAAAV
 bMCGYvT/uxz4sepwIPTRwkhfKDpanlU4ICU5DmJu1fvhOIbYYRXuucaveLXm+5ecIMe6
 sI4II0gXz8NDLMwCvoVj4HrvQ4EEoguHHs7wt4CMfdvjtXrIzbS2pNNnIlakC9wq90Pw
 FBemEL3pBaJ7EFopSmJp4k3JF56XSr8y92qqlSYdN6p4AisnOWmN93gKD2nJhheR3lbb
 g66w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=qyPW4HmP8LsPvQOX+3YPrhNh30ysQJ2dk05K8JzNy3g=;
 b=bdj/s9nRgzVGBpfCOpGxGQxxvov+GxqOQJfOm8M9UrrdFL7lzrmePR+iCVihKMrXBl
 aoo3VahBisYpPW9fZ5Wa4KOUqa54IR1XsOSj1Vnlk+/48LqNYhyI+sxzQacE3HBl9YxM
 iFCh5NW7io+KgTqPHTieE9XygALUsZH98z8PTbNXTpq7kPZj40y2KB6qitcHhKUA0mEu
 tFhW+3P0xfFtFnuABKtcRoFaMslLOm+J3u8ke/I/NXgOTk/jEvL1WaFwsKpDS82hocuW
 TvAQTTUPw9pSxCEh6cmC9M23SMerlgVqaHGjulF6UZ5k8VXb769l6yGCvfU8fUg9DyDn
 HwOw==
X-Gm-Message-State: AOAM533YYFKa2na7XNhYlZPNg8Ec85721Q3UuCO9118j3/jXhLqK79gr
 i3uFcH+lVIN1pUvmopM8aiE=
X-Google-Smtp-Source: ABdhPJxIY16TosTNU/qto8+zjjwzzkPDdq6r5Qex/gL6n50tGo615z+YPJsHgm7BsQ6WlmD6gdxqDQ==
X-Received: by 2002:a63:481:: with SMTP id 123mr24072674pge.2.1595400086320;
 Tue, 21 Jul 2020 23:41:26 -0700 (PDT)
Received: from rahulg-ThinkPad-T450 ([122.175.73.180])
 by smtp.gmail.com with ESMTPSA id o2sm22881550pfh.160.2020.07.21.23.41.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Jul 2020 23:41:25 -0700 (PDT)
Date: Wed, 22 Jul 2020 12:11:22 +0530
From: Rahul Gottipati <rahul.blr97@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [PATCH] staging: gs_fpgaboot: get bus width input
Message-ID: <20200722064122.GA3964@rahulg-ThinkPad-T450>
References: <20200721180203.GA16154@rahulg-ThinkPad-T450>
 <20200721180533.GA2570082@kroah.com>
 <20200722062711.GA3300@rahulg-ThinkPad-T450>
 <20200722063254.GA2715521@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200722063254.GA2715521@kroah.com>
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
Cc: devel@driverdev.osuosl.org, insop.song@gainspeed.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Jul 22, 2020 at 08:32:54AM +0200, Greg KH wrote:
> On Wed, Jul 22, 2020 at 11:57:11AM +0530, Rahul Gottipati wrote:
> > On Tue, Jul 21, 2020 at 08:05:33PM +0200, Greg KH wrote:
> > > On Tue, Jul 21, 2020 at 11:32:03PM +0530, Rahul Gottipati wrote:
> > > > This adds a module parameter to get the program bus width as an
> > > > input rather than hardcoding it, and checks off a TODO item.
> > > 
> > > Ick, no, module parameters are from the 1990's, please make this dynamic
> > > somehow.
> > 
> > Hi, I'm pretty new to this. Do you have any ideas/suggestions on how to
> > do this dynamically?
> 
> It all depends on what the paramater is, what it is needed for, and who
> would ever need to change it.
> 
> So I think it would take a bit of domain-specific knowledge here to
> determine that, it's not a general "code cleanup" task.

Thanks for the response. So, just to clarify, this task isn't
appropriate for beginners who are not intimately involved with this
project right?
 
> thanks,
> 
> greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
