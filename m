Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C7B427AE38
	for <lists+driverdev-devel@lfdr.de>; Tue, 30 Jul 2019 18:43:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 52225207EF;
	Tue, 30 Jul 2019 16:43:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id L-9kDaZcCuL1; Tue, 30 Jul 2019 16:43:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 849FC20785;
	Tue, 30 Jul 2019 16:43:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BFA671BF3C2
 for <devel@linuxdriverproject.org>; Tue, 30 Jul 2019 16:43:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A397620785
 for <devel@linuxdriverproject.org>; Tue, 30 Jul 2019 16:43:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YdHOxVMC4Fty for <devel@linuxdriverproject.org>;
 Tue, 30 Jul 2019 16:43:07 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 3D83720796
 for <devel@driverdev.osuosl.org>; Tue, 30 Jul 2019 16:43:07 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 988B320693;
 Tue, 30 Jul 2019 16:43:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564504987;
 bh=Bhgt8Kdpcka64EAoLz5x80I0JjzdBQzRn8FJLr0MPG8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ODMySGlBeblAC/zzdqMy/4bUZq7KbqAx+8YEvJadvyWGDlQUpK1s5vNsUPK0RHnu6
 /rahrjWk6TXDW5lyChNSyx/lbp6uVUVvEsuXph0L6yFsqQVX5lpeM7d3EV9KgRqdI8
 rzrmcpjwISfQIXqwXs+Z8uF6B3yn8+BS90v89xCE=
Date: Tue, 30 Jul 2019 18:43:04 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Navid Emamdoost <navid.emamdoost@gmail.com>
Subject: Re: [PATCH v2] rtl8192_init_priv_variable: null check is missing for
 kzalloc
Message-ID: <20190730164304.GA10640@kroah.com>
References: <20190725124528.GA21757@kroah.com>
 <20190730143102.6662-1-navid.emamdoost@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190730143102.6662-1-navid.emamdoost@gmail.com>
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
Cc: devel@driverdev.osuosl.org, kjlu@umn.edu, linux-kernel@vger.kernel.org,
 John Whitmore <johnfwhitmore@gmail.com>, emamd001@umn.edu,
 Nishka Dasgupta <nishkadg.linux@gmail.com>, smccaman@umn.edu,
 Colin Ian King <colin.king@canonical.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Jul 30, 2019 at 09:30:58AM -0500, Navid Emamdoost wrote:
> Allocation for priv->pFirmware may fail, so a null check is necessary.
> priv->pFirmware is accessed later in rtl8192_adapter_start. I added the
>  check and made appropriate changes to propagate the errno to the caller.
> 
> Update: fixed style errors

The "changelog" goes below the --- line, as is described in the kernel
documentation.

Also, please look at other patches for this driver, use the same prefix
for the subject line as those did.

v3 please?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
