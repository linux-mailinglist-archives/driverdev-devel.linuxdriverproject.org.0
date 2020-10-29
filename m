Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 207D529E349
	for <lists+driverdev-devel@lfdr.de>; Thu, 29 Oct 2020 06:22:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 28A2B86AD8;
	Thu, 29 Oct 2020 05:22:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id u4uLDqAxMXM7; Thu, 29 Oct 2020 05:22:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 16D20865C1;
	Thu, 29 Oct 2020 05:22:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 558B91BF852
 for <devel@linuxdriverproject.org>; Thu, 29 Oct 2020 05:22:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 50D778697A
 for <devel@linuxdriverproject.org>; Thu, 29 Oct 2020 05:22:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 03YaPiXz+pF4 for <devel@linuxdriverproject.org>;
 Thu, 29 Oct 2020 05:22:10 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C83CE86972
 for <devel@driverdev.osuosl.org>; Thu, 29 Oct 2020 05:22:10 +0000 (UTC)
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7F9362076B;
 Thu, 29 Oct 2020 05:22:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1603948930;
 bh=TGoZjMo8QP/0JoGo1NmGUBmyKWs7VMqNFa8Iyu8aWtU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=oE5xwZsnzuxr77Q3NfWStDdVXKPtnN9RqwowGyYrKvaKhNF61hELTcGGb+gjqsgcY
 K0KN/VWD/HQWHz5c9ZwbO2PAv8D7u75gWnnLfv+1V2NedHeAnM5W9WLmpgiL8VzxSa
 BEVb+oEs6eLTymlKMThmspnFFjVH88FZYsER+kEM=
Date: Thu, 29 Oct 2020 06:22:06 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Manuel Palenzuela <manuelpalenzuelamerino@gmail.com>
Subject: Re: [PATCH] Staging: rtl8723bs: core: rtw_cmd: Fixed two
 if-statement coding style issues
Message-ID: <20201029052206.GB282324@kroah.com>
References: <20201028212837.28030-1-manuelpalenzuelamerino@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201028212837.28030-1-manuelpalenzuelamerino@gmail.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Oct 28, 2020 at 09:28:37PM +0000, Manuel Palenzuela wrote:
> Fixed two cases where the if-statement coding style wasn't following the guidelines. (rtw_cmd.c)
>

Please properly wrap your changelog comments at 72 columns like your
editor asked you to :)

And what is with the file name in ()?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
