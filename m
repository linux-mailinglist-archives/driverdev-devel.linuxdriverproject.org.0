Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B2BDDC94C
	for <lists+driverdev-devel@lfdr.de>; Fri, 18 Oct 2019 17:47:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C99D486C18;
	Fri, 18 Oct 2019 15:47:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GdpjjLWXvVM9; Fri, 18 Oct 2019 15:47:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4E65587847;
	Fri, 18 Oct 2019 15:47:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DA2B91BF29E
 for <devel@linuxdriverproject.org>; Fri, 18 Oct 2019 15:47:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D754286B45
 for <devel@linuxdriverproject.org>; Fri, 18 Oct 2019 15:47:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id swA5IN1SWA_l for <devel@linuxdriverproject.org>;
 Fri, 18 Oct 2019 15:47:32 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A5C2686B26
 for <devel@driverdev.osuosl.org>; Fri, 18 Oct 2019 15:47:32 +0000 (UTC)
Received: from [185.81.138.19] (helo=wittgenstein)
 by youngberry.canonical.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <christian.brauner@ubuntu.com>)
 id 1iLUTQ-0007zq-SO; Fri, 18 Oct 2019 15:47:29 +0000
Date: Fri, 18 Oct 2019 17:47:27 +0200
From: Christian Brauner <christian.brauner@ubuntu.com>
To: Jann Horn <jannh@google.com>
Subject: Re: [PATCH] binder: Remove incorrect comment about vm_insert_page()
 behavior
Message-ID: <20191018154726.2qegz72tipyaeha7@wittgenstein>
References: <20191018153946.128584-1-jannh@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191018153946.128584-1-jannh@google.com>
User-Agent: NeoMutt/20180716
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
Cc: devel@driverdev.osuosl.org, Todd Kjos <tkjos@android.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Arve =?utf-8?B?SGrDuG5uZXbDpWc=?= <arve@android.com>,
 Joel Fernandes <joel@joelfernandes.org>, Martijn Coenen <maco@android.com>,
 Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Oct 18, 2019 at 05:39:46PM +0200, Jann Horn wrote:
> vm_insert_page() does increment the page refcount, and just to be sure,
> I've confirmed it by printing page_count(page[0].page_ptr) before and after
> vm_insert_page(). It's 1 before, 2 afterwards, as expected.
> 
> Signed-off-by: Jann Horn <jannh@google.com>

Seems this has always been the case since its introduction:
a145dd411eb2 ("VM: add "vm_insert_page()" function")

Acked-by: Christian Brauner <christian.brauner@ubuntu.com>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
