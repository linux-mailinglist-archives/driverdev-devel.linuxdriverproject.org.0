Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EBD478EFCF
	for <lists+driverdev-devel@lfdr.de>; Thu, 15 Aug 2019 17:51:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 6CD7D20507;
	Thu, 15 Aug 2019 15:51:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id H8BjqRYC7ItM; Thu, 15 Aug 2019 15:51:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 6A93820504;
	Thu, 15 Aug 2019 15:51:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C62E31BF3CE
 for <devel@linuxdriverproject.org>; Thu, 15 Aug 2019 15:51:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C18D187813
 for <devel@linuxdriverproject.org>; Thu, 15 Aug 2019 15:51:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tp1gKKlzizRB for <devel@linuxdriverproject.org>;
 Thu, 15 Aug 2019 15:51:24 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from out5-smtp.messagingengine.com (out5-smtp.messagingengine.com
 [66.111.4.29])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E989B87668
 for <devel@driverdev.osuosl.org>; Thu, 15 Aug 2019 15:51:23 +0000 (UTC)
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
 by mailout.nyi.internal (Postfix) with ESMTP id B500E21F15;
 Thu, 15 Aug 2019 11:51:21 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute6.internal (MEProxy); Thu, 15 Aug 2019 11:51:21 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm1; bh=UIPGXfQTDFCslVKtBg0ZoEeVLhB
 sG9U2SjEzsxCXZ9Y=; b=FkDZPL3FedjyLa5vkKOzxhNagju8lovpYhcPKhP+tHJ
 0pLcqrSelmwguYfHIw7uZa3geJCHQ9FkpWbNw3xkmo3SjUsD6rTf997UayuqskGM
 xQRQf0yIKhyDuhrAq1dp+CvC/33I/mh55OXQ6nT7Yrdt+IhWtM8+kMcMoYd2uv8g
 rhIf0YQJkCCY4wwnVnFEhp+aJtvzyRlMTJlr6l4jMNB5U9N2ct7YLMBIbHd3afHn
 /Q32k/0+OK+T3C7aKAAG9OCKilrb9WxgPdgBXcwLJPaCY6gXuHAx2NQ/3V5BBtET
 2sSlS8avXS0KPCMkUG8indK0NqokCPpAC8OTNYgTqkw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=UIPGXf
 QTDFCslVKtBg0ZoEeVLhBsG9U2SjEzsxCXZ9Y=; b=A1P+RIQnUk9zn5dtgYjBMp
 rZRjxSO7YOkqaeMQZGLuoEvnkcIUg291Mdgz/M5f6vjlrgRj9qdJtnwk9RL9Al14
 TW1RMq9rUn6zudllOAXxu6qsvEGXyKtOGfd5V2tUQk26UDGbUjHTNJBBUC+zHFGw
 sEfUfqj6PJrKxP0PILODIYWiIx2HLhrWudnd1HKuZ3qoAsrI2BKOR9GWjgg+1z8a
 SYrd/1JLq563WWDWiA4if3ySQKxeyf9P4/9zldaDXv7/czxdM/+BZiU4oa0sr5pp
 dCgZD7ZWPR8QG4LZMY6/pCSIBn1fmJYx8RQ2N3lgf8946WubBPtFCzWOl+O4/Zbg
 ==
X-ME-Sender: <xms:eX9VXbSCA2SPhpaCCM2zJ-jZ9ak-x4Nh7DOYZ17KJHSadRmaXSQloA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrudefuddgledvucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvuffkfhggtggujggfsehttd
 ertddtredvnecuhfhrohhmpefirhgvghcumffjuceoghhrvghgsehkrhhorghhrdgtohhm
 qeenucfkphepkeefrdekiedrkeelrddutdejnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
 hgrhgvgheskhhrohgrhhdrtghomhenucevlhhushhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:eX9VXSft9AfoJXGDNEHkCVY68QTmuRzu1qrpcimten6E2yZBeJ_lLA>
 <xmx:eX9VXSAWpyfq5-jHgHIH0Stl1yK9PvyM06PoYzwRJhNW6YZMR_NTpg>
 <xmx:eX9VXY1lBW3zIIzJ7tfJ8i-1-uZ2aaxl34ul6zCG25vDyFJB6KNjbw>
 <xmx:eX9VXeKcFznPBeOPIqFiH1TsokGnxUQYd-xnPFBAVJBH1wEeF4c94Q>
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 by mail.messagingengine.com (Postfix) with ESMTPA id 26D2B380076;
 Thu, 15 Aug 2019 11:51:21 -0400 (EDT)
Date: Thu, 15 Aug 2019 17:51:19 +0200
From: Greg KH <greg@kroah.com>
To: hugoziviani <hugoziviani@gmail.com>
Subject: Re: [PATCH v2] staging: drivers: rtl8712: removing unnecessary
 parenthesis
Message-ID: <20190815155119.GA13141@kroah.com>
References: <20190815152640.32265-1-hugoziviani@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190815152640.32265-1-hugoziviani@gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
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

On Thu, Aug 15, 2019 at 11:26:40AM -0400, hugoziviani wrote:
> Fix checkpatch error "CHECK: Remove unecessary parenthesis in drivers/staging/rtl8712/rtl871x_mlme.c"
> 
> Signed-off-by: hugoziviani <hugoziviani@gmail.com>
> ---
>  drivers/staging/rtl8712/rtl871x_mlme.c | 84 +++++++++++++-------------
>  1 file changed, 42 insertions(+), 42 deletions(-)

Hi,

This is the friendly patch-bot of Greg Kroah-Hartman.  You have sent him
a patch that has triggered this response.  He used to manually respond
to these common problems, but in order to save his sanity (he kept
writing the same thing over and over, yet to different people), I was
created.  Hopefully you will not take offence and will fix the problem
in your patch and resubmit it so that it can be accepted into the Linux
kernel tree.

You are receiving this message because of the following common error(s)
as indicated below:

- It looks like you did not use your "real" name for the patch on either
  the Signed-off-by: line, or the From: line (both of which have to
  match).  Please read the kernel file, Documentation/SubmittingPatches
  for how to do this correctly.

If you wish to discuss this problem further, or you have questions about
how to resolve this issue, please feel free to respond to this email and
Greg will reply once he has dug out from the pending patches received
from other developers.

thanks,

greg k-h's patch email bot
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
