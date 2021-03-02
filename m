Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EFFC32A257
	for <lists+driverdev-devel@lfdr.de>; Tue,  2 Mar 2021 15:18:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 831854318A;
	Tue,  2 Mar 2021 14:18:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Kcq5pQkaGH8y; Tue,  2 Mar 2021 14:18:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id EBE0E43177;
	Tue,  2 Mar 2021 14:18:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C79C81BF4E5
 for <devel@linuxdriverproject.org>; Tue,  2 Mar 2021 14:18:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B788E43177
 for <devel@linuxdriverproject.org>; Tue,  2 Mar 2021 14:18:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4LHzg-puXhbr for <devel@linuxdriverproject.org>;
 Tue,  2 Mar 2021 14:18:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8C2CD430A2
 for <devel@driverdev.osuosl.org>; Tue,  2 Mar 2021 14:18:04 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7670061494;
 Tue,  2 Mar 2021 14:18:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1614694684;
 bh=I/FQ9LFSJeF74MSp89Y15IZhKpU0lL+OIeFn8C9olrs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ftWy7f1Ej2tg+oVxCuisxa+yTR9QQIJbDGHCnu0xudnU/viwtGN81KcE+hMb4r9Qu
 TnSeLTLvYrHZuR2GqdIaUz+MZSf41c4xHJW9QV2CZtoP8VNNZ5pzULLSXfeVPx0I6+
 S309gYkpBiu5u3PHRYC5dIjsNMcwu8qBCBJ5ki2Y=
Date: Tue, 2 Mar 2021 15:18:01 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: "Darryl T. Agostinelli" <dagostinelli@gmail.com>
Subject: Re: [PATCH] staging: rtl8192u avoid flex array of flex array
Message-ID: <YD5JGYK3IxVVbULa@kroah.com>
References: <20210228010614.162998-1-dagostinelli@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210228010614.162998-1-dagostinelli@gmail.com>
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

On Sat, Feb 27, 2021 at 07:06:14PM -0600, Darryl T. Agostinelli wrote:
> Undo the flex array in struct ieee80211_info_element.  It is used as the flex
> array type in other structs (creating a flex array of flex arrays) making
> sparse unhappy.  This change maintains the intent of the code and satisfies
> sparse.

We have been trying to convert the kernel to use the [] style over time,
please don't move backwards on this.  There are loads of commits by
Gustavo in the tree that show this work.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
