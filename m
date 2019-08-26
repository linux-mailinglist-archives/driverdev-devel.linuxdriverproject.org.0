Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CEE39C870
	for <lists+driverdev-devel@lfdr.de>; Mon, 26 Aug 2019 06:36:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3A77187E94;
	Mon, 26 Aug 2019 04:36:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id s-KDoG3QEttj; Mon, 26 Aug 2019 04:36:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9D04E87D9F;
	Mon, 26 Aug 2019 04:36:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AFC4B1BF35F
 for <devel@linuxdriverproject.org>; Mon, 26 Aug 2019 04:36:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A9B6C87476
 for <devel@linuxdriverproject.org>; Mon, 26 Aug 2019 04:36:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uClOcHK4FexQ for <devel@linuxdriverproject.org>;
 Mon, 26 Aug 2019 04:36:08 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id CCDA886DA8
 for <devel@driverdev.osuosl.org>; Mon, 26 Aug 2019 04:36:08 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 204132173E;
 Mon, 26 Aug 2019 04:36:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566794168;
 bh=I1jL0/Uu2qQHbpkL6WfRWDaM6cQyx9pIFap/+g6agYs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=NpOEXZSJ8ODfPw2dxMHwytKIvGGO65XaxSZr8rbctTA9kaPPgDeNIb37v7rFV5B+p
 Z8ffPZ4Y6Cgb1uQtpfRPzu57LKrxMFSdMcJo7UH3bnOi2IjS9j2/ryevNFyKazJr4D
 5ZrJV5gNVVQ8l+H23ugmVIV3BPnzAQ1XDqFMP1Ec=
Date: Mon, 26 Aug 2019 06:36:06 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Sumera Priyadarsini <sylphrenadin@gmail.com>
Subject: Re: [PATCH] staging: rtl8192u: Fix spacing style issues
Message-ID: <20190826043606.GA27266@kroah.com>
References: <20190825193835.28848-1-sylphrenadin@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190825193835.28848-1-sylphrenadin@gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
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
Cc: devel@driverdev.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Aug 26, 2019 at 01:08:35AM +0530, Sumera Priyadarsini wrote:
> This patch fixes the file r8190_rtl8256.c to avoid the following
> checkpatch.pl warnings:
> 	CHECK: spaces preferred around that '<<' (ctx:VxV)
> 	CHECK: spaces preferred around that '-' (ctx:VxV)
> 	CHECK: Blank lines aren't necessary before a close brace '}'
> 	CHECK: Please use a blank line after function/struct/union/enum declarations
> 	CHECK: No space is necessary after a cast
> 	CHECK: Please don't use multiple blank lines
> 	CHECK: Please don't use multiple blank lines

Can you split this up into at least 2 different patches, one for blank l
ines and one for spaces?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
