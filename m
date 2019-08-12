Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BB0D38A143
	for <lists+driverdev-devel@lfdr.de>; Mon, 12 Aug 2019 16:37:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id CE4132000B;
	Mon, 12 Aug 2019 14:37:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xcl96ZvumPMM; Mon, 12 Aug 2019 14:37:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 99F4F203E7;
	Mon, 12 Aug 2019 14:37:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D7FD21BF2C1
 for <devel@linuxdriverproject.org>; Mon, 12 Aug 2019 14:37:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id D38248653D
 for <devel@linuxdriverproject.org>; Mon, 12 Aug 2019 14:37:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mVtD1tOkRCvC for <devel@linuxdriverproject.org>;
 Mon, 12 Aug 2019 14:37:04 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 58EEF8610F
 for <devel@driverdev.osuosl.org>; Mon, 12 Aug 2019 14:37:04 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9DBCF20665;
 Mon, 12 Aug 2019 14:37:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565620624;
 bh=19w5f6Fwk20FKJU0kvKgskzjOj2oLv7ggABO5y7SBw0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=PaQuLIUWajE8c2yN5fC8Es5kUXoF43/evNLLhALjOUvX9j1BdJwqvLlfIss7IvzYg
 usE8zPVBOjXf/dgeuXLlefd7B7iPWHzLmy6PMRo7owTCWdesyTo11v/41U1HjC4rpO
 yykg+xUHIMEj6p9MM3OzvFHU+PBVTAkPUmwKDfQg=
Date: Mon, 12 Aug 2019 16:37:01 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Nishka Dasgupta <nishkadg.linux@gmail.com>
Subject: Re: [PATCH 01/11] staging: rtl8712: _r8712_init_xmit_priv(): Change
 return values and type
Message-ID: <20190812143701.GA27411@kroah.com>
References: <20190809052353.5308-1-nishkadg.linux@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190809052353.5308-1-nishkadg.linux@gmail.com>
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
Cc: devel@driverdev.osuosl.org, florian.c.schilhabel@googlemail.com,
 larry.finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Aug 09, 2019 at 10:53:43AM +0530, Nishka Dasgupta wrote:
> Change the return values in _r8712_init_xmit_priv from _SUCCESS/_FAIL to
> 0/-ENOMEM respectively. Change return type from sint to int.
> 
> Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>

I only received 9 patches in this series.  I'll try to apply these, but
if they fail, please fix up your tree, and resend the remaining ones.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
