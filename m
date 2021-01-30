Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 07DDF309295
	for <lists+driverdev-devel@lfdr.de>; Sat, 30 Jan 2021 09:51:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3DA4187004;
	Sat, 30 Jan 2021 08:51:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dkYzy4HhrLr5; Sat, 30 Jan 2021 08:51:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 39BF986E62;
	Sat, 30 Jan 2021 08:51:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 228BD1BF3C6
 for <devel@linuxdriverproject.org>; Sat, 30 Jan 2021 08:51:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1EFD986444
 for <devel@linuxdriverproject.org>; Sat, 30 Jan 2021 08:51:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CT5CccS6niAg for <devel@linuxdriverproject.org>;
 Sat, 30 Jan 2021 08:51:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A24BA86130
 for <devel@driverdev.osuosl.org>; Sat, 30 Jan 2021 08:51:43 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 5644564E1C;
 Sat, 30 Jan 2021 08:51:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1611996703;
 bh=5qOwQN/PFxVU1uCu0R3RYk3k2hOpa38gq0dwj1Z81BE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=TI1i5vIhYih1DlnKYhKIpSDnAwXqVBMxqbGbe6y+D2hTDGqXz32titm9yMTzuL330
 Wc8fzibhZMFZJYMMkgDIdw6ZwyNwpKn19rOBRT3g0CBjClhtraDx/jrXd6nOFvHhJB
 2ihgq+Q5XO9MasDQPmhgyPlNx0QNj3bcyaH/uL6A=
Date: Sat, 30 Jan 2021 09:51:39 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Emmanuel Arias <eamanu@yaerobi.com>
Subject: Re: [PATCH] media: allegro-dvt: Use __packed sentence
Message-ID: <YBUeG38fOvMkYgIp@kroah.com>
References: <YBRpstkOi685uHef@debian>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YBRpstkOi685uHef@debian>
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
 m.tretter@pengutronix.de, kernel@pengutronix.de, mchehab@kernel.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Jan 29, 2021 at 05:01:54PM -0300, Emmanuel Arias wrote:
> Fix coding style using __packed sentece instead of

Spelling check please?

And _why_ are you making this change, what does this do "better" than
the original?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
