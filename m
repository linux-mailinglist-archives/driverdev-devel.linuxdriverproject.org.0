Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4811C28FFFC
	for <lists+driverdev-devel@lfdr.de>; Fri, 16 Oct 2020 10:31:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 97F592E76C;
	Fri, 16 Oct 2020 08:31:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1tdxFQ6+n61X; Fri, 16 Oct 2020 08:31:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 7B7592E706;
	Fri, 16 Oct 2020 08:31:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6881A1BF327
 for <devel@linuxdriverproject.org>; Fri, 16 Oct 2020 08:31:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 64FB288ADC
 for <devel@linuxdriverproject.org>; Fri, 16 Oct 2020 08:31:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2tp9YiH40mTW for <devel@linuxdriverproject.org>;
 Fri, 16 Oct 2020 08:31:10 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from wout2-smtp.messagingengine.com (wout2-smtp.messagingengine.com
 [64.147.123.25])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C7E9E88ACE
 for <devel@driverdev.osuosl.org>; Fri, 16 Oct 2020 08:31:10 +0000 (UTC)
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.west.internal (Postfix) with ESMTP id 4A0B9445;
 Fri, 16 Oct 2020 04:31:09 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Fri, 16 Oct 2020 04:31:09 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=5bx3U2G//OdfLuj7ME4nfPhJd6x
 F8C5nc9Vf4Iserbg=; b=K+t119F/y2Ws2f0L8WYWOYe3W+JP6u/3uJf/lM29wVD
 wo+7V9p8rS73lGz7PJsLCURlFHGBHdoIIOaRJr8Jqq4PUn1lORyWbk8L/6RcMimv
 0X3S3AutcbWMYE9KuArpPkIM+h5Bm1X2vPwTjGvwGILtDQQ7BdeP86vt+HL00foZ
 LbUO9a8ejpT9Qnvn7DelPcWJZ4wIaMarsBGK4RjE3WDyrsYbHHvk6O+iceHU3HWR
 Agbw5avqbPO/ekrQrfluOInhYtfW5eHSHs8/OdbMnFh/7bUDN00p559ingL3vu3l
 Ka6aeiLysDmHFnDWr/ZHb45w4uAQqpn0BgNvRxEWpFQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=5bx3U2
 G//OdfLuj7ME4nfPhJd6xF8C5nc9Vf4Iserbg=; b=Edjfo0yeWQJMn+lvAvNufF
 G+/CDekETV+T1svLFvTRj0Ymn9FIhuzxs5QNnauBYkYGpSBgkzYKEhRin0bjaxE2
 QqjMYpg9n5qHbb2EKgqWQJaBIlOlqN5SpBfSCYCqkWeUOVSuiXeJgWF2O6K0/mjd
 BZjkdRSSyM6RxzFJLvpoL/oB3Uio94c2dOVfIySoUAKQx+YONwWsHjOhDZ/C3n6/
 Y0Wh0snDks1lJ7Riz8xsvouMI/Xv6vvSPRQqMXc8DGLUZlOFagUQ1eKrg6dnuQVM
 oNZnTtkELOI3ygMo6D0E0WVfmBeAA+LgJSq00OhbnUiAdVi99moO/Fo9gJm22AyQ
 ==
X-ME-Sender: <xms:TFqJX_E5KBCz3ALoaudByqp4oFyHir0ywKMeELut-Rx-9ixCMTaAYw>
 <xme:TFqJX8VNUbXie2K3h2lx1YwEJfjO9iFoQ_z2IjDNGyW6d_BZWCZTx-b7AIDMfkXgh
 7PbdTsDDpw84w>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedujedrieehgddtgecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesthdtredttddtvdenucfhrhhomhepifhrvghgucfm
 jfcuoehgrhgvgheskhhrohgrhhdrtghomheqnecuggftrfgrthhtvghrnhepveeuheejgf
 ffgfeivddukedvkedtleelleeghfeljeeiueeggeevueduudekvdetnecukfhppeekfedr
 keeirdejgedrieegnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilh
 hfrhhomhepghhrvghgsehkrhhorghhrdgtohhm
X-ME-Proxy: <xmx:TFqJXxJzeb6lXFjTN6qUjQ6uFIoH8mr1oAKr16MEgj4bwkXCszfCnQ>
 <xmx:TFqJX9GWkyzyT0Ft3cEd--_PXApErVAIujZibrXWgsZxKUPNJ6dJ-A>
 <xmx:TFqJX1XBRhfuhLdFXn8pM-s-AumVkcnnjlNGN4ZyPvecskwif2nnBQ>
 <xmx:TFqJX2cgB_RaMT_EvuF0N6-WTk1aGH6YzVBLO10XIpJcb4KXgSNDvg>
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
 by mail.messagingengine.com (Postfix) with ESMTPA id 460C53280066;
 Fri, 16 Oct 2020 04:31:08 -0400 (EDT)
Date: Fri, 16 Oct 2020 10:31:40 +0200
From: Greg KH <greg@kroah.com>
To: Giovanni Bertao <gbertao96@gmail.com>
Subject: Re: [PATCH] Staging: comedi: quatech_daqp_cs: Remove repeated word
 on comment
Message-ID: <20201016083140.GA1730678@kroah.com>
References: <20201013212718.5975-1-gbertao96@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201013212718.5975-1-gbertao96@gmail.com>
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
Cc: devel@driverdev.osuosl.org, abbotti@mev.co.uk
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Oct 13, 2020 at 09:27:18PM +0000, Giovanni Bertao wrote:
> Remove repeated word on comment.
> 
> Signed-off-by: Giovanni Bertao <gbertao96@gmail.com>
> ---
>  drivers/staging/comedi/drivers/quatech_daqp_cs.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

> diff --git a/drivers/staging/comedi/drivers/quatech_daqp_cs.c b/drivers/staging/comedi/drivers/quatech_daqp_cs.c
> index 1b1efa4d31f6..fe4408ebf6b3 100644
> --- a/drivers/staging/comedi/drivers/quatech_daqp_cs.c
> +++ b/drivers/staging/comedi/drivers/quatech_daqp_cs.c
> @@ -164,7 +164,7 @@ static int daqp_clear_events(struct comedi_device *dev, int loops)
>  
>  	/*
>  	 * Reset any pending interrupts (my card has a tendency to require
> -	 * require multiple reads on the status register to achieve this).
> +	 * multiple reads on the status register to achieve this).
>  	 */
>  	while (--loops) {
>  		status = inb(dev->iobase + DAQP_STATUS_REG);
> -- 
> 2.25.1

This change is already in Linus's tree, always make sure to work against
linux-next so that you do not duplicate work that has already been done.

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
