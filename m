Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 44905257737
	for <lists+driverdev-devel@lfdr.de>; Mon, 31 Aug 2020 12:25:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id E4B1C8664C;
	Mon, 31 Aug 2020 10:25:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CJLCuDpI9CUs; Mon, 31 Aug 2020 10:25:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id DE7B5863DE;
	Mon, 31 Aug 2020 10:25:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E3CC51BF2C9
 for <devel@linuxdriverproject.org>; Mon, 31 Aug 2020 10:25:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D71B32079D
 for <devel@linuxdriverproject.org>; Mon, 31 Aug 2020 10:25:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id J3Xb7N+oLHRa for <devel@linuxdriverproject.org>;
 Mon, 31 Aug 2020 10:25:35 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 538552079C
 for <devel@driverdev.osuosl.org>; Mon, 31 Aug 2020 10:25:35 +0000 (UTC)
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 805DD206E3;
 Mon, 31 Aug 2020 10:25:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1598869535;
 bh=BhY2az4Cf2Gv9ZzM/Yt/QJbxfEtBddIHD9q0bXBVkM0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=p1Tyv8m8g7xWFNOuT/MhrqazBBJXXC2QJs0ToWznB2lQrRSkhoArXdrPMnnjFC7+2
 pWW/KtyNuHGJzBF2+W5asR7aZhQf2Dx2oBsvavW40J4iLfSKV5UoaxAZjLBJMlXvbw
 tyJGq18uCnMeg3PHH1BMJ67U29gGYVKFysUOFsNI=
Date: Mon, 31 Aug 2020 12:25:43 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Ross Schmidt <ross.schm.dev@gmail.com>
Subject: Re: [PATCH] Staging: rtl8723bs: os_dep: fixed some coding style issues
Message-ID: <20200831102543.GA612591@kroah.com>
References: <20200829011405.2869-1-ross.schm.dev@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200829011405.2869-1-ross.schm.dev@gmail.com>
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

On Fri, Aug 28, 2020 at 08:14:05PM -0500, Ross Schmidt wrote:
> Fixed some coding style issues.

What issues?  Always be specific please.

Please fix up and resend.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
