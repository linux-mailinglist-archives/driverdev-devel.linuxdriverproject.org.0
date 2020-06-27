Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B8E620C01A
	for <lists+driverdev-devel@lfdr.de>; Sat, 27 Jun 2020 10:18:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0CD0921505;
	Sat, 27 Jun 2020 08:18:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id V2yQl4mUbv-4; Sat, 27 Jun 2020 08:18:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 493CB204FF;
	Sat, 27 Jun 2020 08:18:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 082A21BF470
 for <devel@linuxdriverproject.org>; Sat, 27 Jun 2020 08:18:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id F311188384
 for <devel@linuxdriverproject.org>; Sat, 27 Jun 2020 08:18:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7jiL6ncW0jro for <devel@linuxdriverproject.org>;
 Sat, 27 Jun 2020 08:18:43 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from out1-smtp.messagingengine.com (out1-smtp.messagingengine.com
 [66.111.4.25])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 3AFB38803B
 for <devel@driverdev.osuosl.org>; Sat, 27 Jun 2020 08:18:43 +0000 (UTC)
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
 by mailout.nyi.internal (Postfix) with ESMTP id 3F7D65C00C3;
 Sat, 27 Jun 2020 04:18:42 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute1.internal (MEProxy); Sat, 27 Jun 2020 04:18:42 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm1; bh=9wx6/NBCtUyIidAMsYPa3pDXdKg
 b2/Or/mBI3+vhfkU=; b=HD3zRBZfulNdh6/lx8kr77sAYd+nyivaNkkoyEiQWxl
 lSmceHxF7JHVJfZuLHO2h//HUU8qe3RbFkKMGKfumoezrLznPGVk+WZsvajY0liP
 XYmyPn1yBjlKEicWOhx/CdQFTrpe2LrIfoYiy6vi+LIJAs6Cds83c9WM6DVMEfY5
 Fxp3zucrdlRZu4NSTF4GAKlw3cP221yfAQcYHZgvTCp/5bu4yXC5Zfe9CJKwAnIN
 50/qmP6KBUDlpDLUyDPINcnvoFurHd240tinEy3CHp3zEz0bDHJekJiC+nmYRiUz
 wdtCeLLfSBHR1EhG1qiitrEsvW9HioWSJcNjPT6+nhA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=9wx6/N
 BCtUyIidAMsYPa3pDXdKgb2/Or/mBI3+vhfkU=; b=da9JfVZIhFLGjpV10JqOk/
 NqUmOUqF34l01SNRFdbhrnZ6SEWcA7eCp6bWHE1YSv/DSfTythrv87CKuDp4MYJO
 LzF4Dsw5nJmT3hYVPimEZyxuJrXCYobRSZw15v2fJUURE7xH3s/zOoI+fL5ZMiSZ
 5EuBhiA8MD2Y4qAj0roRcCFsix4xHWE4PFDnn9ALi3tgTvPJ6R2lTT/2Ewmk0P97
 46XS78oPqVlOULfoKuGXLeRn2MJRcBoBVvd+k/qQlpY86inDHe2dKqUCmEHSiyyr
 5IPr+OmVOOoqYmKpcqGszdLez8wrNmrMY2tz1fsJZNm4C6VEiBrZ5n5uo9e7bPLA
 ==
X-ME-Sender: <xms:4QD3XpIeyjiBAz8c5sHW7vt0eUAHSAceRl5i7Jvo89ooJxGQ01N5UQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrudelfedgtdegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpefirhgvghcu
 mffjuceoghhrvghgsehkrhhorghhrdgtohhmqeenucggtffrrghtthgvrhhnpeevueehje
 fgfffgiedvudekvdektdelleelgefhleejieeugeegveeuuddukedvteenucfkphepkeef
 rdekiedrkeelrddutdejnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrg
 hilhhfrhhomhepghhrvghgsehkrhhorghhrdgtohhm
X-ME-Proxy: <xmx:4QD3XlJMFNjiPyCBRaCkICkaoCXODp5601Moa6VPY0fMQJtUlQEQGQ>
 <xmx:4QD3XhuDLqyIvxQ0ljmMrYuNbphnGlDxkqAoTV_BqatsTwDEycgGew>
 <xmx:4QD3XqaAX6VICR3oRbYXQQJiuiLmSxzlSlh0TdthJjZswx8-cVJGrQ>
 <xmx:4gD3Xm33otsjqF3tusLnReQcrdErzIWpifdVi9kfSs4Y2cjrmKMRdw>
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 by mail.messagingengine.com (Postfix) with ESMTPA id 79FDD3067A08;
 Sat, 27 Jun 2020 04:18:41 -0400 (EDT)
Date: Sat, 27 Jun 2020 10:18:34 +0200
From: Greg KH <greg@kroah.com>
To: Joe Perches <joe@perches.com>
Subject: Re: RT_TRACE in drivers/staging/rtl8188eu
Message-ID: <20200627081834.GA1550330@kroah.com>
References: <ddebd1bd14f5a8dd0b01a02e794662224894f46f.camel@perches.com>
 <20200627080128.GA1547070@kroah.com>
 <fa75f7c44c296ab7aae8755d84717b0020c2e115.camel@perches.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <fa75f7c44c296ab7aae8755d84717b0020c2e115.camel@perches.com>
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

On Sat, Jun 27, 2020 at 01:12:42AM -0700, Joe Perches wrote:
> On Sat, 2020-06-27 at 10:01 +0200, Greg KH wrote:
> > On Sat, Jun 27, 2020 at 12:33:56AM -0700, Joe Perches wrote:
> > > There are 3 parts of the email.
> > > 
> > > 1: A description and patch for a logging defect
> > > 2: A script to go along with the patch to do conversions
> > > 3: Current diff for this defect
> > > 
> > > ------------------------------------------------------------------------
> > > -
> > > 
> > > The macro below in drivers/staging/rtl8188eu/include/rtw_debug.h
> > > is defective as it emits multiple pr_info calls for each use
> > > so the logging in dmesg is discontinuous.
> > 
> > I recommend just deleting it.  As it's obviously incorrect, and any
> > "real" tracing should just use the real tracing infrastructure, this is
> > not needed and can be removed.
> 
> Don't get hung up on the name.
> 
> It's not used for tracing, it's effectively just
> a debugging mechanism, the same in all the other
> rtl staging drivers.

Ok, then it should be converted to "normal" dev_*() functions, where
needed, the others deleted entirely (the dev_info attempts...)

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
