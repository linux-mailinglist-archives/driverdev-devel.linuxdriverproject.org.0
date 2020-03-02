Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B790176130
	for <lists+driverdev-devel@lfdr.de>; Mon,  2 Mar 2020 18:39:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8622B85B78;
	Mon,  2 Mar 2020 17:38:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yC15IZKn_Gq7; Mon,  2 Mar 2020 17:38:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 77197853E5;
	Mon,  2 Mar 2020 17:38:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9A7DE1BF396
 for <devel@linuxdriverproject.org>; Mon,  2 Mar 2020 17:38:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9736A85EF9
 for <devel@linuxdriverproject.org>; Mon,  2 Mar 2020 17:38:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TUB87O1YtrgI for <devel@linuxdriverproject.org>;
 Mon,  2 Mar 2020 17:38:55 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 11E4E8527D
 for <devel@driverdev.osuosl.org>; Mon,  2 Mar 2020 17:38:55 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 54603222C4;
 Mon,  2 Mar 2020 17:38:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583170734;
 bh=E8B3jpue7UHu45EE/SwSFmn12bB9ltxToTRi5uWnKlc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Y/9ULXogQDQQYKVRJCmyzpVxPcYYcMwtSdtUoZtzhGdb1MZ3n0P8PBz6qjj5ftoU9
 WFSvpR7dQ9klBJs1jPIM2NL57FMAKmtx4SjoeVPMkCnLCWgGp2R+8yUdn8dcHKgg0U
 kJMUopP2Q6riXnHGBbDpAkTypiTLvr7qOm3qbosI=
Date: Mon, 2 Mar 2020 18:38:52 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: glider@google.com
Subject: Re: [PATCH v2 2/3] binder: do not initialize locals passed to
 copy_from_user()
Message-ID: <20200302173852.GB109022@kroah.com>
References: <20200302130430.201037-1-glider@google.com>
 <20200302130430.201037-2-glider@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200302130430.201037-2-glider@google.com>
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
Cc: devel@driverdev.osuosl.org, keescook@chromium.org, jannh@google.com,
 peterz@infradead.org, linux-kernel@vger.kernel.org, arve@android.com,
 mingo@redhat.com, dvyukov@google.com, tkjos@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Mar 02, 2020 at 02:04:29PM +0100, glider@google.com wrote:
> Certain copy_from_user() invocations in binder.c are known to
> unconditionally initialize locals before their first use, like e.g. in
> the following case:
> 
> 	struct binder_transaction_data tr;
> 	if (copy_from_user(&tr, ptr, sizeof(tr)))
> 		return -EFAULT;
> 
> In such cases enabling CONFIG_INIT_STACK_ALL leads to insertion of
> redundant locals initialization that the compiler fails to remove.
> To work around this problem till Clang can deal with it, we apply
> __no_initialize to local Binder structures.

I would like to see actual benchmark numbers showing this is
needed/useful otherwise it's going to just be random people adding this
marking to random places with no real reason.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
