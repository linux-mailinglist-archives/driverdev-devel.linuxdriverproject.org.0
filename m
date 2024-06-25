Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id ED8B8916A8E
	for <lists+driverdev-devel@lfdr.de>; Tue, 25 Jun 2024 16:35:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 46962419A1;
	Tue, 25 Jun 2024 14:35:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mtCnR39GJRM1; Tue, 25 Jun 2024 14:35:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9373A419A2
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9373A419A2;
	Tue, 25 Jun 2024 14:35:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A8F751BF420
 for <devel@linuxdriverproject.org>; Tue, 25 Jun 2024 14:35:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 94BB681456
 for <devel@linuxdriverproject.org>; Tue, 25 Jun 2024 14:35:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Gp-N8FWw7Ik5 for <devel@linuxdriverproject.org>;
 Tue, 25 Jun 2024 14:35:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=145.40.73.55;
 helo=sin.source.kernel.org; envelope-from=gregkh@linuxfoundation.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org C36F48124B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C36F48124B
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C36F48124B
 for <devel@driverdev.osuosl.org>; Tue, 25 Jun 2024 14:35:37 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 24AB7CE1AC4;
 Tue, 25 Jun 2024 14:35:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0C247C32781;
 Tue, 25 Jun 2024 14:35:33 +0000 (UTC)
Date: Tue, 25 Jun 2024 16:35:31 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Teddy Engel <engel.teddy@gmail.com>
Subject: Re: [PATCH] staging: rtl8192e: Fix conflicting types error with
 net_device.
Message-ID: <2024062557-multiple-jailer-37bf@gregkh>
References: <20240625125638.28041-1-engel.teddy@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240625125638.28041-1-engel.teddy@gmail.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=linuxfoundation.org; 
 s=korg; t=1719326134;
 bh=JDHn/d44JNFoAZBFOy53uS7p8arkwoUkCxYgcCUEDaA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=XidY15uiAnViBUxtDxy3WWHgAVHXdWwxRWaRypJsFILM6G1zy9IbemCnZ05kyI/tp
 trUABPCHBKueU+1l6mdMbRVtS+wr3CZZ1FE7To6o7b2TITfKuiWo4v274gR4xodFZx
 zlvPUUuqmtNlO0vM6082JUFrqLJMdrJv6T0rkwgI=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linuxfoundation.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=linuxfoundation.org header.i=@linuxfoundation.org
 header.a=rsa-sha256 header.s=korg header.b=XidY15ui
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
Cc: devel@driverdev.osuosl.org, oe-kbuild-all@lists.linux.dev
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Jun 25, 2024 at 01:56:38PM +0100, Teddy Engel wrote:
> Add a pre-declaration of struct net_device so the compiler is able to
> use rtl_pci.h / rtl_cam.h.
> 
> Signed-off-by: Teddy Engel <engel.teddy@gmail.com>
> Reported-by: kernel test robot <lkp@intel.com>
> Closes: https://lore.kernel.org/oe-kbuild-all/202406250858.L8rJMHQm-lkp@intel.com/

What commit id does this fix?

Also note, your mailing list address is wrong for staging stuff, you
need to cc: the public one before I can take this.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
