Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E67B34326A
	for <lists+driverdev-devel@lfdr.de>; Sun, 21 Mar 2021 13:25:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 90E8E40275;
	Sun, 21 Mar 2021 12:25:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VDpZ3prKuhUN; Sun, 21 Mar 2021 12:25:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id F3B4840264;
	Sun, 21 Mar 2021 12:25:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 40EC31BF5F5
 for <devel@linuxdriverproject.org>; Sun, 21 Mar 2021 12:24:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 303226060E
 for <devel@linuxdriverproject.org>; Sun, 21 Mar 2021 12:24:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CqJNCd1Y8CQr for <devel@linuxdriverproject.org>;
 Sun, 21 Mar 2021 12:24:56 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B7E9B605E7
 for <devel@driverdev.osuosl.org>; Sun, 21 Mar 2021 12:24:56 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 3878661946;
 Sun, 21 Mar 2021 12:24:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1616329494;
 bh=zn0thQKrRCOaUqXvGKbzNwd9nTC8oSH1ccRAESfzKnw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=a+M/10DwX2/dUCM80ZtyS7gENrCKmRXjWnCmGvj3p1GWtiW6R3vyrtM9b5fam9xhu
 9lC3pVM5TGctVC6MYNGWmPHHYgHIfHltHlzZIZkymulPcWB24O2RDvz6ZSMyZc5Qc/
 Zx2OdGr59gdsVpPY9AwsPloX0dTmig6C/Vy6tOnE=
Date: Sun, 21 Mar 2021 13:24:49 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: eli.billauer@gmail.com
Subject: Re: [PATCH v4 1/2] char: xillybus: Move class-related functions to
 new xillybus_class.c
Message-ID: <YFc7EckRKa/iO8rU@kroah.com>
References: <20210311095033.20956-1-eli.billauer@gmail.com>
 <20210311095033.20956-2-eli.billauer@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210311095033.20956-2-eli.billauer@gmail.com>
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
Cc: devel@driverdev.osuosl.org, dan.carpenter@oracle.com,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org, arnd@arndb.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Mar 11, 2021 at 11:50:32AM +0200, eli.billauer@gmail.com wrote:
> +EXPORT_SYMBOL(xillybus_init_chrdev);

Given the license for this code, perhaps EXPORT_SYMBOL_GPL()?

I have to ask :)

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
