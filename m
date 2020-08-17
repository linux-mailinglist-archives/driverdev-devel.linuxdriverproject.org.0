Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A4236245E07
	for <lists+driverdev-devel@lfdr.de>; Mon, 17 Aug 2020 09:33:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 979EE203E6;
	Mon, 17 Aug 2020 07:33:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3bDsr5AKuoVz; Mon, 17 Aug 2020 07:33:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id AD2AF20378;
	Mon, 17 Aug 2020 07:33:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B56821BF471
 for <devel@linuxdriverproject.org>; Mon, 17 Aug 2020 07:33:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A01F120336
 for <devel@linuxdriverproject.org>; Mon, 17 Aug 2020 07:33:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WXg6NjpitJbo for <devel@linuxdriverproject.org>;
 Mon, 17 Aug 2020 07:33:08 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from out4-smtp.messagingengine.com (out4-smtp.messagingengine.com
 [66.111.4.28])
 by silver.osuosl.org (Postfix) with ESMTPS id 68D861FFC1
 for <devel@driverdev.osuosl.org>; Mon, 17 Aug 2020 07:33:08 +0000 (UTC)
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
 by mailout.nyi.internal (Postfix) with ESMTP id 4A88C5C00CF;
 Mon, 17 Aug 2020 03:33:07 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute1.internal (MEProxy); Mon, 17 Aug 2020 03:33:07 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm1; bh=VmfvyfcxdbOHAJ8N+bbgNYsHoP3
 zzsZJ9lVBmrLPcWM=; b=rrYA2740t+Teny0L9++CXu2BuvIrhjOygBeEqQyqmKm
 XsPf9ti4pbxN12XQmuO3+Er+KmUoXqUCkS5PFCl57TLGZ5XFOC6j/B6WSinK5AI2
 C6Mdb/pa6k48m31tXk+D4f82kFIpV4nmPGEaTD8GbIhyUVKSXXy07FF/Q1anH8mA
 LA2ThNVg71b2cAjVzYRL7S6vtMo1E5OFbo8Jo8uBJar+PnA5VKkK97YyJs13+u7Z
 bRaF1KIcvC8MPfsdiPJFKDZQwwWtilMXEHpx3qOdrZgaQNVJexzZQiUM2PVi5Sz5
 BjjtKX9QBF27CBrZwhIaJONE6vHYozqFDE2cTfK6fpw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=Vmfvyf
 cxdbOHAJ8N+bbgNYsHoP3zzsZJ9lVBmrLPcWM=; b=FLTh58TsQxBKmeSvAEYD+P
 bkBuRcwhqCSpR1S4IcUgs72U4nPOCUDPSbsSK3cDN57zOoKNHkmq3u9LRojyUydC
 reeyhF0GIQWm4E/VnPN+lYMZDzu2Amm2Stuz/xjLqgNJzY8ED05BmhTEvtQ0pfDY
 klbN/CiDv5DCC66uyIdcQK0hDbqAMpjOhjZCpVpWPBDctICDtejIh9EI7HxY/eu4
 BpGrDpw5qfbPUSoAKw4iqAkIbNkWG73DI5oFCfDdcYmCXxdy4wj6zxh0MJK8TT2f
 +UjP4vXC1jm2ivLur5qFytXEf27wjZpXnFWkJXDQGGlwOg34TbhsLTcUocZ8c7oQ
 ==
X-ME-Sender: <xms:szI6X53lRVn94Yl7f73oJoDRY33qMpo3OAGVsJxcS4TUbflCGUZBxw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduiedruddtvddgudduiecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffukfhfgggtuggjsehttd
 ertddttddvnecuhfhrohhmpefirhgvghcumffjuceoghhrvghgsehkrhhorghhrdgtohhm
 qeenucggtffrrghtthgvrhhnpeevueehjefgfffgiedvudekvdektdelleelgefhleejie
 eugeegveeuuddukedvteenucfkphepkeefrdekiedrkeelrddutdejnecuvehluhhsthgv
 rhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepghhrvghgsehkrhhorghhrd
 gtohhm
X-ME-Proxy: <xmx:szI6XwHuv-nwIg0xAyPOl50v-tw3IcCnB2DsYZDo6fYWiPdcLN0GkQ>
 <xmx:szI6X56U2TSTFYWlwPHW0DDb16E86Xr5ymmb79lA296P6jI6l0l0OA>
 <xmx:szI6X22ntUZkpY5a4PCmTDkyLhpwlWkt218KLFFixZnoAx0ar5QO-g>
 <xmx:szI6XwSHoCoB9934KNoIFfUUMpBirEf2_za9AJ7dAuK2Zq5Pb8fhPw>
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 by mail.messagingengine.com (Postfix) with ESMTPA id A963E30600B1;
 Mon, 17 Aug 2020 03:33:06 -0400 (EDT)
Date: Mon, 17 Aug 2020 09:33:26 +0200
From: Greg KH <greg@kroah.com>
To: Injae Kang <abcinje@gmail.com>
Subject: Re: [PATCH] staging: rtl8723bs: fix coding style
Message-ID: <20200817073326.GB372202@kroah.com>
References: <20200817061520.5886-1-abcinje@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200817061520.5886-1-abcinje@gmail.com>
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

On Mon, Aug 17, 2020 at 06:15:20AM +0000, Injae Kang wrote:
> Fix coding style of core/rtw_cmd.c
> 
> Signed-off-by: Injae Kang <abcinje@gmail.com>
> ---
>  drivers/staging/rtl8723bs/core/rtw_cmd.c | 168 +++++++++++------------
>  1 file changed, 79 insertions(+), 89 deletions(-)
> 

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

- Your patch did many different things all at once, making it difficult
  to review.  All Linux kernel patches need to only do one thing at a
  time.  If you need to do multiple things (such as clean up all coding
  style issues in a file/driver), do it in a sequence of patches, each
  one doing only one thing.  This will make it easier to review the
  patches to ensure that they are correct, and to help alleviate any
  merge issues that larger patches can cause.

- You did not specify a description of why the patch is needed, or
  possibly, any description at all, in the email body.  Please read the
  section entitled "The canonical patch format" in the kernel file,
  Documentation/SubmittingPatches for what is needed in order to
  properly describe the change.

- You did not write a descriptive Subject: for the patch, allowing Greg,
  and everyone else, to know what this patch is all about.  Please read
  the section entitled "The canonical patch format" in the kernel file,
  Documentation/SubmittingPatches for what a proper Subject: line should
  look like.

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
