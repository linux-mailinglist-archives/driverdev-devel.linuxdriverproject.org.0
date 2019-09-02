Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 23CBAA4D31
	for <lists+driverdev-devel@lfdr.de>; Mon,  2 Sep 2019 03:51:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id EBDC7204AC;
	Mon,  2 Sep 2019 01:51:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kN9of878w8bo; Mon,  2 Sep 2019 01:51:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 79F6F204AB;
	Mon,  2 Sep 2019 01:51:47 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 67ED51BF39E
 for <driverdev-devel@linuxdriverproject.org>;
 Mon,  2 Sep 2019 01:51:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6485183767
 for <driverdev-devel@linuxdriverproject.org>;
 Mon,  2 Sep 2019 01:51:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OKgMwMcVwekh
 for <driverdev-devel@linuxdriverproject.org>;
 Mon,  2 Sep 2019 01:51:42 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from out3-smtp.messagingengine.com (out3-smtp.messagingengine.com
 [66.111.4.27])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 7E12B8250B
 for <driverdev-devel@linuxdriverproject.org>;
 Mon,  2 Sep 2019 01:51:42 +0000 (UTC)
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailout.nyi.internal (Postfix) with ESMTP id 9759B200CF;
 Sun,  1 Sep 2019 21:51:41 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute5.internal (MEProxy); Sun, 01 Sep 2019 21:51:41 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=tobin.cc; h=date
 :from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm1; bh=RrI1UUeUS/+9jawLpkf1vF9IsjT
 E4SGV0QL+VNZac4c=; b=SqP6Dngjw5g+zjrmWQpSChDZkq1/diuxNfPnf3Cw92V
 +1lgZLPyGszIzgHrL/+WXAnMl8K0381610Mpixd4bGYcRXNDkK9bmMcBOz7kz6rI
 jMlEgbuWrcYyeq/YQ2j+33+Rp/6uyeg9eONvX6Ju4QS0QyswdnKdO/+CZRXjf0zn
 d4v4dukubvwByfRURV5xR9NVQkEg/Wx0qBQbe+9icnNrL9R0PDS4gSCAYMEX5E7n
 tcK9vyj2Op1nhDSHarQb+xK7DiUWDvbq+2v3OuENrUAmvnFl8cT2Xa3Be66ffJ9/
 PH7LT1sbfMUahST04Qxq+d0OaASWd/fmc32pKJ0a/oQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=RrI1UU
 eUS/+9jawLpkf1vF9IsjTE4SGV0QL+VNZac4c=; b=pAP53nlhrG7tu3R1D35ad4
 8GX+Qngz2EJOOSuP+RxyoXoo3xstJegGsunSG2VMlHG3YhibsD+THqQYG7fUm4J9
 mIxVh4lHO3dboTfi+4htTY5DMouPtmjP5CDcHZyZpcDWwJ/lZlpOZWatYvJZHdik
 M6Z5YTdetGHifxaZ9OhdR4naimDYAHKAzzxk91Y99LRLSJOLQTSR/EVDNsZfT9Ds
 nvgBMyTXHRHFbW+1E1oi32cBof4r3IEqK/lyxtvbqqx/Vb+Sgfv60nrr65oFC0Zp
 YcAJ+ITGBFTlLwzak46NQfjsdg3FJE+NdPTMH23Bq6tg33h7yLebpNmJUhqNmoWQ
 ==
X-ME-Sender: <xms:rXVsXX0mxIhH8_mpPuz71nVKiDPxQmPjMX7_EvOGvYc_svNEO5TcBQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrudeiledgheduucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 gfrhhlucfvnfffucdludehmdenucfjughrpeffhffvuffkfhggtggujgfofgesthdtredt
 ofervdenucfhrhhomhepfdfvohgsihhnucevrdcujfgrrhguihhnghdfuceomhgvsehtoh
 gsihhnrdgttgeqnecuffhomhgrihhnpehgihhthhhusgdrtghomhenucfkphepuddvgedr
 udelrdefuddrgeenucfrrghrrghmpehmrghilhhfrhhomhepmhgvsehtohgsihhnrdgttg
 enucevlhhushhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:rXVsXaWmefjKBc2-3a8fVBOoY6KVUzCGPRJvMIZlagEML0vhp4as6g>
 <xmx:rXVsXS4fS4-1oULLDLCtU8uWO7Qgatn4R6j55Rz91AGyJS67tliQHQ>
 <xmx:rXVsXRKkZjJn7JG0eiSqVseGsYJQXjfaHgiSM55LqFZecKFZvZtSUA>
 <xmx:rXVsXanIWrxd1Ej_QtR7QlaXt480FKzauHKO0l90dNabnDAucBwDLw>
Received: from localhost (unknown [124.19.31.4])
 by mail.messagingengine.com (Postfix) with ESMTPA id 8B2CFD6005B;
 Sun,  1 Sep 2019 21:51:40 -0400 (EDT)
Date: Mon, 2 Sep 2019 11:51:37 +1000
From: "Tobin C. Harding" <me@tobin.cc>
To: Amit Kumar <free.amit.kumar@gmail.com>
Subject: Re: [OSSNA] Intro to kernel hacking tutorial
Message-ID: <20190902015137.GB14611@ares>
References: <20190705025055.GA7037@ares> <20190719093658.GF3111@kadam>
 <20190722092923.GB22763@ares>
 <CAPTh4OtcwP_B7gY2HLDQvihuubCKbTbVgnF9LkKaFg=pqSs64w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAPTh4OtcwP_B7gY2HLDQvihuubCKbTbVgnF9LkKaFg=pqSs64w@mail.gmail.com>
X-Mailer: Mutt 1.9.4 (2018-02-28)
User-Agent: Mutt/1.9.4 (2018-02-28)
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 driverdev-devel@linuxdriverproject.org,
 Dan Carpenter <dan.carpenter@oracle.com>,
 Kernelnewbies <kernelnewbies@kernelnewbies.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Sep 01, 2019 at 05:30:23AM +0530, Amit Kumar wrote:
> Hi,
> I think now your tutorial should be ready.

I do  not understand what this means sorry.  Is it a request for action?
The tutorial was a couple of weeks ago now, here is a link to the
material if that is what you were asking

https://github.com/tcharding/kernel/tree/master/workshop

Cheers,
Tobin.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
