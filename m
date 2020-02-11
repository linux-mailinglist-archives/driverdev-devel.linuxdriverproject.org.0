Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E2107159995
	for <lists+driverdev-devel@lfdr.de>; Tue, 11 Feb 2020 20:18:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 9D6752052E;
	Tue, 11 Feb 2020 19:18:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5ua8knlQOVGT; Tue, 11 Feb 2020 19:18:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 07AB220522;
	Tue, 11 Feb 2020 19:18:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1F0671BF2F8
 for <devel@linuxdriverproject.org>; Tue, 11 Feb 2020 19:18:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 164B987B4D
 for <devel@linuxdriverproject.org>; Tue, 11 Feb 2020 19:18:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4zRTeNO7lawY for <devel@linuxdriverproject.org>;
 Tue, 11 Feb 2020 19:18:52 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0DD3887B21
 for <devel@driverdev.osuosl.org>; Tue, 11 Feb 2020 19:18:52 +0000 (UTC)
Received: from localhost (unknown [104.133.9.100])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B5E682465D;
 Tue, 11 Feb 2020 19:18:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581448731;
 bh=uxU2G69SlfJsblD0NM3KbWn/+UtaxJOgDCSgqIzYh04=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=xzKBNkpl06kgI1nz698PoytpM9DVyZsB3TDwC6A9ilwBwLfMNS0dgdGor3VgWckZ0
 9cdFGx7UUPKhRBtmYA6QwZFAI6BV2vhUMxICya7dntPcdQMnS4ohGZNzlPACdzhpD0
 1/m8Wa/GM3u7/nChU7c/CjJfR3+JMNuNu6OL8dSY=
Date: Tue, 11 Feb 2020 11:18:51 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Ajay.Kathat@microchip.com
Subject: Re: [PATCH v2 3/3] staging: wilc1000: refactor p2p action frames
 handling API's
Message-ID: <20200211191851.GA1959566@kroah.com>
References: <20200211152802.6096-1-ajay.kathat@microchip.com>
 <20200211152802.6096-3-ajay.kathat@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200211152802.6096-3-ajay.kathat@microchip.com>
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
Cc: devel@driverdev.osuosl.org, johannes@sipsolutions.net,
 linux-wireless@vger.kernel.org, Adham.Abozaeid@microchip.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Feb 11, 2020 at 09:57:10AM +0000, Ajay.Kathat@microchip.com wrote:
> From: Ajay Singh <ajay.kathat@microchip.com>
> =

> Refactor handling of P2P specific action frames. Make use of 'struct' to
> handle the P2P frames instead of manipulating=A0using 'buf' pointer.
> =

> Signed-off-by: Ajay Singh <ajay.kathat@microchip.com>
> ---
>  v2: corrected 'while' condition by adding 'struct' size as suggested by =
Dan.

This patch doesn't apply to my tree :(

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
