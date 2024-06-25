Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 474AE916CD5
	for <lists+driverdev-devel@lfdr.de>; Tue, 25 Jun 2024 17:23:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D142240118;
	Tue, 25 Jun 2024 15:23:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6qaaeji__RpD; Tue, 25 Jun 2024 15:23:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B46DF4013B
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B46DF4013B;
	Tue, 25 Jun 2024 15:23:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CEF3C1BF3C4
 for <devel@linuxdriverproject.org>; Tue, 25 Jun 2024 15:23:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BB54D40522
 for <devel@linuxdriverproject.org>; Tue, 25 Jun 2024 15:23:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZVbQ49D18HXs for <devel@linuxdriverproject.org>;
 Tue, 25 Jun 2024 15:23:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:40e1:4800::1; helo=sin.source.kernel.org;
 envelope-from=gregkh@linuxfoundation.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 5FE9D40289
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5FE9D40289
Received: from sin.source.kernel.org (sin.source.kernel.org
 [IPv6:2604:1380:40e1:4800::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5FE9D40289
 for <devel@driverdev.osuosl.org>; Tue, 25 Jun 2024 15:23:27 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 3446CCE01CE;
 Tue, 25 Jun 2024 15:23:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1159AC32781;
 Tue, 25 Jun 2024 15:23:21 +0000 (UTC)
Date: Tue, 25 Jun 2024 17:23:19 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Teddy Engel <engel.teddy@gmail.com>
Subject: Re: [PATCH v2] staging: rtl8192e: Fix conflicting types error with
 net_device.
Message-ID: <2024062553-postbox-gangly-e155@gregkh>
References: <20240625151918.10839-1-engel.teddy@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240625151918.10839-1-engel.teddy@gmail.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=linuxfoundation.org; 
 s=korg; t=1719329002;
 bh=FiQ21QoQy0JLE0Wlrm7V0SyFrEIXyUyNZHRIlRzYU9Q=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=qgK7hvg4qzs5fRCAwgMEaxdPAU5HU9QU9y7n1ChN0o94m0OhreWjVBuagQI46KCIE
 5TkqY2kicJfHCungDh2K7qdKfSvHUD4WyZZjkEsVr4hEI6OGiaBfg0sgRGXde2UpR1
 iah9JTKi7ZbBDDENlh0me5PN7PbC9a/7AUb6Ru8M=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linuxfoundation.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=linuxfoundation.org header.i=@linuxfoundation.org
 header.a=rsa-sha256 header.s=korg header.b=qgK7hvg4
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
Cc: devel@driverdev.osuosl.org, linux-staging@lists.linux.dev,
 linux-kernel@vger.kernel.org, oe-kbuild-all@lists.linux.dev
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Jun 25, 2024 at 04:19:18PM +0100, Teddy Engel wrote:
> Add a pre-declaration of struct net_device so the compiler is able to
> use rtl_pci.h / rtl_cam.h.
> 
> Fix for commit: 7dff0b27d9c842f88149bf611cbc0b59be1dcd3c:
> [34/59] staging: rtl89192e: Remove unnecessary pre-declaration of struct
> net_device.
> 
> Signed-off-by: Teddy Engel <engel.teddy@gmail.com>
> Reported-by: kernel test robot <lkp@intel.com>
> Closes: https://lore.kernel.org/oe-kbuild-all/202406250858.L8rJMHQm-lkp@intel.com/
> ---
> v2: Add commit id that's being fixed.

You do that with a "Fixes:" tag, not the paragraph you wrote above :)

The documentation should explain how to do it, right?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
