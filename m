Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E24BBA9BF7
	for <lists+driverdev-devel@lfdr.de>; Thu,  5 Sep 2019 09:37:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D128C23358;
	Thu,  5 Sep 2019 07:37:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MD04Hc5qdT0q; Thu,  5 Sep 2019 07:37:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 1907220488;
	Thu,  5 Sep 2019 07:37:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 998E51BF3D6
 for <devel@linuxdriverproject.org>; Thu,  5 Sep 2019 07:37:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9660E86A57
 for <devel@linuxdriverproject.org>; Thu,  5 Sep 2019 07:37:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gAUWnQQA_zbi for <devel@linuxdriverproject.org>;
 Thu,  5 Sep 2019 07:37:04 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from wout2-smtp.messagingengine.com (wout2-smtp.messagingengine.com
 [64.147.123.25])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 0EE8B869E4
 for <devel@driverdev.osuosl.org>; Thu,  5 Sep 2019 07:37:04 +0000 (UTC)
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
 by mailout.west.internal (Postfix) with ESMTP id 2816B7B9;
 Thu,  5 Sep 2019 03:37:03 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute6.internal (MEProxy); Thu, 05 Sep 2019 03:37:03 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm1; bh=ms9HUSMQgwEBaFLYYsWKEq7yUGv
 U90TU6t4GZB0HnsU=; b=HRdBCTR2/1P5NuKJKWFzJHCW4i1AXKez5LyG5+fbZgW
 hIXxqru5zy8s8LQM2RkrFz86BhHJVPVwVWUJY5k75OLzrouUoK+dXyl7NH6jRBKd
 c6WTv013VkKjlj0TVvf4p6OhwOf5x5Axubt4B7ig1ARtenpv1zP63SWjXeqPgrnj
 i4tNKbI4kZVqw1XRA07Mj8IZZ71LWQ7qjgjA6vGWxLhefSItLqbZPR5Ei7bZkkTm
 BLTagIjC8lucqdVvvVk6ZUgjaxh1Ak4HLO894fP5B6sSDnwCJZK6HxcudIvb/sKn
 FvSbbfWbE2SJ4kgYV1OdLEEQOdElJWlcW33q2Naq6gQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=ms9HUS
 MQgwEBaFLYYsWKEq7yUGvU90TU6t4GZB0HnsU=; b=wPmD0kuHCKv+1Tm/BuxIlS
 cPj3tGAHCNFxVxf+VlZg0W6dCEQeLTGhNA49K4kvC0P4qCHCiF9Ym63SxQOz1WgL
 3RowvonH3ZRoWayE/XLTQmFT27GKQ9a9XQsXWdc7kP0PeDHo2FZqTOZnNwPmx2Pm
 98R/OZcJrLfh3OGoQO+K3keBHgjmqdBuutgpARtOz1B8Jog3MW3TIS8POB/B9NNE
 3MnEwxnYbfs/FpGMOSNeEGSoxMRu0XeB/SZHcXpfwhuVXccCpmgl57MSX+1y4vSZ
 VcMoEZx3BzB3RkIfiSyquDN8wmG5dyeX4Bn1NtjwfIt4yqtTTnOl488AC7jbCbNA
 ==
X-ME-Sender: <xms:HrtwXXkup2N1uuKdmKnzoEA_7p1-JJN8NQe-_TSZtoHeqaxRp1KF3A>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrudejiedgudduiecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffukfhfgggtuggjfgesth
 dtredttdervdenucfhrhhomhepifhrvghgucfmjfcuoehgrhgvgheskhhrohgrhhdrtgho
 mheqnecukfhppeekfedrkeeirdekledruddtjeenucfrrghrrghmpehmrghilhhfrhhomh
 epghhrvghgsehkrhhorghhrdgtohhmnecuvehluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:HrtwXRbAww2rgi9tiP6C1V4TrspSZ65cf7ly2V839tbcdJCK4ZK9Qw>
 <xmx:HrtwXa25vVRoNRdMdCygr9_sh0fwhVI2wG4brMzTzYSBALpdWMID_Q>
 <xmx:HrtwXRpeSsgR7XIxn6Ab0BeSDk4X1YsXk9JovxyrFLDeL3IQBVCi0Q>
 <xmx:HrtwXbWF9L82id3fLfOV7nSJWVzKy0F9RD1JBbiI02PROPkl0nevDg>
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 by mail.messagingengine.com (Postfix) with ESMTPA id 4844ED60063;
 Thu,  5 Sep 2019 03:37:02 -0400 (EDT)
Date: Thu, 5 Sep 2019 09:37:00 +0200
From: Greg KH <greg@kroah.com>
To: Ajay.Kathat@microchip.com
Subject: Re: [PATCH 1/2] staging: dt-bindings: wilc1000: add optional rtc_clk
 property
Message-ID: <20190905073700.GA30339@kroah.com>
References: <1567603548-13355-1-git-send-email-eugen.hristev@microchip.com>
 <da5ea898-d8da-a6e2-97a0-4662b7d70b31@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <da5ea898-d8da-a6e2-97a0-4662b7d70b31@microchip.com>
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
Cc: devel@driverdev.osuosl.org, Eugen.Hristev@microchip.com,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Adham.Abozaeid@microchip.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Sep 05, 2019 at 06:09:43AM +0000, Ajay.Kathat@microchip.com wrote:
> Hi Eugen,
> 
> On 04-Sep-19 7:03 PM, Eugen Hristev - M18282 wrote:
> > From: Eugen Hristev <eugen.hristev@microchip.com>
> > 
> > Add bindings for optional rtc clock pin.
> > 
> > Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
> 
> Thanks for sending the patch series. The changes in this series looks
> good to me.
> 
> Acked-by: Ajay Singh <ajay.kathat@microchip.com>

This is good, but, you are adding new features to the driver, when it is
still in the staging directory.  What's the plan on getting it out of
here?  What is left to do?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
