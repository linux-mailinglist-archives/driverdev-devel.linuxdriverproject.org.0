Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DCD14AD52A
	for <lists+driverdev-devel@lfdr.de>; Tue,  8 Feb 2022 10:46:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 78AA7817A3;
	Tue,  8 Feb 2022 09:46:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QmRx63G-5qq2; Tue,  8 Feb 2022 09:46:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2988E812C0;
	Tue,  8 Feb 2022 09:46:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9A7ED1BF308
 for <devel@linuxdriverproject.org>; Tue,  8 Feb 2022 09:46:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 886C940629
 for <devel@linuxdriverproject.org>; Tue,  8 Feb 2022 09:46:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yfZjh3WAVGor for <devel@linuxdriverproject.org>;
 Tue,  8 Feb 2022 09:46:50 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 07AAE4058C
 for <devel@driverdev.osuosl.org>; Tue,  8 Feb 2022 09:46:49 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 9DF9E613F5;
 Tue,  8 Feb 2022 09:46:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 86753C004E1;
 Tue,  8 Feb 2022 09:46:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1644313608;
 bh=8UbAjj/H6avAWOylioig6EnD0MGcFmQgIPkZQYteBMI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=NL4mPYiCgOPwGpLfECYMdrXx3UnBrMG1x8wFtDUHy63Yp9jTV2gbwD65NwdCBr+LQ
 yDQuC8cCfuCJtkdD1Dehs3YIBY8/jAa4RrVpIyyA/S3OQf3zj1e8gjf86MmYGwHXtu
 gn/ibnf871eQ+VlCXDQLN1HXJ1z5Fhb5yxcdFvDU=
Date: Tue, 8 Feb 2022 10:46:45 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Tong Zhang <ztong0001@gmail.com>
Subject: Re: [PATCH] staging: drop fpgaboot driver
Message-ID: <YgI8BQlUa671AvkY@kroah.com>
References: <Yf025dphJw2rUVR5@kroah.com>
 <20220204190847.3809405-1-ztong0001@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220204190847.3809405-1-ztong0001@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Tom Rix <trix@redhat.com>,
 linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
 insop.song@gainspeed.com, dan.carpenter@oracle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Feb 04, 2022 at 11:08:35AM -0800, Tong Zhang wrote:
> The gs_fpgaboot driver is totally broken since 2014 and no one even
> noticed the driver is not probing. Given the quality of the driver
> and its current state it makes sense to drop it.
> 
> Signed-off-by: Tong Zhang <ztong0001@gmail.com>

Thanks, now dropped!

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
