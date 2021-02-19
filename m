Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E05EB31FE9C
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Feb 2021 19:14:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3BED9874B5;
	Fri, 19 Feb 2021 18:14:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lp+IvvFfarWb; Fri, 19 Feb 2021 18:14:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id E33838738A;
	Fri, 19 Feb 2021 18:14:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 957121BF37C
 for <devel@linuxdriverproject.org>; Fri, 19 Feb 2021 18:14:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8DB0386C2F
 for <devel@linuxdriverproject.org>; Fri, 19 Feb 2021 18:14:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BrSGLTXjr0hR for <devel@linuxdriverproject.org>;
 Fri, 19 Feb 2021 18:14:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 130C186C06
 for <devel@driverdev.osuosl.org>; Fri, 19 Feb 2021 18:14:05 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id F011064E44;
 Fri, 19 Feb 2021 18:14:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1613758444;
 bh=UVlHOufbHUG8NtYLUcmOtrcd4LtJHVEv5SvtflqnwGs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=UMOrK8dK2xRwQejExH1w+/L6MNEu599tB7zzfsj1w2nALlRahDKa/CnrdOi9fQ15E
 xth+oqFXonZrKSqPIOnhvFZEmDkIWPvUigAoTk6vPQuHQMPFsW5OkffwGgqA43oBC0
 3oZqhbZbNbMQAhXnsDfUmtTI9AV+4fU7o3efpXVk=
Date: Fri, 19 Feb 2021 17:25:35 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Kurt Manucredo <fuzzybritches@protonmail.com>
Subject: Re: [PATCH v2] staging: rtl8723bs: fix code style comparison warning
Message-ID: <YC/mf97ypmGMdtSA@kroah.com>
References: <20210219144928.8-1-fuzzybritches@protonmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210219144928.8-1-fuzzybritches@protonmail.com>
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
Cc: devel@driverdev.osuosl.org, tiwai@suse.de, d.straghkov@ispras.ru,
 linux-kernel@vger.kernel.org, dan.carpenter@oracle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Feb 19, 2021 at 02:50:53PM +0000, Kurt Manucredo wrote:
> 
> 
> changes since previous version:
> - change Subject line
> - change commit message
> - change commit message position to above signed-off-by

This all goes below the --- line please.

Please make a v3.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
