Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B7C411533A
	for <lists+driverdev-devel@lfdr.de>; Fri,  6 Dec 2019 15:35:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B303187736;
	Fri,  6 Dec 2019 14:35:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3mvlreBakIJI; Fri,  6 Dec 2019 14:35:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 037B787729;
	Fri,  6 Dec 2019 14:35:33 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7ECE01BF844
 for <driverdev-devel@linuxdriverproject.org>;
 Fri,  6 Dec 2019 14:35:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 68136261F9
 for <driverdev-devel@linuxdriverproject.org>;
 Fri,  6 Dec 2019 14:35:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OOkZmPf1H82q
 for <driverdev-devel@linuxdriverproject.org>;
 Fri,  6 Dec 2019 14:35:30 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id CCC4B253D1
 for <driverdev-devel@linuxdriverproject.org>;
 Fri,  6 Dec 2019 14:35:30 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2E45124659;
 Fri,  6 Dec 2019 14:35:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575642930;
 bh=CvIVV78+tt8L7uUwLatILF6Yz/vdlkMFHWoPGLmoE9U=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=sZCoRW3W7SKIn0x74ZLaXqxWMKLZXUBocZpevaCrACueUdY9/idNV4TZ4nYaT/Nab
 b2tYXVrBu0WgTEt3d9u7aSD67MTru1xcvHbUyWqcfEiamwFJvBGidYxArhtnZCFw7Y
 4EXedt0LlEVBi/156ZY3Yo0rkEu7VikBbi62XDbY=
Date: Fri, 6 Dec 2019 15:35:28 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Christian Gromm <christian.gromm@microchip.com>
Subject: Re: [PATCH RFC 2/6] staging: most: rename core.h to most.h
Message-ID: <20191206143528.GA32126@kroah.com>
References: <1574697096-2942-1-git-send-email-christian.gromm@microchip.com>
 <1574697096-2942-3-git-send-email-christian.gromm@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1574697096-2942-3-git-send-email-christian.gromm@microchip.com>
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
Cc: driverdev-devel@linuxdriverproject.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Nov 25, 2019 at 04:51:32PM +0100, Christian Gromm wrote:
> This patch renames the core header file core.h to most.h. The intention
> behind this is to have a meaningful name once this file is moved to the
> /include/linux directory.

Does everything in this .h file have to be exposed to the whole kernel?
Are there any things in here that are local only to the most "core"
code?

If this whole thing is public, you might want to clean up your naming of
some structures:

> +enum mbo_status_flags {

enum most_buffer_status_flags?


> +struct mbo {

struct most_buffer_object?

> +struct core_component {

struct most_core_component?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
