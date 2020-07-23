Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C55D222B22F
	for <lists+driverdev-devel@lfdr.de>; Thu, 23 Jul 2020 17:09:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6F4F38865D;
	Thu, 23 Jul 2020 15:09:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EwiWe8OEUcJa; Thu, 23 Jul 2020 15:09:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 83D4388656;
	Thu, 23 Jul 2020 15:09:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 70E6A1BF2F2
 for <devel@linuxdriverproject.org>; Thu, 23 Jul 2020 15:09:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 6DE8D87C13
 for <devel@linuxdriverproject.org>; Thu, 23 Jul 2020 15:09:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id x5qoO5yT+81r for <devel@linuxdriverproject.org>;
 Thu, 23 Jul 2020 15:09:43 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id EBAFD88656
 for <devel@driverdev.osuosl.org>; Thu, 23 Jul 2020 15:09:43 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3C48820771;
 Thu, 23 Jul 2020 15:09:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1595516983;
 bh=teC3dGC99OxdwvHAe8GtHtNZ4hOO7NgZK6TcDdn31xM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=LrAQnjA0Sp65bh4VCob4yLvZVzlbZwjyPMBZDMxzK/m15ftz4So9AQxl2fil8gBgQ
 ctdoYj9jcekqFB+6XytWekiIq+xxjJ0daUKvCaxqPzL5zdm5H+PM2Xepa+aJxLTayl
 CbpJcMQN7+2Vo74zslFsVsrWY+4VNA84G5VN3BCw=
Date: Thu, 23 Jul 2020 17:09:47 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Rohit K Bharadwaj <bharadwaj.rohit8@gmail.com>
Subject: Re: [PATCH] change slave occurence to secondary everywhere
Message-ID: <20200723150947.GB2694233@kroah.com>
References: <20200723145811.21109-1-bharadwaj.rohit8@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200723145811.21109-1-bharadwaj.rohit8@gmail.com>
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
Cc: linux-tegra@vger.kernel.org, devel@driverdev.osuosl.org,
 ac100@lists.launchpad.net, p.zabel@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Jul 23, 2020 at 08:28:11PM +0530, Rohit K Bharadwaj wrote:
> Signed-off-by: Rohit K Bharadwaj <bharadwaj.rohit8@gmail.com>

I can't take patches without any changelog text :(

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
