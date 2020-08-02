Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A0F7D2355B5
	for <lists+driverdev-devel@lfdr.de>; Sun,  2 Aug 2020 08:31:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 91B7B86DD6;
	Sun,  2 Aug 2020 06:30:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7VLKrl0+jkkq; Sun,  2 Aug 2020 06:30:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5D9B486ECC;
	Sun,  2 Aug 2020 06:30:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 16E041BF425
 for <devel@linuxdriverproject.org>; Sun,  2 Aug 2020 06:30:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id EFB372046A
 for <devel@linuxdriverproject.org>; Sun,  2 Aug 2020 06:30:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oixRAbahp5gD for <devel@linuxdriverproject.org>;
 Sun,  2 Aug 2020 06:30:54 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 851CA20468
 for <devel@driverdev.osuosl.org>; Sun,  2 Aug 2020 06:30:54 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7D3412076B;
 Sun,  2 Aug 2020 06:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1596349854;
 bh=s+L0U8SYjfQdqJYaY42N4VU+qvySTS5Xee4dhuCBX9U=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=I/oX3DpgcNRRhOjx0JjtQZ1e/KUK3Tfa6vijN3rhYLm2irsgdoJZmTsNJF7hlEAf6
 voTF1U0eu7qD96zxUQw19Kwej9hBNJ3EKG0AK4zdxtRsITJXOh+/Y3Srbn+XVZZsaP
 ZOiFFxHHSDJyEUlpCJ9JS+8inrlUVBSYsfMJH/fM=
Date: Sun, 2 Aug 2020 08:30:37 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: syzbot <syzbot+2446dd3cb07277388db6@syzkaller.appspotmail.com>
Subject: Re: WARNING in hci_conn_timeout
Message-ID: <20200802063037.GA3650705@kroah.com>
References: <0000000000007450a405abd572a8@google.com>
 <000000000000b54f9f05abd8cfbb@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <000000000000b54f9f05abd8cfbb@google.com>
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
Cc: devel@driverdev.osuosl.org, johan.hedberg@gmail.com, netdev@vger.kernel.org,
 marcel@holtmann.org, syzkaller-bugs@googlegroups.com,
 linux-kernel@vger.kernel.org, davem@davemloft.net,
 linux-bluetooth@vger.kernel.org, coreteam@netfilter.org,
 netfilter-devel@vger.kernel.org, forest@alittletooquiet.net,
 kadlec@blackhole.kfki.hu, kuba@kernel.org, rvarsha016@gmail.com,
 kaber@trash.net, pablo@netfilter.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Aug 01, 2020 at 03:56:09PM -0700, syzbot wrote:
> syzbot has bisected this issue to:
> 
> commit 3d30311c0e4d834c94e6a27d6242a942d6a76b85
> Author: Varsha Rao <rvarsha016@gmail.com>
> Date:   Sun Oct 9 11:13:56 2016 +0000
> 
>     staging: vt6655: Removes unnecessary blank lines.

I doubt this is the real issue :(

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
