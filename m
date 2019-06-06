Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EED51374C9
	for <lists+driverdev-devel@lfdr.de>; Thu,  6 Jun 2019 15:02:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7B8B9863E1;
	Thu,  6 Jun 2019 13:02:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EDqsouxuIvJY; Thu,  6 Jun 2019 13:02:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7EC1B847C3;
	Thu,  6 Jun 2019 13:02:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 402691BF287
 for <devel@linuxdriverproject.org>; Thu,  6 Jun 2019 13:02:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 3BFBE86C53
 for <devel@linuxdriverproject.org>; Thu,  6 Jun 2019 13:02:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 95dEZHUjyBs9 for <devel@linuxdriverproject.org>;
 Thu,  6 Jun 2019 13:02:55 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id BBBB686C4D
 for <devel@driverdev.osuosl.org>; Thu,  6 Jun 2019 13:02:55 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1BD8020872;
 Thu,  6 Jun 2019 13:02:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559826175;
 bh=ZMEpYSkZA0Q0/VcvnwOoovQKU7Ziw+6pF1UaPZVwQAU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Q0JE+X1PLsBLOR56AmukxAbdTkEoMFaf3p8OY61fXd0Ep2nz2hDA6Qti6r9NxSncX
 Hms64YiJUI6Z/L8wXeKvidGPtIrqexWEetKYjTrLwmQadIYhe/5syePhmtoUANc3Jj
 xv7ezCUg+O30LYeMgYbAEIm3rKrk0zC62LrnuJac=
Date: Thu, 6 Jun 2019 15:02:53 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Shobhit Kukreti <shobhitkukreti@gmail.com>
Subject: Re: [PATCH] staging: rtl8723bs: CleanUp to remove the error reported
 by checkpatch
Message-ID: <20190606130253.GE1140@kroah.com>
References: <20190606015949.GA2275@t-1000>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190606015949.GA2275@t-1000>
User-Agent: Mutt/1.12.0 (2019-05-25)
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
Cc: devel@driverdev.osuosl.org, hdegoede@redhat.com,
 linux-kernel@vger.kernel.org, hadess@hadess.net, Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Jun 05, 2019 at 06:59:52PM -0700, Shobhit Kukreti wrote:
> Cleaned up the code to remove the error "(foo*)" should be "(foo *)"
> reported by checkpatch from the file rtl8723bs/os_dep/ioctl_linux.c

Your subject line shoudl give a hint as to what the error you are fixing
is.

Also, no need for "CleanUp" in it, that's not a real word :)

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
