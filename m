Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 642D333D2F8
	for <lists+driverdev-devel@lfdr.de>; Tue, 16 Mar 2021 12:26:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8C7976F603;
	Tue, 16 Mar 2021 11:26:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SeH4ahGOPfWn; Tue, 16 Mar 2021 11:26:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 074656E987;
	Tue, 16 Mar 2021 11:26:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8D0161BF3C8
 for <devel@linuxdriverproject.org>; Tue, 16 Mar 2021 11:26:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 887C583C48
 for <devel@linuxdriverproject.org>; Tue, 16 Mar 2021 11:26:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NOxAzVcsEXvj for <devel@linuxdriverproject.org>;
 Tue, 16 Mar 2021 11:26:09 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E6B9D83C44
 for <devel@driverdev.osuosl.org>; Tue, 16 Mar 2021 11:26:09 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id E0E1665027;
 Tue, 16 Mar 2021 11:26:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1615893969;
 bh=fQ5byuoRSBcV4wgRY5BqLvmyPiroD+0dGSSW1tSd7ig=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=vzYPQRUTTlcrDTxm0V72gT8X84dbmF3xbk42tMxshLXiLcr0WeSwewYS3OlL0zPrT
 CHW57P2XENDK9+hLl67N46OWXmWkHY+w2k1IA4IWOXEuDpx+E+SDChR9eCibeIqn5p
 ZhVat/a5PtjYLkAu4FJmpvlVfO2iS6PbiXavBoaw=
Date: Tue, 16 Mar 2021 12:26:02 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Shreya <shreya.ajithchb@gmail.com>
Subject: Re: [PATCH v2] staging:rtl8723bs:core:rtw_wlan_util:fixed
 indentation coding style issue
Message-ID: <YFCVylU6ieHAHVnc@kroah.com>
References: <20210314162855.GA2002@shreya-VirtualBox>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210314162855.GA2002@shreya-VirtualBox>
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
Cc: devel@driverdev.osuosl.org, bkkarthik@pesu.pes.edu, d.straghkov@ispras.ru,
 dan.carpenter@oracle.com, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Mar 14, 2021 at 09:58:55PM +0530, Shreya wrote:
> Fixed the indentation of the else part of the conditional statement.
> 
> Signed-off-by: Shreya <shreya.ajithchb@gmail.com>
> ---
> v1 -> v2:
> Changed name in signed-off-by to match name in From

No, change it the other way around, you had your "real" name in the
signed-off-by line, fix your email client to also have that :)

Please try this again with a v3 patch.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
