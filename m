Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EF3A183BFB
	for <lists+driverdev-devel@lfdr.de>; Thu, 12 Mar 2020 23:11:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5D0CC86783;
	Thu, 12 Mar 2020 22:11:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2VWB5E7FPLhM; Thu, 12 Mar 2020 22:11:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7773E86CDF;
	Thu, 12 Mar 2020 22:11:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 970FF1BF2FD
 for <devel@linuxdriverproject.org>; Thu, 12 Mar 2020 22:11:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 92AFA8770A
 for <devel@linuxdriverproject.org>; Thu, 12 Mar 2020 22:11:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PZAucUdRD5Nr for <devel@linuxdriverproject.org>;
 Thu, 12 Mar 2020 22:11:18 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 33E8C875CA
 for <devel@driverdev.osuosl.org>; Thu, 12 Mar 2020 22:11:18 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8975B206CD;
 Thu, 12 Mar 2020 22:11:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584051078;
 bh=RxjvkDVEkdc895y9JBsbdNFn3NTLZpVv4xUfu/ri6Vw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=p2A6xb2v9ijUO1cohhIqzI3VNldn8jUR/5EiAuV225nAHPoOfwdFRUeCQ4gxPyUXR
 7/8S8Bccik9iKrTqGYZxHqIyG/L0jJQ6DNdOaIa+vbWWH+PPAmejtpPgm/GoXtv2xe
 9yui3D6LbntEbcrxwsXptAeBrmrGaNiB3syMYCjc=
Date: Thu, 12 Mar 2020 23:11:15 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Miguel Faggioni <velocir@ptor.com.br>
Subject: Re: [PATCH] staging: exfat: fixed coding style warning
Message-ID: <20200312221115.GA615825@kroah.com>
References: <20200312220127.11-1-velocir@ptor.com.br>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200312220127.11-1-velocir@ptor.com.br>
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
Cc: devel@driverdev.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Mar 12, 2020 at 10:01:27PM +0000, Miguel Faggioni wrote:
> Inverted comparison order on r8192U_wx.c:752 to place constant on the
> right side.
> 
> Signed-off-by: Miguel Faggioni <velocir@ptor.com.br>
> ---
>  drivers/staging/rtl8192u/r8192U_wx.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

The subject does not match the file being modified :(

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
