Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 120E525190
	for <lists+driverdev-devel@lfdr.de>; Tue, 21 May 2019 16:10:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 1CD2B227AD;
	Tue, 21 May 2019 14:10:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5lCnOYUe3SZ4; Tue, 21 May 2019 14:10:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 8C221261B1;
	Tue, 21 May 2019 14:10:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BE9BE1BF4DD
 for <devel@linuxdriverproject.org>; Tue, 21 May 2019 14:10:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B9933869F2
 for <devel@linuxdriverproject.org>; Tue, 21 May 2019 14:10:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZjDzIm3cCO2H for <devel@linuxdriverproject.org>;
 Tue, 21 May 2019 14:10:06 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 28AC686A7C
 for <devel@driverdev.osuosl.org>; Tue, 21 May 2019 14:10:06 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7EE742173C;
 Tue, 21 May 2019 14:10:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558447806;
 bh=gzdEhfVedqKQ0FCIkuxWhCCMI89FNeLAbYZkE8ccCFI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=XZU/hID3dDaMhUGiAt62g1blSGcVOUmx3jcJAuYLw1kB4wEv0vuQpTbpQd4FyDVpw
 CKvGyYJ9BdY8RETE+S+21a1zdOXkuOoeLd19Vpxfl7AUIA8SYPT3rgxtxnX94NK9ky
 Z75+exQf1N35Z6mSQybM15tz1Okx68z52QkC43Uc=
Date: Tue, 21 May 2019 16:10:03 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Tianzheng Li <ltz0302@gmail.com>
Subject: Re: [PATCH] staging/gasket: Fix string split
Message-ID: <20190521141003.GA24684@kroah.com>
References: <20190521135012.24887-1-ltz0302@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190521135012.24887-1-ltz0302@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
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
Cc: devel@driverdev.osuosl.org, zhangjie.cnde@gmail.com,
 linux-kernel@i4.cs.fau.de, linux-kernel@vger.kernel.org, rspringer@google.com,
 toddpoynor@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, May 21, 2019 at 03:50:12PM +0200, Tianzheng Li wrote:
> This patch removes unnecessary quoted string splits.
> Signed-off-by: Tianzheng Li <ltz0302@gmail.com>
> Signed-off-by: Jie Zhang <zhangjie.cnde@gmail.com>

We need a blank line before the signed-off-by line.

Care to fix this up and resend?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
