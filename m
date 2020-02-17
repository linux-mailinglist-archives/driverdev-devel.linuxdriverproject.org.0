Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 965761616E8
	for <lists+driverdev-devel@lfdr.de>; Mon, 17 Feb 2020 17:01:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 50F438560F;
	Mon, 17 Feb 2020 16:01:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id I0VaRrStWjZ1; Mon, 17 Feb 2020 16:01:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id BFD1785465;
	Mon, 17 Feb 2020 16:01:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3C2CD1BF355
 for <devel@linuxdriverproject.org>; Mon, 17 Feb 2020 16:01:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 38BD384FB0
 for <devel@linuxdriverproject.org>; Mon, 17 Feb 2020 16:01:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id quzncNE-pIq3 for <devel@linuxdriverproject.org>;
 Mon, 17 Feb 2020 16:01:47 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from out2-smtp.messagingengine.com (out2-smtp.messagingengine.com
 [66.111.4.26])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 236A68506A
 for <devel@driverdev.osuosl.org>; Mon, 17 Feb 2020 16:01:47 +0000 (UTC)
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
 by mailout.nyi.internal (Postfix) with ESMTP id 8FA4B2179E;
 Mon, 17 Feb 2020 11:01:44 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute6.internal (MEProxy); Mon, 17 Feb 2020 11:01:44 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm3; bh=ap/jh6jGtnEzAujoXqg69OFP1ZP
 hCws9obqlHAORC3M=; b=kEoIwQrR3Lg3OdII04EzTAoylc0o/mqTamA6J8QmFv0
 k+BQGieCNhLAyzkxztUyVE5g/udh97lPxWUCmdC3fXDWM9OIM9wipufEEgNrJ1Fq
 DPEK0ET29xbRzr9QDODHIzsPBGshVD7rBxZF5lELO1/gUIULswvk62ImFo1Gu4eh
 AFvizQmzSYMQ7knWG1KRU+zlo6uDnjUa6y79GLnn0wPCfNqi49eRIwIoFRgb+fE8
 kEoe/dUSkd6kqECLmy2ooshYZlWl+TcQyv6bOw38GFxOwtA3csC88S+363YqQldX
 8Dj09u9Er0zWtM965QrU2m25NqGZLdAn0EnZ5ZIcrHw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=ap/jh6
 jGtnEzAujoXqg69OFP1ZPhCws9obqlHAORC3M=; b=gwBz/Fcx2c7rqixfbEqD1h
 DSYyF2g8dCFGaaSjyRYKw5+yigSwQjN7c0zU4aCdx4NSPDBoOyx17Dl3d2SbWIKB
 NxVTD4CJ02ABYaOjduQ9CjxwVOCSHEIaEObHnARw7CWCf3eS+ZRTYgxC7oaZRM7Z
 k/51vJb+d2QHhsWttsuOXHATqB+h+3Gs9Or67c7rDhDoaV7D9HcOdZAptoaSGDDp
 z74v+t0n1fFuWMMs9n6XaeAreA0M0La0qGVmRLVSg1Mm/eF8ZekSh9rdYawspkiQ
 3pYlCmq2eVd+ZwcQlxVbI6WENnZWKnVtHkXqGGopzxSsTN22AV/F9lbBkLgzGUXw
 ==
X-ME-Sender: <xms:6LhKXt2V2sUJj6qsHIuBdSLBpP16cFD5jJKEA_fPYgiHQ3P54GpYOA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrjeeigdekgecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesthdtredttddtvdenucfhrhhomhepifhrvghgucfm
 jfcuoehgrhgvgheskhhrohgrhhdrtghomheqnecukfhppeekfedrkeeirdekledruddtje
 enucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehgrhgv
 gheskhhrohgrhhdrtghomh
X-ME-Proxy: <xmx:6LhKXtw__0urKwpc6nE-ToR_7h6r0xpCluAOi8BW3wI7vjXAH8v-zQ>
 <xmx:6LhKXtMZP1Vm4e4KjE9oSkg9ZgFcf1-IimTPpW-hNLg8WkgSaopwGQ>
 <xmx:6LhKXi6vltXkeiz1BbK3DHde5Tss300mKKp95T0oiyZCyOXvbVj_pA>
 <xmx:6LhKXueagtzKAFPqK2mIsgLc_Qn8W9ipgmWiWl_1j8qa5FRhgY12jw>
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 by mail.messagingengine.com (Postfix) with ESMTPA id 04C723060D1A;
 Mon, 17 Feb 2020 11:01:43 -0500 (EST)
Date: Mon, 17 Feb 2020 17:01:41 +0100
From: Greg KH <greg@kroah.com>
To: Sunny Pranay <mpranay2017@gmail.com>
Subject: Re: [PATCH] Staging: comedi: drivers: fixed errors warning coding
 style issue
Message-ID: <20200217160141.GB1484698@kroah.com>
References: <20200216081518.3516-1-mpranay2017@gmail.com>
 <20200216122156.GA21307@kroah.com>
 <CAD=0X6XpJ0yfodr6YzexbKZm_n0GgKE=heNhXZrBDoEt-8u53A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAD=0X6XpJ0yfodr6YzexbKZm_n0GgKE=heNhXZrBDoEt-8u53A@mail.gmail.com>
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
Cc: devel@driverdev.osuosl.org, abbotti@mev.co.uk, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Feb 16, 2020 at 06:16:56PM +0530, Sunny Pranay wrote:
> > Before the patch were created there were few warnings indicating the
> statements were bigger than 80 characters and some of them were not
> properly commented like having extra space. So I created a patch for that
> reducing comments to below 80 characters and maintained proper spacing.
> That was I meant by fixed coding style issue.
> 
> > My original name is M Pranay

Ok, then please fix this by properly saying all of this in the changelog
text when you resubmit the patch.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
