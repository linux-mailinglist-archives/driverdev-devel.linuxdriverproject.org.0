Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 897A331C1AE
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Feb 2021 19:41:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 11E8F86B1C;
	Mon, 15 Feb 2021 18:41:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 17LOkn7CALpA; Mon, 15 Feb 2021 18:41:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 08DAE86B0C;
	Mon, 15 Feb 2021 18:41:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 96C5C1BF976
 for <devel@linuxdriverproject.org>; Mon, 15 Feb 2021 18:41:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 93FB68579E
 for <devel@linuxdriverproject.org>; Mon, 15 Feb 2021 18:41:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CabsPsGeXo35 for <devel@linuxdriverproject.org>;
 Mon, 15 Feb 2021 18:41:08 +0000 (UTC)
X-Greylist: delayed 00:09:22 by SQLgrey-1.7.6
Received: from wout1-smtp.messagingengine.com (wout1-smtp.messagingengine.com
 [64.147.123.24])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 130CE857C1
 for <devel@driverdev.osuosl.org>; Mon, 15 Feb 2021 18:41:08 +0000 (UTC)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.west.internal (Postfix) with ESMTP id 400C7F7F;
 Mon, 15 Feb 2021 13:31:43 -0500 (EST)
Received: from imap22 ([10.202.2.72])
 by compute3.internal (MEProxy); Mon, 15 Feb 2021 13:31:43 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=drnd.me; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm2; bh=0qCRLx0h2AKsHxckh5wv5Va15TvWqZZ
 LVNedxRK01Us=; b=R4gkr88Bdqm/LpB+5hgG8cbkA91QotWhE/lNlW/qWr0ZwqU
 gYFKIY/mJqVxZYyXshAWiSXNUq4+jstIgovKJoetilLj1ArFTl4i7bELem67kaFN
 /X8VT5kW8bK9hOo1+e1Lo6fkL/Zsy+uu25i/gdaZv0AzyEAGSbJxxRzO2fl7Jf13
 TZ3s7D4V4wIzUyEt75L/e9FMtQQNp7n+/L63Oca8cIj9dOjU2oI6s2ZJlTxW0zE+
 1j9dIBE713+vqSJfS1W+9y4dr40312ox/PZ0nwTHIX+ArB8PvBVvUJJwov0taiLI
 KPxqb2m9KhwGWlfiAW6DxfUHt5eIKf0c+5uJTCQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=0qCRLx
 0h2AKsHxckh5wv5Va15TvWqZZLVNedxRK01Us=; b=kB8WCs9c9ZZsiGChHgJJb0
 KvETPjR7lZmrfTYk0zIdOsx1PGYBKKmp9t1rnJt2Mzm+6A7hbkpCikJasezlldfl
 V1NoJRXqzDtupB9CfgdJ15cTXxWJkkSQXTZfYC00jipsyTgvB92yYRsFp3NH1+Wu
 Miq/tJcA7utmmk/yzq8XG2L48RyTtrlEqnWbjd4B/MkXVl3Tdr7rBm0OXNwQgElR
 SncPpjpuAH1JJ/M8k5eggKb/P6+rlHffYkDYTtLl8nPPGtLHRPr2xlmZ6vAaNgAB
 HlILqEPlbBmc8k7dlg+Q7DniaGx99/zQQASyWruj2dYMaS3m2FIaWPxd1N8JBQVg
 ==
X-ME-Sender: <xms:Dr4qYMmwkEZ2gfWVP9HzpFvlYd-2pmrEo5rRZZ3z0Y4Oa8PpSgKmVA>
 <xme:Dr4qYL33sZkIjEtKWMmijD1AkiJh3iCnsoyaKUN_LqgSL0LeXhWME2laCWF8nK_85
 Z7nKqIF1zG8lbRoTw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrieekgddutdelucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepofgfggfkjghffffhvffutgesthdtredtreertdenucfhrhhomhepfdghihhl
 lhhirghmucffuhhrrghnugdfuceofihilhhlodhgihhtsegurhhnugdrmhgvqeenucggtf
 frrghtthgvrhhnpeevffdttddtvdehtdejueethedtheevkefftdelgfeluddtgfffueel
 vdfgudfhffenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhroh
 hmpeifihhllhdoghhithesughrnhgurdhmvg
X-ME-Proxy: <xmx:Dr4qYKqh9pTtUzDBWR3_CeHl3Gh6HFVSpqmCCx6VnZv0G52Q-onPiQ>
 <xmx:Dr4qYIn93Lta9w0VAdApO6NXnpm7Zia47saC4LSdVuV5rkO5370jVA>
 <xmx:Dr4qYK3NcE2q9Dk9KfD0IvAAhWnQU4HqjvLEmkxDWPSgxSew1W4TFA>
 <xmx:Dr4qYP_QGFA3yac49ZlhI_jeppKXv_9e7JWvWyucDGW1u40zAqs4yA>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 65D0762C005E; Mon, 15 Feb 2021 13:31:42 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.5.0-alpha0-141-gf094924a34-fm-20210210.001-gf094924a
Mime-Version: 1.0
Message-Id: <e9da5d1f-e614-4749-9ad6-7121f0fbe573@www.fastmail.com>
In-Reply-To: <20210215130334.GM2087@kadam>
References: <20210213092014.29466-1-will+git@drnd.me>
 <20210215130334.GM2087@kadam>
Date: Mon, 15 Feb 2021 19:30:29 +0100
From: "William Durand" <will+git@drnd.me>
To: "Dan Carpenter" <dan.carpenter@oracle.com>
Subject: Re: [PATCH] staging: rtl8192e: fix typo in a function name
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

> On Sat, Feb 13, 2021 at 09:20:14AM +0000, William Durand wrote:
> > Other function names use the verb 'query' so this function should
> > probably use it too and that's what this patch is about. I didn't
> > find any other occurrence and the code compiles.
> > 
> 
> It's really just assumed that the code still compiles afterwards.
> Sometimes, it's hard for me to right commit messages confidently because
> I don't know if static checker bugs affect real life.  But in this case
> I really think the commit message could be written more confidently.
> 
> Please write it like this:
> "There is a typo here where it says "qurey" but "query" was intended."

Thanks Dan, I'll update the commit message shortly and send a new patch.

Will
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
