Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 51F2997DC4
	for <lists+driverdev-devel@lfdr.de>; Wed, 21 Aug 2019 16:58:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 09AB7874D4;
	Wed, 21 Aug 2019 14:58:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id m41z6KqAcETb; Wed, 21 Aug 2019 14:57:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 711AD86E6F;
	Wed, 21 Aug 2019 14:57:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 75B9A1BF360
 for <devel@linuxdriverproject.org>; Wed, 21 Aug 2019 14:57:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 72CF886090
 for <devel@linuxdriverproject.org>; Wed, 21 Aug 2019 14:57:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id F74xMOmi0Lx4 for <devel@linuxdriverproject.org>;
 Wed, 21 Aug 2019 14:57:56 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from out4-smtp.messagingengine.com (out4-smtp.messagingengine.com
 [66.111.4.28])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 00BB086081
 for <devel@driverdev.osuosl.org>; Wed, 21 Aug 2019 14:57:55 +0000 (UTC)
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailout.nyi.internal (Postfix) with ESMTP id 1DD0A2214A;
 Wed, 21 Aug 2019 10:57:55 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute5.internal (MEProxy); Wed, 21 Aug 2019 10:57:55 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=tobin.cc; h=date
 :from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm3; bh=i6BOViel6Hjyf8LMzts6ynH9lX9
 ezVSY65iD+Os+oHQ=; b=U2DGZHpVladiJCY2vzFoQK3aZ9w+BMJfdl9I9GDIEWT
 9MWUAgeNP9El1u+meMvQ9yGo2RAshX4EuHdZ8MT6qe7g9lGgaaj19jaiBEH0izht
 I+4C3j9f9/2u1C3EsNCldDlSIPkX/+dn650/FSkEZLy36Gln5YSJoaeImPsKDA6g
 TOZXsIDtj+Jn3iTZFcyUye6EHss7EuHlrs2xEbOproCdUZuhuO9OkBQzzN7tjd1f
 nOzEz61fbjuQS9DZsKc7CplgujzCxrV9HuWLlae5/pXG6amzH7HGnkymmF4ig5D0
 B18c2S4xP+OkDRejieoFFQSYcQYQ50teZzVNiX/I0Rg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=i6BOVi
 el6Hjyf8LMzts6ynH9lX9ezVSY65iD+Os+oHQ=; b=egHekPhWAPU1Nb5AL6Pn2W
 ciUcDDMRrmjMGeINl8LMDj02zBaR2ExfE+p1EAUEhPjTzAeOz/CgjRK0kIStFnam
 RYS4wZMPyk2paCFZRXfnd+i5aOSNSKruj7IhaRucVXQByGvkNoG31Lq2STICEzO4
 wuamQR5l8yCZIh4Q+KFoBWWRQhn3V3iBdUq03Mcj70UW9jcczuwRjG2cWveWRV4t
 0S8t0hwHvGTMEdVnZao6HVIpIKVC/uHVconulLW9+Bc7WCAn7owJuIOYPuWM0REp
 OqzdaJqLVG+2g2+f0XKlzicw7O871sIrjjRARHkNI2x3yobS84zAGyC+RiTJwQLg
 ==
X-ME-Sender: <xms:8ltdXXRtW9TXZ_9ONBr7SdbfX0NWuDXJPdUt_v5JtsFjYr02nhavIA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrudegfedgkeehucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 gfrhhlucfvnfffucdlfedtmdenucfjughrpeffhffvuffkfhggtggujgfofgesthdtredt
 ofervdenucfhrhhomhepfdfvohgsihhnucevrdcujfgrrhguihhnghdfuceomhgvsehtoh
 gsihhnrdgttgeqnecukfhppeejtddrudeiiedrkedtrdduleegnecurfgrrhgrmhepmhgr
 ihhlfhhrohhmpehmvgesthhosghinhdrtggtnecuvehluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:8ltdXdDHWK-GsmcyJKlFmop7CLNPsyUWlR7EQ-bjxmyJuIrADFHNJQ>
 <xmx:8ltdXX3gvMGGpjFep17vpME2Ms6JL0zOESBMUp7Xz4zryIkIdaU7eA>
 <xmx:8ltdXbXsVpfZwDACxi0ZTabbwb0YOJXEoA4OTblNy7nTbl41jW54CA>
 <xmx:81tdXcdFLeitwsS0RE4CZ8n4wt1Iew3LOvlQXR4UT4yFpHqKV_2Rew>
Received: from localhost (wsip-70-166-80-194.sd.sd.cox.net [70.166.80.194])
 by mail.messagingengine.com (Postfix) with ESMTPA id 357D9D6005E;
 Wed, 21 Aug 2019 10:57:54 -0400 (EDT)
Date: Wed, 21 Aug 2019 07:57:53 -0700
From: "Tobin C. Harding" <me@tobin.cc>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [PATCH 1/2] comedi: remove camelcase
Message-ID: <20190821145753.GC12461@ares>
References: <20190820234307.5234-1-me@ehuber.info>
 <20190820234307.5234-2-me@ehuber.info>
 <20190821023706.GA28618@kroah.com>
 <CAK0QX2h3Bq-7EoRXYkVkciREHdur823wXrFSR-NWXcdkx+5WcA@mail.gmail.com>
 <20190821092618.GA26871@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190821092618.GA26871@kroah.com>
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
Cc: devel@driverdev.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Aug 21, 2019 at 02:26:18AM -0700, Greg KH wrote:
> On Tue, Aug 20, 2019 at 09:12:51PM -0700, Edmund Huber wrote:
> > My apologies. Is it possible that you are replying to a different thread
> > than intended? I don't think I have an email addressed to me from the
> > patchbot.
> 
> I got a bunch of patches from a lot of different people all at once
> (Tobin must have run a class),

lols, I'm glad you have a new patchbot Greg :)  I hope it is cheap to
run, some of those messages it had to send were caused by omissions on
my behalf.

   Tobin
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
