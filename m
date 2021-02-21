Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D6B6320A5A
	for <lists+driverdev-devel@lfdr.de>; Sun, 21 Feb 2021 14:03:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4BD9D85D90;
	Sun, 21 Feb 2021 13:03:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9-JFG-HSNt8I; Sun, 21 Feb 2021 13:03:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A918085D7E;
	Sun, 21 Feb 2021 13:03:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 310D01BF981
 for <devel@linuxdriverproject.org>; Sun, 21 Feb 2021 13:03:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2DD4087000
 for <devel@linuxdriverproject.org>; Sun, 21 Feb 2021 13:03:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3qDEAkIU20RA for <devel@linuxdriverproject.org>;
 Sun, 21 Feb 2021 13:03:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 213EC86FC1
 for <devel@driverdev.osuosl.org>; Sun, 21 Feb 2021 13:03:27 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 6CA2C64F03;
 Sun, 21 Feb 2021 13:03:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1613912606;
 bh=+8YJso1d5U+qmCHLYyOR3A9yiMaPev5dqfSzbqYDd1g=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=MWmg+Fbo2n4LLziiIcpqRyPwVFqLA8GaK7oPTw/ouQ6Bap9+C5IwWZbJFPy8p7nky
 HhDzv87oMXlwY6g1Owyee4RHpITBKpxLFvEvRYbG8nFQdOHZmwsK8gwkUvM50jBlaL
 AU3cw2MHrkHbzmPZRzaXJYsLdHbVJIuw6vCW4NaM=
Date: Sun, 21 Feb 2021 14:03:24 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Nikolay Kyx <knv418@gmail.com>
Subject: Re: [PATCH v3 01/02] staging: kpc2000: code style: fix alignment
 issues
Message-ID: <YDJaHNsT9zta2up2@kroah.com>
References: <YC92OIgh6HTEexu4@kroah.com>
 <20210219163411.24873-1-knv418@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210219163411.24873-1-knv418@gmail.com>
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

On Fri, Feb 19, 2021 at 07:34:11PM +0300, Nikolay Kyx wrote:
> This patch fixes the following checkpatch.pl check:
> 
> CHECK: Alignment should match open parenthesis
> 
> in files kpc2000_i2c.c kpc2000_spi.c
> 
> Signed-off-by: Nikolay Kyx <knv418@gmail.com>
> ---
> 
> Additionally some style warnings remain valid here and could be fixed by
> another patch.
> 
> v2: Edited changelog, as suggested by Greg KH <gregkh@linuxfoundation.org>
> v3: Splitted patch in two parts, as suggested by Greg KH <gregkh@linuxfoundation.org>

You sent 2 different patches, that did different things, yet have the
same exact subject line :(

Please fix up and resend.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
