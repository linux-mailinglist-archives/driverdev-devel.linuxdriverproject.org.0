Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A2F8F3149
	for <lists+driverdev-devel@lfdr.de>; Thu,  7 Nov 2019 15:22:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id B3DED86124;
	Thu,  7 Nov 2019 14:22:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WnfxNRzSs7v3; Thu,  7 Nov 2019 14:22:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 437E986094;
	Thu,  7 Nov 2019 14:22:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 057DB1BF3D2
 for <devel@linuxdriverproject.org>; Thu,  7 Nov 2019 14:22:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 0267B86094
 for <devel@linuxdriverproject.org>; Thu,  7 Nov 2019 14:22:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0OtVUfo13KFV for <devel@linuxdriverproject.org>;
 Thu,  7 Nov 2019 14:22:35 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D372A86074
 for <devel@driverdev.osuosl.org>; Thu,  7 Nov 2019 14:22:35 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 16AB7207FA;
 Thu,  7 Nov 2019 14:22:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573136555;
 bh=akvOYSauuJ0WgIPLTQ/bX/mbeqgYeGG21a58QOC9wzI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=h5SL8/+mQ+QmvPn7yQVU78E2E5oXPg/4NnOkx615xbu69yepjgXAdvWtPKfmE8qOx
 XFZ1qmY+9B86oJRKoI1UbuCVrZubN7sIThil4Dd+YfJm5z1QweWxLRP3yTzvCPQk2i
 0urWNfZcqFZhr1SOTw1SEic8nq8XyD5Y0HBrX478=
Date: Thu, 7 Nov 2019 15:22:33 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Valery Ivanov <ivalery111@gmail.com>
Subject: Re: [PATCH] staging: octeon: fix missing a blank line after
 declaration
Message-ID: <20191107142233.GA120709@kroah.com>
References: <20191107141335.17641-1-ivalery111@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191107141335.17641-1-ivalery111@gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
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
Cc: devel@driverdev.osuosl.org, devel@drivrdev.osuosl.org,
 linux-kernel@vger.kernel.org,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 Wambui Karuga <wambui.karugax@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Nov 07, 2019 at 02:13:22PM +0000, Valery Ivanov wrote:
> 	This patch fixes "WARNING: Missing a blank line after declarations"
> 	Issue found by checkpatch.pl

Why the huge indentation?

Please fix that up and send a v2.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
