Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id F2DB020BFF2
	for <lists+driverdev-devel@lfdr.de>; Sat, 27 Jun 2020 10:02:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0F97B20511;
	Sat, 27 Jun 2020 08:02:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Aru71meh1Zuo; Sat, 27 Jun 2020 08:02:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 45D7321505;
	Sat, 27 Jun 2020 08:01:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DD3F01BF2A5
 for <devel@linuxdriverproject.org>; Sat, 27 Jun 2020 08:01:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id C7EF42078D
 for <devel@linuxdriverproject.org>; Sat, 27 Jun 2020 08:01:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CsG7sti9udyW for <devel@linuxdriverproject.org>;
 Sat, 27 Jun 2020 08:01:50 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from out1-smtp.messagingengine.com (out1-smtp.messagingengine.com
 [66.111.4.25])
 by silver.osuosl.org (Postfix) with ESMTPS id 1EBF920791
 for <devel@driverdev.osuosl.org>; Sat, 27 Jun 2020 08:01:37 +0000 (UTC)
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
 by mailout.nyi.internal (Postfix) with ESMTP id ECCC25C00B5;
 Sat, 27 Jun 2020 04:01:35 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute1.internal (MEProxy); Sat, 27 Jun 2020 04:01:35 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm1; bh=x0H/jjCaOfBHW1qLDKrNzrNg/3i
 GO2H6gZW3G7jKdIM=; b=VQeB7B/lOLII5Bmdc/rKrlYtCxjecqaqWN3XfUhgdL0
 5Qq9mUTTeHuQKrm6w9LUCXkXqp36zSBmZ/fcH7mUMY4WltcXGmXWBUxjDveE69qL
 u6K+XruQ7mZ87oZXO17J3mvweUCr6h6RHGr0Pb92P1Z5T1nmip9oUKbIhD2ZipXr
 JZ0ZI2RpEWs4hTnGMu4radCrt/0V162KpHdU4Hz4Zkt9XxX1Q/a2DSKJ7KQT0hI4
 Zp8lx+XhMvEVu/vrqR/FCyouZxxFAtqxfK+p81hJyPgzF8Gs+Q3GXLK27aHkFUbN
 VCci5NLyMIbBbNhPJTKBpewzZd8p+DLQ74UTDGWu/cA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=x0H/jj
 CaOfBHW1qLDKrNzrNg/3iGO2H6gZW3G7jKdIM=; b=oIpesVM+Woczz/KMAVOubV
 MEAk073VdohUztRQW64Ic6xM0SMKQP2nDn6oX8iaIqg2HCSNdQ56PlmoEqhQ1GI7
 O/OqCnffAYkyhwMvZqyls9zpeufgf41tc1GDVIWCOqjvm9JtCLWE7DO35e3L+eie
 8cRbv4o3Te9cmj3OA4/iFIJHrKz7eBHQacmocO6x/mtE7MM+Z6AK5ydk7+BNeHel
 7exWFcFYAsBPNmhu2We76TINh99eQHtv+m57E84HtqUpiK0+99aJqRTYoYd5Uu72
 Nbk9KUijB9yuFUx7S7n2RMbkVDMaE+Ceycvjvsm3OesgzsAji6YVYbusr7980gxg
 ==
X-ME-Sender: <xms:3_z2XotixXcraosH1J2uJ9VlSbCGZYELmim_hP8HhUksy7pDP9ZkKQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrudelfedgtdduucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpefirhgvghcu
 mffjuceoghhrvghgsehkrhhorghhrdgtohhmqeenucggtffrrghtthgvrhhnpeevueehje
 fgfffgiedvudekvdektdelleelgefhleejieeugeegveeuuddukedvteenucfkphepkeef
 rdekiedrkeelrddutdejnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrg
 hilhhfrhhomhepghhrvghgsehkrhhorghhrdgtohhm
X-ME-Proxy: <xmx:3_z2Xlfzrf8DKM-CaxzG2mkNnUlXjUCIDmBcN1Pa8kzcgKIONwYHwQ>
 <xmx:3_z2XjweReNXaPjyUba1nerr74QS6b6oSmnrLo2tav74BILOulzAbQ>
 <xmx:3_z2XrMzywkc_BZ1kA3sil0n0fvF8YsVcAmYMP0U9UFWJ9f_KmQaCw>
 <xmx:3_z2XhKa5qO0kDcDiA7f912eBMGu6GuxPf3PugAKXn3NkSQQHO-xBg>
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 by mail.messagingengine.com (Postfix) with ESMTPA id E35DA3280064;
 Sat, 27 Jun 2020 04:01:34 -0400 (EDT)
Date: Sat, 27 Jun 2020 10:01:28 +0200
From: Greg KH <greg@kroah.com>
To: Joe Perches <joe@perches.com>
Subject: Re: RT_TRACE in drivers/staging/rtl8188eu
Message-ID: <20200627080128.GA1547070@kroah.com>
References: <ddebd1bd14f5a8dd0b01a02e794662224894f46f.camel@perches.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ddebd1bd14f5a8dd0b01a02e794662224894f46f.camel@perches.com>
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
Cc: devel <devel@driverdev.osuosl.org>,
 Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Jun 27, 2020 at 12:33:56AM -0700, Joe Perches wrote:
> There are 3 parts of the email.
> 
> 1: A description and patch for a logging defect
> 2: A script to go along with the patch to do conversions
> 3: Current diff for this defect
> 
> ------------------------------------------------------------------------
> -
> 
> The macro below in drivers/staging/rtl8188eu/include/rtw_debug.h
> is defective as it emits multiple pr_info calls for each use
> so the logging in dmesg is discontinuous.

I recommend just deleting it.  As it's obviously incorrect, and any
"real" tracing should just use the real tracing infrastructure, this is
not needed and can be removed.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
