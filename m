Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C6FD103FC4
	for <lists+driverdev-devel@lfdr.de>; Wed, 20 Nov 2019 16:46:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D69932420F;
	Wed, 20 Nov 2019 15:46:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2JuW+BAzwn9E; Wed, 20 Nov 2019 15:46:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 750C023077;
	Wed, 20 Nov 2019 15:46:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1CADB1BF5EA
 for <devel@linuxdriverproject.org>; Wed, 20 Nov 2019 15:46:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 1828C86523
 for <devel@linuxdriverproject.org>; Wed, 20 Nov 2019 15:46:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2nr5jLFNS0Yx for <devel@linuxdriverproject.org>;
 Wed, 20 Nov 2019 15:46:27 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 8B0158475A
 for <devel@driverdev.osuosl.org>; Wed, 20 Nov 2019 15:46:27 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E141820692;
 Wed, 20 Nov 2019 15:46:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574264787;
 bh=jsNoUD5HlaDAsX6ZueZcGW8hIPzIvVjC/F/MlG0JjRA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Ih34yPJ39xN6RB7lQ+aJbhG8O45zFJKIzWeJ+UOSbcPsz2wpCiRkMIb/t6E0+KSjA
 wFadb97jArw2FDxgqF8/H40JLJGbddhH5O6TVJn1GfNn/mYiutz/SYDeAhb0rbiUhV
 U2P76LwZ6NUgOKrZlXLeT5fQcKXFuA18kk0vvT1E=
Date: Wed, 20 Nov 2019 16:46:25 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Marcelo Diop-Gonzalez <marcgonzalez@google.com>
Subject: Re: [PATCH 1/3] staging: vchiq_dump: Replace min with min_t
Message-ID: <20191120154625.GA3015918@kroah.com>
References: <cover.1574253964.git.marcgonzalez@google.com>
 <d38c33e15a5cdffd2d49243574fee46be8caee92.1574253964.git.marcgonzalez@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d38c33e15a5cdffd2d49243574fee46be8caee92.1574253964.git.marcgonzalez@google.com>
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
Cc: devel@driverdev.osuosl.org, eric@anholt.net, wahrenst@gmx.net,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Nov 20, 2019 at 10:36:46AM -0500, Marcelo Diop-Gonzalez wrote:
> Replacing this and fixing the block comment format in this
> function fixes checkpatch warnings.

That is two different things.  Which means you need two different
patches here.

Please fix up.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
