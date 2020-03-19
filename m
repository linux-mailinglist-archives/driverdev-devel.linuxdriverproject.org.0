Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E7FAF18B8EE
	for <lists+driverdev-devel@lfdr.de>; Thu, 19 Mar 2020 15:12:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id CFBE087EC5;
	Thu, 19 Mar 2020 14:12:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 24fzOyW2nhhK; Thu, 19 Mar 2020 14:12:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7127887E0E;
	Thu, 19 Mar 2020 14:12:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 19A641BF3EE
 for <devel@linuxdriverproject.org>; Thu, 19 Mar 2020 14:12:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 0EC4A87E0E
 for <devel@linuxdriverproject.org>; Thu, 19 Mar 2020 14:12:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VYpPKQEmEtQD for <devel@linuxdriverproject.org>;
 Thu, 19 Mar 2020 14:12:46 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 32FEE87B07
 for <devel@driverdev.osuosl.org>; Thu, 19 Mar 2020 14:12:46 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8126420CC7;
 Thu, 19 Mar 2020 14:12:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584627166;
 bh=2Zqf9W/KTFDdCNMpUfDEgtc6u1k7w31Q3fyzmD0cjPk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=pORtBDWf/0NEM82XInF+pCLPglEjoPNPxPO6iN9YkqQPjtjV3Rc6YWB3757dhQjYV
 ZndcnUzkJ0H/NZsTICf9G5riMYibrGF8am2KPCMN03YFB/IrRilTEW8qcxJ1JS7NgR
 /PPKk5wQBqAU+IIABOR+AJQ6L8FsKeCpGhFftye0=
Date: Thu, 19 Mar 2020 15:12:43 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Aravind Ceyardass <aravind.pub@gmail.com>
Subject: Re: [PATCH] staging: exfat: Fix checkpatch.pl camelcase issues
Message-ID: <20200319141243.GA30888@kroah.com>
References: <20200319140647.3926-1-aravind.pub@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200319140647.3926-1-aravind.pub@gmail.com>
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
Cc: linux-fsdevel@vger.kernel.org, devel@driverdev.osuosl.org,
 valdis.kletnieks@vt.edu
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Mar 19, 2020 at 10:06:47AM -0400, Aravind Ceyardass wrote:
> Fix ffsCamelCase function names and mixed case enums
> 
> Signed-off-by: Aravind Ceyardass <aravind.pub@gmail.com>
> ---
>  drivers/staging/exfat/TODO          |   1 -
>  drivers/staging/exfat/exfat.h       |  12 +-
>  drivers/staging/exfat/exfat_super.c | 222 ++++++++++++++--------------
>  3 files changed, 117 insertions(+), 118 deletions(-)

These files are not in linux-next, or in my tree, anymore.

Please always work against the latest development tree so you do not
waste duplicated effort.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
