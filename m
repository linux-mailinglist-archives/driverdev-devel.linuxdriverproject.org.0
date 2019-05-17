Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F8E021413
	for <lists+driverdev-devel@lfdr.de>; Fri, 17 May 2019 09:15:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id F0436313A4;
	Fri, 17 May 2019 07:15:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MVE23Po-gLgC; Fri, 17 May 2019 07:15:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 27404241A8;
	Fri, 17 May 2019 07:15:40 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id EB4DE1C162A
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 17 May 2019 07:15:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id D72E984FC0
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 17 May 2019 07:15:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0GjLKR0X-Aqb
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 17 May 2019 07:15:35 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 693AE84F6F
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 17 May 2019 07:15:35 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B7D1C20868;
 Fri, 17 May 2019 07:15:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558077335;
 bh=91ctyiZW/f9XQjisdxhpqr1XBNSD98yyoMxNpHCPlrg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Svp5rBpaxFSdvOAveVf4b05c8PtIi4udCEBNQ79CkoHTN2P2+JFV/WZoi2gJfFCZm
 qKyRW7GR2CXQIuZ6nNsVl2ot2rj+xIhqgPK3q2VjDYJNmeU8Sl/Mn51p5omcxQPgAA
 cgO5VTDY9VzLXk3k6UgpEUY7z5o3aEA3n8UzHsHU=
Date: Fri, 17 May 2019 09:15:32 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Jeremy Sowden <jeremy@azazel.net>
Subject: Re: [PATCH v2 3/9] staging: kpc2000: declare all kpc_uio_class
 device attributes as static.
Message-ID: <20190517071532.GD23217@kroah.com>
References: <20190516200411.17715-1-jeremy@azazel.net>
 <20190516213814.22232-1-jeremy@azazel.net>
 <20190516213814.22232-4-jeremy@azazel.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190516213814.22232-4-jeremy@azazel.net>
User-Agent: Mutt/1.11.4 (2019-03-13)
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
Cc: Linux Driver Project Developer List
 <driverdev-devel@linuxdriverproject.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, May 16, 2019 at 10:38:08PM +0100, Jeremy Sowden wrote:
> The definitions are only used to populate the kpc_uio_class_attrs
> attribute array, so declare them as static.
> 
> Fixes the following sparse warnings:
> 
>   drivers/staging/kpc2000/kpc2000/cell_probe.c:220:1: warning: symbol 'dev_attr_offset' was not declared. Should it be static?
>   drivers/staging/kpc2000/kpc2000/cell_probe.c:221:1: warning: symbol 'dev_attr_size' was not declared. Should it be static?
>   drivers/staging/kpc2000/kpc2000/cell_probe.c:222:1: warning: symbol 'dev_attr_type' was not declared. Should it be static?
>   drivers/staging/kpc2000/kpc2000/cell_probe.c:223:1: warning: symbol 'dev_attr_s2c_dma' was not declared. Should it be static?
>   drivers/staging/kpc2000/kpc2000/cell_probe.c:224:1: warning: symbol 'dev_attr_c2s_dma' was not declared. Should it be static?
>   drivers/staging/kpc2000/kpc2000/cell_probe.c:225:1: warning: symbol 'dev_attr_irq_count' was not declared. Should it be static?
>   drivers/staging/kpc2000/kpc2000/cell_probe.c:226:1: warning: symbol 'dev_attr_irq_base_num' was not declared. Should it be static?
>   drivers/staging/kpc2000/kpc2000/cell_probe.c:227:1: warning: symbol 'dev_attr_core_num' was not declared. Should it be static?

Ah, you did it here, nevermind...
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
