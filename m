Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C87752A9302
	for <lists+driverdev-devel@lfdr.de>; Fri,  6 Nov 2020 10:43:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0EA8E868D8;
	Fri,  6 Nov 2020 09:43:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id P7x2tnqVJ+OC; Fri,  6 Nov 2020 09:43:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 25FB48689A;
	Fri,  6 Nov 2020 09:43:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1F5991BF358
 for <devel@linuxdriverproject.org>; Fri,  6 Nov 2020 09:42:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1B780856BF
 for <devel@linuxdriverproject.org>; Fri,  6 Nov 2020 09:42:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yP0NFNrR9CYG for <devel@linuxdriverproject.org>;
 Fri,  6 Nov 2020 09:42:58 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id AB0C28567A
 for <devel@driverdev.osuosl.org>; Fri,  6 Nov 2020 09:42:58 +0000 (UTC)
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6E3BD208FE;
 Fri,  6 Nov 2020 09:42:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1604655778;
 bh=g00gdWIk4p9Pliq9PH6u7KZdMYOMYE8udyfLX1rpXPU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=bPfAw8+tmUrlWgMNTdSyBpXAec9KNT/HeAvJSK19IuuhCqoqbTAklPXCPfTaPsl7v
 C3Vga9XmgULkAHc88ZzXYq8DYd0XPdTmTT6aFODv3G7lr4WbCi+DAgpc0wn/BuOo4E
 rlPha2h6MyuRjRP8HwlVULvR3w4leJ6Of12WUhnU=
Date: Fri, 6 Nov 2020 10:43:44 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Subject: Re: [PATCH v4 4/4] staging: mt7621-pci-phy: remove driver from staging
Message-ID: <20201106094344.GA2641594@kroah.com>
References: <20201031122246.16497-1-sergio.paracuellos@gmail.com>
 <20201031122246.16497-5-sergio.paracuellos@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201031122246.16497-5-sergio.paracuellos@gmail.com>
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org, kishon@ti.com,
 vkoul@kernel.org, robh+dt@kernel.org, neil@brown.name
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Oct 31, 2020 at 01:22:46PM +0100, Sergio Paracuellos wrote:
> Remove this driver from staging because it has been moved
> into its properly place in the kernel.
> 
> Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
> ---
>  drivers/staging/Kconfig                       |   2 -
>  drivers/staging/Makefile                      |   1 -
>  drivers/staging/mt7621-pci-phy/Kconfig        |   8 -
>  drivers/staging/mt7621-pci-phy/Makefile       |   2 -
>  drivers/staging/mt7621-pci-phy/TODO           |   4 -
>  .../mediatek,mt7621-pci-phy.yaml              |  36 --
>  .../staging/mt7621-pci-phy/pci-mt7621-phy.c   | 373 ------------------
>  7 files changed, 426 deletions(-)
>  delete mode 100644 drivers/staging/mt7621-pci-phy/Kconfig
>  delete mode 100644 drivers/staging/mt7621-pci-phy/Makefile
>  delete mode 100644 drivers/staging/mt7621-pci-phy/TODO
>  delete mode 100644 drivers/staging/mt7621-pci-phy/mediatek,mt7621-pci-phy.yaml
>  delete mode 100644 drivers/staging/mt7621-pci-phy/pci-mt7621-phy.c

Acked-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
