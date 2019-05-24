Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 679F729140
	for <lists+driverdev-devel@lfdr.de>; Fri, 24 May 2019 08:49:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4134886D02;
	Fri, 24 May 2019 06:49:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VcByXyWprEue; Fri, 24 May 2019 06:49:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DE27486CF9;
	Fri, 24 May 2019 06:48:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9C4361BF3C6
 for <devel@linuxdriverproject.org>; Fri, 24 May 2019 06:48:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8A4EE87E84
 for <devel@linuxdriverproject.org>; Fri, 24 May 2019 06:48:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BIAhuNGl4mLt for <devel@linuxdriverproject.org>;
 Fri, 24 May 2019 06:48:54 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 151A187048
 for <devel@driverdev.osuosl.org>; Fri, 24 May 2019 06:48:54 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 56E9620868;
 Fri, 24 May 2019 06:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558680533;
 bh=rGu1zL2OOAibfcGGS01P8GCFm4TPZAiv4uyTHXxYtsc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=N0Yc6OCwovtmmEytsYn+nZpJn6AxGHpV/k1tPA6B3mmNkhBfSrV9S0U69osm9wOM+
 526Q6ced/liTKDb48Lr2fKjBm3vsdHw5JXa59oalD4BezP3tm2kdO83pW08kHKUhWH
 pI19g4HXutJkUwea2Tf2Iw4KDGZ4zW12toJvQ5CE=
Date: Fri, 24 May 2019 08:48:51 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Tianzheng Li <ltz0302@gmail.com>
Subject: Re: [PATCH] staging/gasket: Fix string split
Message-ID: <20190524064851.GA3194@kroah.com>
References: <20190523154639.42662-1-ltz0302@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190523154639.42662-1-ltz0302@gmail.com>
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

On Thu, May 23, 2019 at 05:46:39PM +0200, Tianzheng Li wrote:
> This patch removes unnecessary quoted string splits.
> 
> Reported-by: Jie Zhang <zhangjie.cnde@gmail.com>
> Signed-off-by: Tianzheng Li <ltz0302@gmail.com>
> ---
>  drivers/staging/gasket/gasket_core.c       |  6 ++----
>  drivers/staging/gasket/gasket_ioctl.c      |  3 +--
>  drivers/staging/gasket/gasket_page_table.c | 14 ++++++--------
>  3 files changed, 9 insertions(+), 14 deletions(-)
> 

When you resend a patch, you need to version it and put underneath the
--- line what you changed in this version from the last.  The
documentation says how to do this, and there are lots of examples on the
mailing lists of how this looks.

Please do that here, and resend as a v2.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
