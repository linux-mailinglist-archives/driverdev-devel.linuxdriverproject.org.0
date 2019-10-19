Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BA69DD8DD
	for <lists+driverdev-devel@lfdr.de>; Sat, 19 Oct 2019 15:55:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 816988704C;
	Sat, 19 Oct 2019 13:55:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9itoePoEltWB; Sat, 19 Oct 2019 13:55:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C7BB186F9F;
	Sat, 19 Oct 2019 13:55:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0DB9B1BF342
 for <devel@linuxdriverproject.org>; Sat, 19 Oct 2019 13:55:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 08CDA87D1D
 for <devel@linuxdriverproject.org>; Sat, 19 Oct 2019 13:55:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6E6wJAtkrMXB for <devel@linuxdriverproject.org>;
 Sat, 19 Oct 2019 13:55:23 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 16C4C87C89
 for <devel@driverdev.osuosl.org>; Sat, 19 Oct 2019 13:55:22 +0000 (UTC)
Received: from [213.220.153.21] (helo=localhost)
 by youngberry.canonical.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <christian.brauner@ubuntu.com>)
 id 1iLpCR-0001Xa-Hw; Sat, 19 Oct 2019 13:55:19 +0000
In-Reply-To: <20191018205631.248274-3-jannh@google.com>
Date: Sat, 19 Oct 2019 15:55:18 +0200
From: "Christian Brauner" <christian.brauner@ubuntu.com>
Subject: Re: [PATCH 3/3] binder: Handle start==NULL in
 binder_update_page_range()
To: "Jann Horn" <jannh@google.com>, "Greg Kroah-Hartman"
 <gregkh@linuxfoundation.org>, =?utf-8?q?Arve_Hj=C3=B8nnev=C3=A5g?=
 <arve@android.com>, "Todd Kjos" <tkjos@android.com>, "Martijn Coenen"
 <maco@android.com>, "Joel Fernandes" <joel@joelfernandes.org>, "Christian
 Brauner" <christian@brauner.io>, <jannh@google.com>
Message-Id: <BXTJW0B3Y8RD.1TSRR5G3JNB20@wittgenstein>
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri Oct 18, 2019 at 10:56 PM Jann Horn wrote:
> The old loop wouldn't stop when reaching `start` if `start==NULL`, instead
> continuing backwards to index -1 and crashing.
> 
> Luckily you need to be highly privileged to map things at NULL, so it's not
> a big problem.
> 
> Fix it by adjusting the loop so that the loop variable is always in bounds.
> 
> This patch is deliberately minimal to simplify backporting, but IMO this
> function could use a refactor. The jump labels in the second loop body are
> horrible (the error gotos should be jumping to free_range instead), and
> both loops would look nicer if they just iterated upwards through indices.
> And the up_read()+mmput() shouldn't be duplicated like that.
> 
> Cc: stable@vger.kernel.org
> Fixes: 457b9a6f09f0 ("Staging: android: add binder driver")
> Signed-off-by: Jann Horn <jannh@google.com>

Acked-by: Christian Brauner <christian.brauner@ubuntu.com>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
