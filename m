Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EE6F3C135
	for <lists+driverdev-devel@lfdr.de>; Tue, 11 Jun 2019 04:20:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id BE6AF87B18;
	Tue, 11 Jun 2019 02:20:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UFME6bWxWCU0; Tue, 11 Jun 2019 02:20:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 53BE387937;
	Tue, 11 Jun 2019 02:20:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8EC591BF40F
 for <devel@linuxdriverproject.org>; Tue, 11 Jun 2019 02:20:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8BCE685BCD
 for <devel@linuxdriverproject.org>; Tue, 11 Jun 2019 02:20:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jMBTgYokLhlz for <devel@linuxdriverproject.org>;
 Tue, 11 Jun 2019 02:20:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f193.google.com (mail-qk1-f193.google.com
 [209.85.222.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E138685B04
 for <devel@driverdev.osuosl.org>; Tue, 11 Jun 2019 02:20:08 +0000 (UTC)
Received: by mail-qk1-f193.google.com with SMTP id c70so6698664qkg.7
 for <devel@driverdev.osuosl.org>; Mon, 10 Jun 2019 19:20:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=HwcJ3r4qabrGVVXT3iY3gOmdfuWxDoWG3l3kjwZI/qg=;
 b=JbD7UPswwn5ywFpJwjc6MZcPot3MXgCElgt/h9mEcNcNfGh3mRREOcvyQ7IiFQYJnB
 lR5G4McHWsw+XiZmzwxLMErj5nMRCtfV6b2n6bdg/AlUY2ZZUHUgsxUhorxW0G/oon+y
 tHYcZ5Mi+pZlLcfe9ylSE0YMjihR8fxQveqpNOQy5y2vnX5svpMXwsth1qchiroLOr2F
 B/2nOSovSkh3DOAyixuedTleeJHNCw6Tswjw+TStnT1L1OgNQaBVRGV5wouFn5iTfqlJ
 14gSvJuBnX+QZHMz2bWHvF1nWjml3tatpZGtFdeD1r3v4Xgzcma4S2QYkrMMI+6JFsNX
 nQgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=HwcJ3r4qabrGVVXT3iY3gOmdfuWxDoWG3l3kjwZI/qg=;
 b=ucKixsEgvzMY7wmmHrrpaftz5u7/P9pCX3nuaJTX09kAhnnj8ki/skLlN9L8J9aGi4
 mv6YUEXGwXmeGxHQrDmVIq/dfG3WXAPBfTpNOOZzn73LLB/ZBEqSl71rTn2cVja7x2tC
 TIdIrqP9oEwqe/8LQ3Sg/DvH5EgI8Yv4FYcOTQcKDJAaRXjryMQ0VtJPuEQKavmcSgrT
 JfGvzwJCwdUn3z4qBQfsaSwqtG1zf1xRhdaTzXkVjmpcgT/hgnR/W/XixcWWm6HI6de5
 WEgk7YraW4kIJ7SXgwPbaKJVYgkUb0CPCPi1qntNa9P3wJfY6Cmprm/ka7uj01iHrhPR
 /Lcg==
X-Gm-Message-State: APjAAAUgwbthFMuvcgFSxGztbsCRLP17lVzswHLJYPusRuWRMPoAaWzm
 9zW9Ug1IrQ3Tdvk8e3S4bAQ=
X-Google-Smtp-Source: APXvYqydHSDTfP8+mP7byc9A+TnBA+jZDFoUV2Gbt+iT9i15mhY627WLYZSDL04ly3BcnENyrL6rvw==
X-Received: by 2002:a05:620a:14ba:: with SMTP id
 x26mr38038141qkj.328.1560219607997; 
 Mon, 10 Jun 2019 19:20:07 -0700 (PDT)
Received: from arch-01.home (c-73-132-202-198.hsd1.md.comcast.net.
 [73.132.202.198])
 by smtp.gmail.com with ESMTPSA id o33sm6728345qtk.67.2019.06.10.19.20.06
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 10 Jun 2019 19:20:07 -0700 (PDT)
Date: Mon, 10 Jun 2019 22:19:33 -0400
From: Geordan Neukum <gneukum1@gmail.com>
To: Hao Xu <haoxu.linuxkernel@gmail.com>
Subject: Re: [PATCH v2] staging: kpc2000: kpc_i2c: remove the macros inb_p
 and outb_p
Message-ID: <20190611021933.GA915@arch-01.home>
References: <1560152904-31894-1-git-send-email-haoxu.linuxkernel@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1560152904-31894-1-git-send-email-haoxu.linuxkernel@gmail.com>
User-Agent: Mutt/1.12.0 (2019-05-25)
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Jun 10, 2019 at 03:48:24PM +0800, Hao Xu wrote:
> remove inb_p and outb_p to call readq/writeq directly.
> 
> Signed-off-by: Hao Xu <haoxu.linuxkernel@gmail.com>
> ---
> Changes in v2:
> - remove the macros inb_p/outb_p and use readq/writeq directly, per https://lkml.kernel.org/lkml/20190608134505.GA963@arch-01.home/
> ---
>  drivers/staging/kpc2000/kpc2000_i2c.c | 112 ++++++++++++++++------------------
>  1 file changed, 53 insertions(+), 59 deletions(-)
> 
> diff --git a/drivers/staging/kpc2000/kpc2000_i2c.c b/drivers/staging/kpc2000/kpc2000_i2c.c
> index 69e8773..246d5b3 100644
> --- a/drivers/staging/kpc2000/kpc2000_i2c.c
> +++ b/drivers/staging/kpc2000/kpc2000_i2c.c

> @@ -307,28 +301,28 @@ static int i801_block_transaction_byte_by_byte(struct i2c_device *priv, union i2
>  			else
>  				smbcmd = I801_BLOCK_DATA;
>  		}
> -		outb_p(smbcmd | ENABLE_INT9, SMBHSTCNT(priv));
> +		writeq(smbcmd | ENABLE_INT9, (void *)SMBHSTCNT(priv));
>  
>  		if (i == 1)
> -			outb_p(inb(SMBHSTCNT(priv)) | I801_START, SMBHSTCNT(priv));
> +			writeq(inb(SMBHSTCNT(priv)) | I801_START, (void *)SMBHSTCNT(priv));

This inb() call looks like a bug. We perform a 64-bit operation when
talking to this hardware register everywhere else in this driver. Anyone
have more insight into the hardware with which this driver interacts
such that they could shed some light on the subject?

Probably a separate issue, but I did notice it as a result of this patch.

Thanks,
Geordan
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
