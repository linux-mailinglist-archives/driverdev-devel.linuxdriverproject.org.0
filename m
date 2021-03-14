Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E540933A5D2
	for <lists+driverdev-devel@lfdr.de>; Sun, 14 Mar 2021 16:58:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E310740170;
	Sun, 14 Mar 2021 15:58:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pzMEFF8vjCnY; Sun, 14 Mar 2021 15:58:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 46A3E4015C;
	Sun, 14 Mar 2021 15:58:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 234571BF41E
 for <devel@linuxdriverproject.org>; Sun, 14 Mar 2021 15:58:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 11DD983C44
 for <devel@linuxdriverproject.org>; Sun, 14 Mar 2021 15:58:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HNNx3TCv8qpz for <devel@linuxdriverproject.org>;
 Sun, 14 Mar 2021 15:58:04 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9BA5683C42
 for <devel@driverdev.osuosl.org>; Sun, 14 Mar 2021 15:58:04 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 07AEF64E89;
 Sun, 14 Mar 2021 15:58:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1615737482;
 bh=7VN49rm6JEqj7Q+up9pcIg4ZPrqsnDegtaG+SsByO7Y=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=NfBeu7vEjYc/qdMuq5dXLURsFTPsdBaAgQy6xLUc4IGD+yQetr8VwljGmg22pxkFi
 7CIp3LslDg358+xMa3+b1cqgCb0x9pS9lrr/G3d8C2ESHVPx72G/o0DaQz5fEMFMLG
 jJVqPdLX+VILzif28rSwbfr9lknj1p6kDNuC4KKU=
Date: Sun, 14 Mar 2021 16:57:59 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Shreya <shreya.ajithchb@gmail.com>
Subject: Re: [PATCH] staging:rtl8723bs:core:rtw_wlan_util:fixed indentation
 coding style issue
Message-ID: <YE4yhxukkFPuTIYb@kroah.com>
References: <20210313171453.GA2640@shreya-VirtualBox>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210313171453.GA2640@shreya-VirtualBox>
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
Cc: devel@driverdev.osuosl.org, bkkarthik@pesu.pes.edu, d.straghkov@ispras.ru,
 dan.carpenter@oracle.com, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Mar 13, 2021 at 10:44:53PM +0530, Shreya wrote:
> Fixed the indentation of the else part of the conditional statement.
> 
> Signed-off-by: Shreya Ajith <shreya.ajithchb@gmail.com>

This name does not match your "From:" email name :(

Please fix up and resend.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
