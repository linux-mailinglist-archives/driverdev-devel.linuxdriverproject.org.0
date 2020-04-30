Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EC9E1C071F
	for <lists+driverdev-devel@lfdr.de>; Thu, 30 Apr 2020 21:57:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3166C8819F;
	Thu, 30 Apr 2020 19:57:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id V12cnR9bUCrk; Thu, 30 Apr 2020 19:57:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id DFE068816D;
	Thu, 30 Apr 2020 19:57:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CB5811BF3ED
 for <devel@linuxdriverproject.org>; Thu, 30 Apr 2020 19:57:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C785686F6D
 for <devel@linuxdriverproject.org>; Thu, 30 Apr 2020 19:57:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sTWyT5KRAPIR for <devel@linuxdriverproject.org>;
 Thu, 30 Apr 2020 19:56:59 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from shards.monkeyblade.net (shards.monkeyblade.net [23.128.96.9])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 261F986F60
 for <devel@driverdev.osuosl.org>; Thu, 30 Apr 2020 19:56:59 +0000 (UTC)
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 4DE7A1289CE3F;
 Thu, 30 Apr 2020 12:56:55 -0700 (PDT)
Date: Thu, 30 Apr 2020 12:56:54 -0700 (PDT)
Message-Id: <20200430.125654.335144341485365161.davem@davemloft.net>
To: mchehab+huawei@kernel.org
Subject: Re: [PATCH 00/37] net: manually convert files to ReST format - part 2
From: David Miller <davem@davemloft.net>
In-Reply-To: <cover.1588261997.git.mchehab+huawei@kernel.org>
References: <cover.1588261997.git.mchehab+huawei@kernel.org>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Thu, 30 Apr 2020 12:56:56 -0700 (PDT)
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
Cc: marcelo.leitner@gmail.com, linux-doc@vger.kernel.org,
 benh@kernel.crashing.org, dhowells@redhat.com, linux-sctp@vger.kernel.org,
 paulus@samba.org, ioana.ciornei@nxp.com, linux-afs@lists.infradead.org,
 devel@driverdev.osuosl.org, rds-devel@oss.oracle.com, socketcan@hartkopp.net,
 corbet@lwn.net, linux-rdma@vger.kernel.org, mpe@ellerman.id.au,
 kadlec@netfilter.org, coreteam@netfilter.org, kuba@kernel.org,
 pablo@netfilter.org, linux-x25@vger.kernel.org, santosh.shilimkar@oracle.com,
 linux-can@vger.kernel.org, mkl@pengutronix.de, courmisch@gmail.com,
 kvalo@codeaurora.org, kou.ishizaki@toshiba.co.jp, fw@strlen.de,
 nhorman@tuxdriver.com, geoff@infradead.org, netdev@vger.kernel.org,
 vyasevich@gmail.com, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, netfilter-devel@vger.kernel.org,
 gregkh@linuxfoundation.org, johannes@sipsolutions.net,
 linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Date: Thu, 30 Apr 2020 18:03:55 +0200

> That's the second part of my work to convert the networking
> text files into ReST. it is based on today's linux-next (next-20200430).
> 
> The full series (including those ones) are at:
> 
> 	https://git.linuxtv.org/mchehab/experimental.git/log/?h=net-docs
> 
> I should be sending the remaining patches (another /38 series)
> after getting those merged at -next.
> 
> The documents, converted to HTML via the building system are at:
> 
> 	https://www.infradead.org/~mchehab/kernel_docs/networking/

Series applied to net-next, thank you.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
