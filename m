Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 047E0160400
	for <lists+driverdev-devel@lfdr.de>; Sun, 16 Feb 2020 13:22:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 36C2881AEC;
	Sun, 16 Feb 2020 12:22:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5aCDCyw4DukW; Sun, 16 Feb 2020 12:22:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6BBFE87522;
	Sun, 16 Feb 2020 12:22:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 473781BF315
 for <devel@linuxdriverproject.org>; Sun, 16 Feb 2020 12:22:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 3835C85FC4
 for <devel@linuxdriverproject.org>; Sun, 16 Feb 2020 12:22:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id C2SWk7Qe+xZ5 for <devel@linuxdriverproject.org>;
 Sun, 16 Feb 2020 12:22:01 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from out5-smtp.messagingengine.com (out5-smtp.messagingengine.com
 [66.111.4.29])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 041C385F37
 for <devel@driverdev.osuosl.org>; Sun, 16 Feb 2020 12:22:00 +0000 (UTC)
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
 by mailout.nyi.internal (Postfix) with ESMTP id 4FB4F209E5;
 Sun, 16 Feb 2020 07:21:59 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute6.internal (MEProxy); Sun, 16 Feb 2020 07:21:59 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm3; bh=lF+rSyZKJiYeyANTIn3y1BWmlmX
 5LAbtCdmLpPMIfwI=; b=ZPIEzQuv2qun+WylAry/5ceboYc2EAU5jqVHZEOYlAW
 k+dCjXvbu2DPDMiy4v5tonjKAmm62gkgJpo0yhKMvrY6szglUKZ1hdUQhAoFFQRu
 /7YIbtsKyKDYupGcuTlAwAzpw3pdWYfr+KQnK/nMoZdZmT+fRDUZ8s9aZQJe5IbL
 IPUk//KqpoEcbKjNGNzburL6Ot9Fh9rrDiRYjLcCoFBoxJ0u4ub0hLXg3fC4zrcf
 XqmS+ZC6y+vStEeeDFlUSB1L5zYm6txwrTu1XphFxBbd4Qjr10kOQ6udz6NbEgGG
 afzUHTg6Gt2yy7jPvxrhjn61i4m5at3YeYUtpbjtJZg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=lF+rSy
 ZKJiYeyANTIn3y1BWmlmX5LAbtCdmLpPMIfwI=; b=01Z/YLlWOfnqidQHCb+5qW
 hp7Ly2NhfYy/NZrQtLFOgW5RnaKLC77DTETrLCAjQjWFCchwM3n/qO5wJoReMwL4
 YqjsQE2kE4VlGiyi+L/TBekn4Gzm11Rb/A1yqXk0OVW1gqpRD4cQVFXihWx5SCZv
 MdLohTOz1mnNIs1QAq/z+T/dbAOSny7DW/W3szt5NsLlS/1YG3YOuOCj2cfPVq/a
 MUglHCD7/B4u7RQxBoJuwhgPE3V7w8qVZ5czoXn2cNk0w91qway65wT8Y5f+JCk1
 Z/ToVvYkIwJyqNDb/iuil8sHfrnu9m+InXiK6OVFoUwykIWm3lLldLZjttVw600w
 ==
X-ME-Sender: <xms:5zNJXo1kB5BOEelu5IoQLqP5m6PvAhdMqvGYLOx8HP9TmDUMI3RzyQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrjeeggdeflecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffukfhfgggtuggjsehttdertd
 dttddvnecuhfhrohhmpefirhgvghcumffjuceoghhrvghgsehkrhhorghhrdgtohhmqeen
 ucfkphepkeefrdekiedrkeelrddutdejnecuvehluhhsthgvrhfuihiivgeptdenucfrrg
 hrrghmpehmrghilhhfrhhomhepghhrvghgsehkrhhorghhrdgtohhm
X-ME-Proxy: <xmx:5zNJXp_52VkvojFnZUWUfvQUXGu_ArAK5t9fH0_hLfZi-qMtZYvezA>
 <xmx:5zNJXt2jOSMrNv9z82yuqLLRyiPp4zDTMzQ3Iifk2r01EOF3oJLU7g>
 <xmx:5zNJXu9cUux3umO8CLdx0QpugQXuoysZK-YsDTc7vp-CrWk-p4u0Bg>
 <xmx:5zNJXmN_HAOQljUYt6E0qJWsZCz1u5X6jT5Eg3x1ifuN1xDOUBFobw>
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 by mail.messagingengine.com (Postfix) with ESMTPA id C89DB328005D;
 Sun, 16 Feb 2020 07:21:58 -0500 (EST)
Date: Sun, 16 Feb 2020 13:21:56 +0100
From: Greg KH <greg@kroah.com>
To: sunnypranay <mpranay2017@gmail.com>
Subject: Re: [PATCH] Staging: comedi: drivers: fixed errors warning coding
 style issue
Message-ID: <20200216122156.GA21307@kroah.com>
References: <20200216081518.3516-1-mpranay2017@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200216081518.3516-1-mpranay2017@gmail.com>
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

On Sun, Feb 16, 2020 at 01:45:18PM +0530, sunnypranay wrote:
> Fixed a coding style issue.

What issue?

> 
> Signed-off-by: sunnypranay <mpranay2017@gmail.com>

We need a "real" name here, one that you use for documents.

> ---
>  drivers/staging/comedi/drivers.c | 18 +++++++++++++++---
>  1 file changed, 15 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/comedi/drivers.c b/drivers/staging/comedi/drivers.c
> index 750a6ff3c03c..76395de100a6 100644
> --- a/drivers/staging/comedi/drivers.c
> +++ b/drivers/staging/comedi/drivers.c
> @@ -133,7 +133,7 @@ EXPORT_SYMBOL_GPL(comedi_alloc_subdevices);
>   * On success, @s->readback points to the first element of the array, which
>   * is zero-filled.  The low-level driver is responsible for updating its
>   * contents.  @s->insn_read will be set to comedi_readback_insn_read()
> - * unless it is already non-NULL.
> + * Unless it is already non-NULL.
>   *
>   * Returns 0 on success, -EINVAL if the subdevice has no channels, or
>   * -ENOMEM on allocation failure.
> @@ -282,8 +282,20 @@ EXPORT_SYMBOL_GPL(comedi_readback_insn_read);
>   * continue waiting or some other value to stop waiting (generally 0 if the
>   * condition occurred, or some error value).
>   *
> - * Returns -ETIMEDOUT if timed out, otherwise the return value from the
> - * callback function.
> + * Redback_insn_read() - A generic (*insn_read) for subdevice readback.
> + * @dev: COMEDI device.
> + * @s: COMEDI subdevice.
> + * @insn: COMEDI instruction.
> + * @data: Pointer to return the readback data.
> + * Handles the %INSN_READ instruction for subdevices that use the readback
> + * array allocated by comedi_alloc_subdev_readback().  It may be used
> + * directly as the subdevice's handler (@s->insn_read) or called via a
> + * wrapper.
> + * @insn->n is normally 1, which will read a single value.  If higher, the
> + * same element of the readback array will be read multiple times.
> + * Returns @insn->n on success,
> + * or -EINVAL if @s->readback is NULL.turns -ETIMEDOUT if timed out,
> + * otherwise the return value from the callback function.

Where did all of that come from?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
