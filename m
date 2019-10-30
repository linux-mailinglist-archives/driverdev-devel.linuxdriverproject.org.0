Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EC89FE9952
	for <lists+driverdev-devel@lfdr.de>; Wed, 30 Oct 2019 10:40:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5E4B820766;
	Wed, 30 Oct 2019 09:40:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XhOL11yn8HIF; Wed, 30 Oct 2019 09:40:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id F2B6020336;
	Wed, 30 Oct 2019 09:40:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E29E81BF31E
 for <devel@linuxdriverproject.org>; Wed, 30 Oct 2019 09:40:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D771520336
 for <devel@linuxdriverproject.org>; Wed, 30 Oct 2019 09:40:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id q7-O7zl1kuGN for <devel@linuxdriverproject.org>;
 Wed, 30 Oct 2019 09:40:52 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 5F2522002C
 for <devel@driverdev.osuosl.org>; Wed, 30 Oct 2019 09:40:52 +0000 (UTC)
Received: from localhost (unknown [91.217.168.176])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 915FF20874;
 Wed, 30 Oct 2019 09:40:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572428452;
 bh=v2VPGzmwzTx7M7vLZa8QbUcX7fBOpSfiiK/n0DFbQ1c=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=teLC9UHiGJUAq5pRLSA/gRsvVZXir0xuU7lSsK8x1XPPalvs/Q+VDYbUtdzcLY7wM
 ygwqzA3nSYRdk/+yY80K6hhGnEWiR6mQB7J/73ZoQiC0HFt0MbOWJY59vlJ7opU4wh
 6LVGhoNpCaPRt3OosGChWLOgfMObma9ICXp7ANhY=
Date: Wed, 30 Oct 2019 10:40:49 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
Subject: Re: [PATCH v2 1/3] staging: rts5208: Eliminate the use of Camel Case
 in files ms
Message-ID: <20191030094049.GA676265@kroah.com>
References: <20191029145517.630-1-gabrielabittencourt00@gmail.com>
 <20191029145517.630-2-gabrielabittencourt00@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191029145517.630-2-gabrielabittencourt00@gmail.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 outreachy-kernel@googlegroups.com, lkcamp@lists.libreplanetbr.org,
 nishkadg.linux@gmail.com, kim.jamie.bradley@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Oct 29, 2019 at 11:55:15AM -0300, Gabriela Bittencourt wrote:
> Cleans up checks of "Avoid CamelCase" in file ms.h and ms.c
> 
> Signed-off-by: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>

The subject line seems odd, what does "in files ms" mean?

Same for other patches in this series, please clean that up to make it
more informative.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
