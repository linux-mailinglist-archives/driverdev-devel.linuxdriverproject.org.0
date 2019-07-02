Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C7CC45CC9D
	for <lists+driverdev-devel@lfdr.de>; Tue,  2 Jul 2019 11:25:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9589E85F35;
	Tue,  2 Jul 2019 09:25:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id De8CHUnGZwPg; Tue,  2 Jul 2019 09:25:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5667F84FA4;
	Tue,  2 Jul 2019 09:25:39 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2F98E1BF302
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  2 Jul 2019 09:25:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1E23780CED
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  2 Jul 2019 09:25:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AefhCzAoCF-J
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  2 Jul 2019 09:25:34 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 3C60380ADE
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  2 Jul 2019 09:25:34 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 75A6520659;
 Tue,  2 Jul 2019 09:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1562059534;
 bh=2ADI+AMBr7vur7iLbRPjiAqdVrkdUbZbfYtlwYZKLeY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=MUJuaqbpgTRhMVdR3FjaqWPcCvvvgGsdB/Uzq43+dHMFhbr6FUFlpsquE8zEDn7Uw
 8uOK3Ck696tOMu5AKoxxZSTaEvyb62sqXa65dW+1NaDTe7eIqb46arLt5PK07pelNk
 4jsUeHfbE5tNVAqS9A9sco31Yse+JxkYn6zzkpSI=
Date: Tue, 2 Jul 2019 11:25:31 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Turritopsis Dohrnii Teo En Ming <ceo@teo-en-ming-corp.com>
Subject: Re: What device drivers for Linux does this project develop?
Message-ID: <20190702092531.GA10692@kroah.com>
References: <SG2PR01MB2141506D87714AA856B0DE1587F80@SG2PR01MB2141.apcprd01.prod.exchangelabs.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <SG2PR01MB2141506D87714AA856B0DE1587F80@SG2PR01MB2141.apcprd01.prod.exchangelabs.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
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
Cc: "driverdev-devel@linuxdriverproject.org"
 <driverdev-devel@linuxdriverproject.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Jul 02, 2019 at 08:44:14AM +0000, Turritopsis Dohrnii Teo En Ming wrote:
> Good afternoon from Singapore,
> 
> What device drivers for Linux does this project develop?

All taht is needed.  What type of device do you have that Linux
currently does not support?

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
