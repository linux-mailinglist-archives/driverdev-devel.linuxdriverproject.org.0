Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 130DD1170D4
	for <lists+driverdev-devel@lfdr.de>; Mon,  9 Dec 2019 16:46:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 30441864C3;
	Mon,  9 Dec 2019 15:46:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HsxbMogqzonO; Mon,  9 Dec 2019 15:46:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 283FF86190;
	Mon,  9 Dec 2019 15:46:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6DCC01BF3BD
 for <devel@linuxdriverproject.org>; Mon,  9 Dec 2019 15:46:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6822187113
 for <devel@linuxdriverproject.org>; Mon,  9 Dec 2019 15:46:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IwHX4ncL6EPT for <devel@linuxdriverproject.org>;
 Mon,  9 Dec 2019 15:46:45 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id EF64E86762
 for <devel@driverdev.osuosl.org>; Mon,  9 Dec 2019 15:46:45 +0000 (UTC)
Received: from localhost (unknown [89.205.132.23])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 246A92080D;
 Mon,  9 Dec 2019 15:46:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575906405;
 bh=FQT5qAplvWxm9rmIcDlCpOO8ikZGnr0otysWddS45n0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Zj8HrSPvNcD7Gau13WsrTIo/Dzr98IgmMUia2nUncuM86n4sy+IRy/wInLYaYz1vr
 VvmXXQKkhx6ms8/b+kdepoibElCA433LpSFLi91B7PebT/USq+bxzEaKSJLpiTuYsW
 NoJ9jJI/xutnWVA/JCkMYKx2uEKNyJWWi6qzFz1M=
Date: Mon, 9 Dec 2019 16:46:42 +0100
From: "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>
To: "Kim, David" <david.kim@ncipher.com>
Subject: Re: [PATCH] drivers: staging: Add support for nCipher HSM devices
Message-ID: <20191209154642.GA1285695@kroah.com>
References: <1575899815003.20486@ncipher.com>
 <20191209153310.GD1280846@kroah.com>
 <1575906111248.24322@ncipher.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1575906111248.24322@ncipher.com>
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
Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>, "Magee,
 Tim" <tim.magee@ncipher.com>,
 "linux-crypto@vger.kernel.org" <linux-crypto@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Dec 09, 2019 at 03:41:51PM +0000, Kim, David wrote:
> Hi Greg,
> 
> Thanks for the speedy reply. I was hoping that setting my client to
> plain text only would actually do plain text only but I will try again
> with git send-email.
> 
> This is our first driver upstreaming and we targeted staging as a
> first entry point. If you feel it's more appropriate when I re-submit
> I can go directly to drivers/crypto instead.

Well why wouldn't it go to drivers/crypto instead?  What is wrong with
it that still needs to be done?  Only stuff that needs work belongs in
drivers/staging/.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
