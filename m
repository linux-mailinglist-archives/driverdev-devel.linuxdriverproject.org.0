Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02D81CB726
	for <lists+driverdev-devel@lfdr.de>; Fri,  4 Oct 2019 11:16:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 59E5D883C8;
	Fri,  4 Oct 2019 09:15:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Nd4o-JxKDtc7; Fri,  4 Oct 2019 09:15:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 26E7F883A6;
	Fri,  4 Oct 2019 09:15:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 59E651BF317
 for <devel@linuxdriverproject.org>; Fri,  4 Oct 2019 09:15:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5454E87C24
 for <devel@linuxdriverproject.org>; Fri,  4 Oct 2019 09:15:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JviyxoQQjMGB for <devel@linuxdriverproject.org>;
 Fri,  4 Oct 2019 09:15:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4AA9987C30
 for <devel@driverdev.osuosl.org>; Fri,  4 Oct 2019 09:15:52 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id q5so3483043pfg.13
 for <devel@driverdev.osuosl.org>; Fri, 04 Oct 2019 02:15:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=s8tqsqMy+G0/tcU7luJERjELtm00m1qaFN1WnG1XMF0=;
 b=Hkj0H1a17gfTA4IBRSDEr6jhOfHZKhPzQr7hTppiuNBr3rWcHa/1fVLIkJ7nLgY4MS
 rpwqpba5HkFXM8g3eza+y2a9Z5Fu8jqQM8g61sED46Fzj8LDnDTTOtLerEFsicimyY9u
 wtPARiHwWAULUZ0lDo8Ismp0mWIJJD0Z7yKJqRL+4uqQ062DbR9/y+6sQfqTxvaD1/Ps
 77pPN3urY0mkMJ0KY4uN63apCjxPV482S+HU7GTuU9JfEPT75wb8JWK8L4yzI3jflByi
 iPhYVTjwxRUhjQyKDNmCSrhynfidTWyls8p5tlPx4fz+TMCLYc0nH+at53J0y8lQMafG
 wOVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=s8tqsqMy+G0/tcU7luJERjELtm00m1qaFN1WnG1XMF0=;
 b=qvMNoOTX/ehrmcBpLIw00VTmfaVCjZgjpY0eVydln/r6pk2ogeIDy5XWZsxW9HLp4U
 9BRUcqgMJgSZuKsldmIuL1pB9/FMHFm4YKMFFUXnEb1w/4DDzNVJhPexSzRuQe1bs2oe
 dYCDtCLaArfnIBJAWggfrVczqXLW3oRRbjCbXpDhe+iUdEjeqqQZb/xB7YgEo1bHGkCi
 3i3IcTQSRsseueyQlItwDXlCSkwwGGXeeU+FUr9UTpFUufvE6cvTM98bw3m5Kb+PzWG+
 b4LwTuXa9gC1I8GOAj/MjYxqccGovyTVmdj46mLaaqUAKDTz12t8r4pld32L2dWvYXur
 igKg==
X-Gm-Message-State: APjAAAXnQGFg0TX7jD5QFLNmoZlkrj4qsssWCgK89NI4O+ixilZbCq6p
 MO13ce+uWTmWHeHbGP6zJBc=
X-Google-Smtp-Source: APXvYqx9jVrJypPIFTpq5omupfOySz1o3av2IBN3FGqG+lYUCL6l0UwNhhdXupVN4qNFWjnTwQYi8w==
X-Received: by 2002:a17:90a:e50b:: with SMTP id
 t11mr15594108pjy.50.1570180551460; 
 Fri, 04 Oct 2019 02:15:51 -0700 (PDT)
Received: from f1 (ag061063.dynamic.ppp.asahi-net.or.jp. [157.107.61.63])
 by smtp.gmail.com with ESMTPSA id bb15sm3451428pjb.2.2019.10.04.02.15.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Oct 2019 02:15:50 -0700 (PDT)
Date: Fri, 4 Oct 2019 18:15:45 +0900
From: Benjamin Poirier <benjamin.poirier@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH v2 0/17] staging: qlge: Fix rx stall in case of
 allocation failures
Message-ID: <20191004091545.GA29467@f1>
References: <20190927101210.23856-1-bpoirier@suse.com>
 <20191004081931.GA67764@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191004081931.GA67764@kroah.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
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
Cc: devel@driverdev.osuosl.org, netdev@vger.kernel.org,
 GR-Linux-NIC-Dev@marvell.com, linux-kernel@vger.kernel.org,
 Manish Chopra <manishc@marvell.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 2019/10/04 10:19, Greg Kroah-Hartman wrote:
> On Fri, Sep 27, 2019 at 07:11:54PM +0900, Benjamin Poirier wrote:
[...]
> 
> As this code got moved to staging with the goal to drop it from the
> tree, why are you working on fixing it up?  Do you want it moved back
> out of staging into the "real" part of the tree, or are you just fixing
> things that you find in order to make it cleaner before we delete it?
> 
> confused,
> 

I expected one of two possible outcomes after moving the qlge driver to
staging:
1) it gets the attention of people looking for something to work on and
the driver is improved and submitted for normal inclusion in the future
2) it doesn't get enough attention and the driver is removed

I don't plan to do further work on it and I'm admittedly not holding my
breath for others to rush in but I already had those patches; it wasn't
a big effort to submit them as a first step towards outcome #1.

If #2 is a foregone conclusion, then there's little point in applying
the patches. The only benefit I can think of that if the complete
removal is reverted in the future, this specific problem will at least
be fixed.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
