Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02BE130952B
	for <lists+driverdev-devel@lfdr.de>; Sat, 30 Jan 2021 13:51:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 04D638729E;
	Sat, 30 Jan 2021 12:51:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4g4x8aRlLB0S; Sat, 30 Jan 2021 12:51:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7A09987284;
	Sat, 30 Jan 2021 12:51:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B97A31BF36F
 for <devel@linuxdriverproject.org>; Sat, 30 Jan 2021 12:50:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B2E9286B43
 for <devel@linuxdriverproject.org>; Sat, 30 Jan 2021 12:50:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ns9-KA-fY1YM for <devel@linuxdriverproject.org>;
 Sat, 30 Jan 2021 12:50:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1E90986B26
 for <devel@driverdev.osuosl.org>; Sat, 30 Jan 2021 12:50:59 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 3221D64E0C;
 Sat, 30 Jan 2021 12:50:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1612011058;
 bh=Vkswk+VNK5//ulKcZKZQZMp+E/igvIOmTwko04oDjvA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=eTeZH3/tf7iOnZ71r5IcBfuwhP1s3IMYOu+Zvvm/WG+qI5s51+OKudjBK0UJHeJgi
 g2jc1Y3JB8/R19v1y9vADGyelL6yXFywJtvxCdQSZyLvXbusB4OnNb14anQ4p2SPpM
 m2pIEysT7qeC9AxUSB+hgAicDsiVhCzeKeN5AK2Q=
Date: Sat, 30 Jan 2021 13:50:55 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Ahana Datta <ahana.datta.ravenclaw@gmail.com>
Subject: Re: [PATCH] staging: android: ashmen.c: fixed a coding style issue
 with struct
Message-ID: <YBVWLzMjSKHkLPY7@kroah.com>
References: <20210130110630.11612-1-ahana.datta.ravenclaw@gmail.com>
 <YBVH+hInjEDZjK0r@kroah.com>
 <CAORSL+OsRN=Ri8G0FR3P=6-FEi-=N1OoWSgNoztFydj5_xYnBA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAORSL+OsRN=Ri8G0FR3P=6-FEi-=N1OoWSgNoztFydj5_xYnBA@mail.gmail.com>
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

On Sat, Jan 30, 2021 at 06:04:18PM +0530, Ahana Datta wrote:
> Hi,
> I am sorry this was my first time. I followed instructions given here :
> https://www.youtube.com/watch?v=LLBrBBImJt4

Note, that is a 10 year old talk :)

> and recompiled the driver that I had changed.

Are you sure?

Touch the .c file and rebuild to ensure that you really are building
that file please.

> I also did `make -jX` on the
> config built using "cp /boot/config-`uname -r`* .config" followed by "make
> localmodconfig".
> Was I supposed to do something else too?

You need to ensure that you really build the file that you changed.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
