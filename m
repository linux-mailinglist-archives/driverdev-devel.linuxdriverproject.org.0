Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 16C5B31F5CE
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Feb 2021 09:26:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B6FC086B0E;
	Fri, 19 Feb 2021 08:26:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id D1CZdHOyEHR0; Fri, 19 Feb 2021 08:26:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 12A5886B09;
	Fri, 19 Feb 2021 08:26:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2C5201BF318
 for <devel@linuxdriverproject.org>; Fri, 19 Feb 2021 08:26:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2901E8744E
 for <devel@linuxdriverproject.org>; Fri, 19 Feb 2021 08:26:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5ELXeLXb+NY0 for <devel@linuxdriverproject.org>;
 Fri, 19 Feb 2021 08:26:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id AC76487449
 for <devel@driverdev.osuosl.org>; Fri, 19 Feb 2021 08:26:35 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 79B1664E4B;
 Fri, 19 Feb 2021 08:26:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1613723195;
 bh=yq7EMrqicWJGN6iPmLcD64zNky2vncuQfURBBO9inNQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=WSOKodGbNLeJKH21rNc8oq5P92HuU/J0iZgKZYySCGYjp1Tz4HL/0gpeCiFbyKgIU
 WmKCSR9ohHDoncrazCTKtqaJVydEhmy+OGjDXjwaq9eUZi6cO/f6mRKRT6Ms8jWvVF
 6FsVzRYfh48UAk8uu0PAguFZPw6wzbFGZwh80Ixo=
Date: Fri, 19 Feb 2021 09:26:32 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Nikolay Kyx <knv418@gmail.com>
Subject: Re: [PATCH v2] staging: kpc2000: code style: fix alignment issues
Message-ID: <YC92OIgh6HTEexu4@kroah.com>
References: <YC7TiCzbB+4ppzdk@kroah.com>
 <20210219080451.19857-1-knv418@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210219080451.19857-1-knv418@gmail.com>
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
Cc: sergiu.cuciurean@analog.com, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Feb 19, 2021 at 11:04:51AM +0300, Nikolay Kyx wrote:
> This patch fixes the following checkpatch.pl warnings:
> 
> WARNING: line length of 124 exceeds 100 columns
> CHECK: Alignment should match open parenthesis

That's two different things, please make this two different patches.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
