Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D832DE9957
	for <lists+driverdev-devel@lfdr.de>; Wed, 30 Oct 2019 10:42:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id BE57086C7E;
	Wed, 30 Oct 2019 09:42:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CP11g3lw3O4u; Wed, 30 Oct 2019 09:42:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3F71386852;
	Wed, 30 Oct 2019 09:42:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B74E41BF31E
 for <devel@linuxdriverproject.org>; Wed, 30 Oct 2019 09:42:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B42A685319
 for <devel@linuxdriverproject.org>; Wed, 30 Oct 2019 09:42:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ATUIsae4V2RY for <devel@linuxdriverproject.org>;
 Wed, 30 Oct 2019 09:42:25 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 6159584B80
 for <devel@driverdev.osuosl.org>; Wed, 30 Oct 2019 09:42:25 +0000 (UTC)
Received: from localhost (unknown [91.217.168.176])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 850DC20874;
 Wed, 30 Oct 2019 09:42:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572428545;
 bh=HRKTHKDlz6q42RvW+t8ISuLjVtmTQEedPBjCfZxFMFk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=x6HHOqoRviik/ApDaPm4bGwA5mS2lTczgm2Qlb0ZZA/Ej4kXYF2ER60/eyBijYI5Y
 ma1okAxGnpSYoRQqvbb+i1D0nmJzqNP+2A+CYHik8jiaYt0XDyYiXIuSHvD0bvch25
 YJUX+NVPhh8Jl3NzGYLAek5LtBDXIsDHvgG7UqaQ=
Date: Wed, 30 Oct 2019 10:42:22 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Roi Martin <jroi.martin@gmail.com>
Subject: Re: [PATCH 6/6] staging: exfat: replace kmalloc with kmalloc_array
Message-ID: <20191030094222.GA678631@kroah.com>
References: <20191030010328.10203-1-jroi.martin@gmail.com>
 <20191030010328.10203-7-jroi.martin@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191030010328.10203-7-jroi.martin@gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
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
Cc: devel@driverdev.osuosl.org, valdis.kletnieks@vt.edu,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Oct 30, 2019 at 02:03:28AM +0100, Roi Martin wrote:
> Replace expressions of the form:
> 	kmalloc(count * size, GFP_KERNEL);
> With:
> 	kmalloc_array(count, size, GFP_KERNEL);
> 
> Signed-off-by: Roi Martin <jroi.martin@gmail.com>
> ---
>  drivers/staging/exfat/exfat_core.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)

This patch failed to apply.  Please fix it up and resend it as a new
version.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
