Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B88E031DC04
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Feb 2021 16:19:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5FA44867EB;
	Wed, 17 Feb 2021 15:19:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id k9QIhwfgUtX9; Wed, 17 Feb 2021 15:19:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8060B85D5C;
	Wed, 17 Feb 2021 15:19:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 270091BF38D
 for <devel@linuxdriverproject.org>; Wed, 17 Feb 2021 15:19:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 22DE3867B5
 for <devel@linuxdriverproject.org>; Wed, 17 Feb 2021 15:19:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eyoW-wEOk9+L for <devel@linuxdriverproject.org>;
 Wed, 17 Feb 2021 15:19:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 8080B867D0
 for <devel@driverdev.osuosl.org>; Wed, 17 Feb 2021 15:19:07 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 91BF664E33;
 Wed, 17 Feb 2021 15:19:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1613575147;
 bh=Z/8o6XErFXuKuW0v3Bgjxn/zs7WUGSBupjAHS/gFS1E=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=wutHLT0IHHsyt5UuPU/Zx+D68xEklbpYzP27fZ9IxqxHHEr+8jtZobEG4lxrL6eQN
 4Rr00wrEXTDoYoQBOZKbwNYS23zLt4v2AsglSeKaO/4QtLuAsqT9oWeOFRIcJH9kSY
 WCQAM1qsFVK2eOKFbPYlZ3UcrQQR5392wIo286RY=
Date: Wed, 17 Feb 2021 16:19:04 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: mayanksuman@live.com
Subject: Re: [PATCH] staging: gasket Fix comparision with Null
Message-ID: <YC0z6PP2g/Raq80H@kroah.com>
References: <PS1PR04MB2934DD6390C8B16DB832BC97D6869@PS1PR04MB2934.apcprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <PS1PR04MB2934DD6390C8B16DB832BC97D6869@PS1PR04MB2934.apcprd04.prod.outlook.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, rcy@google.com,
 rspringer@google.com, toddpoynor@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Feb 17, 2021 at 06:58:16PM +0530, mayanksuman@live.com wrote:
> From: Mayank Suman <mayanksuman@live.com>
> 
> The change was suggested by checkpatch.pl.

What change?

Please read the section entitled "The canonical patch format" in the
kernel file, Documentation/SubmittingPatches for a description of how to
write a good changelog text.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
