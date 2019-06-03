Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id F087A32F64
	for <lists+driverdev-devel@lfdr.de>; Mon,  3 Jun 2019 14:18:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A5FD9879FD;
	Mon,  3 Jun 2019 12:18:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 994yDZs7Msfi; Mon,  3 Jun 2019 12:18:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1D1DD879B8;
	Mon,  3 Jun 2019 12:18:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C9B631BF4E6
 for <devel@linuxdriverproject.org>; Mon,  3 Jun 2019 12:18:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C1F48858AE
 for <devel@linuxdriverproject.org>; Mon,  3 Jun 2019 12:18:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7Nyw3KMcGlqS for <devel@linuxdriverproject.org>;
 Mon,  3 Jun 2019 12:18:32 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 5BEAC84D16
 for <devel@driverdev.osuosl.org>; Mon,  3 Jun 2019 12:18:32 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B90CA24460;
 Mon,  3 Jun 2019 12:18:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559564312;
 bh=7qoawnvievmUO6isD6QoKKaHpyd2SkSq+1tZy06rUJo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=w9cIKuarGmTB/vumIH6h8RGV2B9GhCvFWF6k7aHrTqV7OGrV9FF+zLsKdNQIjw64G
 6RER/7FQsLKgWrc13SuYXWzAaQegl21XiPVNQGwtrmZNwXtB+x43AmiAHoe8QwleAQ
 fouYyVglEHTnbFXdkuTmRtumXuvQv2VTBtUAgULo=
Date: Mon, 3 Jun 2019 14:18:29 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Nishka Dasgupta <nishkadg.linux@gmail.com>
Subject: Re: [PATCH] staging: rtl8712: Replace function
 r8712_free_network_queue
Message-ID: <20190603121829.GA15705@kroah.com>
References: <20190530205755.30096-1-nishkadg.linux@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190530205755.30096-1-nishkadg.linux@gmail.com>
User-Agent: Mutt/1.12.0 (2019-05-25)
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
Cc: florian.c.schilhabel@googlemail.com, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, yangx92@hotmail.com, colin.king@canonical.com,
 larry.finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, May 31, 2019 at 02:27:55AM +0530, Nishka Dasgupta wrote:
> Remove function r8712_free_network_queue as it does nothing except call
> _free_network_queue.
> Rename _free_network_queue to r8712_free_network_queue (and change its
> type to static) for continued use of the original functionality.

You did not change the type to static:

> -static void _free_network_queue(struct _adapter *padapter)
> +void r8712_free_network_queue(struct _adapter *padapter)

:(

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
