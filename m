Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 667D8D08A8
	for <lists+driverdev-devel@lfdr.de>; Wed,  9 Oct 2019 09:43:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8142187745;
	Wed,  9 Oct 2019 07:43:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3cadgn3HN9oA; Wed,  9 Oct 2019 07:43:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8D3FB876F7;
	Wed,  9 Oct 2019 07:43:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7E0721BF3DB
 for <devel@linuxdriverproject.org>; Wed,  9 Oct 2019 07:43:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7AC798654C
 for <devel@linuxdriverproject.org>; Wed,  9 Oct 2019 07:43:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8_ggrOLXPl5X for <devel@linuxdriverproject.org>;
 Wed,  9 Oct 2019 07:43:36 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D12C3864B5
 for <devel@driverdev.osuosl.org>; Wed,  9 Oct 2019 07:43:36 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1D8632133F;
 Wed,  9 Oct 2019 07:43:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570607016;
 bh=3O5Wcz3zKEo1TVNtELtRVQvf1FMDmg54ohtzb9xhDxY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=bW1s4aWeeUCU/jbutULR/ebaFW0qWN8lSJjPWOEUHc1qsblR1/BCAEMQN5zTZjBIJ
 Qzo1EHTLXRFiG5zWqYdpFJEbANRlulxiZxgwl0Uivb155213Z7KQ9COZ6I228fs7bb
 KdqDhOPcY6ostP5gU9s19k6FwQ2bjwiCbQbQ4EHM=
Date: Wed, 9 Oct 2019 09:43:34 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Chandra Annamaneni <chandra627@gmail.com>
Subject: Re: [PATCH] KPC2000: kpc2000_spi.c: Fix alignment and style problems.
Message-ID: <20191009074334.GA3842746@kroah.com>
References: <1570593039-19059-1-git-send-email-chandra627@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1570593039-19059-1-git-send-email-chandra627@gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
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
Cc: devel@driverdev.osuosl.org, gneukum1@gmail.com, michael.scheiderer@fau.de,
 fabian.krueger@fau.de, linux-kernel@vger.kernel.org, simon@nikanor.nu
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Oct 08, 2019 at 08:50:39PM -0700, Chandra Annamaneni wrote:
> 	Fixed alignment and style issues raised by checkpatch.pl

Why is this padded?

Also, you need to break this up into "one logical change per patch",
you can't "fix all style issues" at once, sorry.

Please fix this up and send it as a patch series.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
