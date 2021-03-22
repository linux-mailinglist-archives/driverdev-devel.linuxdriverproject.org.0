Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B20C3344A4F
	for <lists+driverdev-devel@lfdr.de>; Mon, 22 Mar 2021 17:05:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D584A60794;
	Mon, 22 Mar 2021 16:05:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QGCZ6ER9QFU7; Mon, 22 Mar 2021 16:05:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 497E260592;
	Mon, 22 Mar 2021 16:05:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CD1AA1BF319
 for <devel@linuxdriverproject.org>; Mon, 22 Mar 2021 16:05:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BCA5E4027F
 for <devel@linuxdriverproject.org>; Mon, 22 Mar 2021 16:05:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Av7c7d4GBFCX for <devel@linuxdriverproject.org>;
 Mon, 22 Mar 2021 16:05:08 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 545F74026B
 for <devel@driverdev.osuosl.org>; Mon, 22 Mar 2021 16:05:08 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 3AD2B619AB;
 Mon, 22 Mar 2021 16:05:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1616429107;
 bh=Ra9MAzqkKJlSO+yHzNSypAr67etWGptcqZyBCYt9Qmw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=bj41YKN3sG86Z5bQYMPMzDTGFWAbEjHH7ZzaflBuqXlsVc41ld6lpIszL+4NiYX82
 PJmKxCeEeR9QKMzzcGMjpPr3cjDHjWYH5z+634JZ0NkmSqMQgL9ZHfqvyl2xP+RO4M
 XnfnmLrhjf33HUYa9kKrK6HzegL/hLWm31WU1e8k=
Date: Mon, 22 Mar 2021 17:05:05 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Bhaskar Chowdhury <unixbhaskar@gmail.com>
Subject: Re: [PATCH] staging: rtl8723bs: Mundane typo fixes
Message-ID: <YFjAMa6AJ0nOK7F3@kroah.com>
References: <20210322072808.996970-1-unixbhaskar@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210322072808.996970-1-unixbhaskar@gmail.com>
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

On Mon, Mar 22, 2021 at 12:58:08PM +0530, Bhaskar Chowdhury wrote:
> 
> s/stoping/stooping/

Huh?

Are you _sure_ that is the correct replacement?  Last I looked it
wasn't...

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
