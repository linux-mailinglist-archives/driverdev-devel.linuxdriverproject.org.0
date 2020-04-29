Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 013C61BE7FA
	for <lists+driverdev-devel@lfdr.de>; Wed, 29 Apr 2020 22:01:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2BD1323528;
	Wed, 29 Apr 2020 20:01:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id d0Gk8aJSdyC4; Wed, 29 Apr 2020 20:01:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id A1EAF23459;
	Wed, 29 Apr 2020 20:00:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A35861BF376
 for <devel@linuxdriverproject.org>; Wed, 29 Apr 2020 20:00:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 9A6E7884A7
 for <devel@linuxdriverproject.org>; Wed, 29 Apr 2020 20:00:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id n-g-q0AYCXbs for <devel@linuxdriverproject.org>;
 Wed, 29 Apr 2020 20:00:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f68.google.com (mail-io1-f68.google.com
 [209.85.166.68])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 72D6A884A6
 for <devel@driverdev.osuosl.org>; Wed, 29 Apr 2020 20:00:53 +0000 (UTC)
Received: by mail-io1-f68.google.com with SMTP id k23so3664266ios.5
 for <devel@driverdev.osuosl.org>; Wed, 29 Apr 2020 13:00:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=ivR/S7GYo6YmuHq6apeA7QKo7Gig9pWiDmfkfQ66UQQ=;
 b=ExO2fH7W1PNbx3IWYXzNxZo54o6JBRsswBtN4UuK1Y6V8nmHdEsVsXT4HkjHKE46Fy
 oSjoO42PznX1Mqv4gNYthhpGCdla/+LEX8yH2IBKavYeos/sDYSMcDodudepdk3QrIAj
 DZWSX4WewN+pZn8sDz7swEwgIyO3AvnCKs/Aq/HwLFWnnd7ZBMuyWwLs38orfc1XotOS
 Q0EoTd6g8bksRbYtbcNq2uEIYWPlNZubXJnfLl4IHvgpLWcdAG7VQypLbKNLsb0ubgPc
 uTHPS7C9E3cJHUeCPejFsjPtdVsP5l1AV4Ue+5qW4Bwe1klqz/cGTuQRfleTkSDYlACL
 CeDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=ivR/S7GYo6YmuHq6apeA7QKo7Gig9pWiDmfkfQ66UQQ=;
 b=ZHMkCEsw586iy+T+i1rSOrmIaJNbQYVL59qdnuWyI3MvPsYJQbgiiUPskl1NjU3Vgr
 OVk3rkJ2ldjeGN4PWCZ61K8vlsU0iitlXRm6fb7SS04i3USVzTgRqC+cNWC3I4PDbW89
 mdqIT4Wuw4sQlS9QrYegFac56xGE/jSk7JzGXoLlKi0z/z/NQqPXzCc1LB3aslAlTKAt
 oUzuG/fOboD7LFJnvsMi+EbCfDK3ufvo4prvRmSivembguUMXMo3Ui8YK/bVdEWL2T5h
 leJmx5p9Nv6IICEPIEGGli+w6pDc+hCV2XPSglPrISfWhcKRFMwlkZ2TNuOwRhChFn8C
 yLNA==
X-Gm-Message-State: AGi0PubukYx6zRdALB9h52QruuDGy36xNvlBV835y7FhSIecshIknhGD
 QhRFJ1jBNA5G3c6iA3/zBZM7wA==
X-Google-Smtp-Source: APiQypLJYlgIkzUo0VrI2MJoIfEiY2Izq72/hXtGKLGfgtFLlCE+J5AWZYav1XxM1Q3A0EtD0zh1AA==
X-Received: by 2002:a02:90cd:: with SMTP id c13mr31100201jag.83.1588190452552; 
 Wed, 29 Apr 2020 13:00:52 -0700 (PDT)
Received: from [172.22.22.26] (c-73-185-129-58.hsd1.mn.comcast.net.
 [73.185.129.58])
 by smtp.googlemail.com with ESMTPSA id v9sm1173063iol.28.2020.04.29.13.00.50
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 29 Apr 2020 13:00:51 -0700 (PDT)
Subject: Re: [greybus-dev] [PATCH] greybus: uart: fix uninitialized flow
 control variable
To: Arnd Bergmann <arnd@arndb.de>, David Lin <dtwlin@gmail.com>,
 Johan Hovold <johan@kernel.org>, Alex Elder <elder@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Axel Haslam <ahaslam@baylibre.com>
References: <20200429190022.12671-1-arnd@arndb.de>
From: Alex Elder <elder@linaro.org>
Message-ID: <7146e1ca-1fc7-61ab-e798-7b017c7c974b@linaro.org>
Date: Wed, 29 Apr 2020 15:00:44 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200429190022.12671-1-arnd@arndb.de>
Content-Language: en-US
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
Cc: devel@driverdev.osuosl.org, greybus-dev@lists.linaro.org,
 Greg Kroah-Hartman <gregkh@google.com>, linux-kernel@vger.kernel.org,
 Johan Hovold <johan@hovoldconsulting.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 4/29/20 2:00 PM, Arnd Bergmann wrote:
> gcc-10 points out an uninitialized variable use:

Wow, nice, checking individual uninitialized fields within
the structure.

The structure should really be zero-initialized anyway; it's
passed as a structure in a message elsewhere.  With your
change, all fields in the structure are written, but in
theory the structure could change and stack garbage could
be sent over the wire.

What do you think of doing this instead?  Or in addition?

        struct gb_tty_line_coding newline = { };

(Presumably that would also silence the warning.)

I endorse of your change, either way.

					-Alex

> drivers/staging/greybus/uart.c: In function 'gb_tty_set_termios':
> drivers/staging/greybus/uart.c:540:24: error: 'newline.flow_control' is used uninitialized in this function [-Werror=uninitialized]
>   540 |   newline.flow_control |= GB_SERIAL_AUTO_RTSCTS_EN;
> 
> Instead of using |= and &= on the uninitialized variable, use a
> direct assignment.
> 
> Fixes: e55c25206d5c ("greybus: uart: Handle CRTSCTS flag in termios")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  drivers/staging/greybus/uart.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/greybus/uart.c b/drivers/staging/greybus/uart.c
> index 55c51143bb09..4ffb334cd5cd 100644
> --- a/drivers/staging/greybus/uart.c
> +++ b/drivers/staging/greybus/uart.c
> @@ -537,9 +537,9 @@ static void gb_tty_set_termios(struct tty_struct *tty,
>  	}
>  
>  	if (C_CRTSCTS(tty) && C_BAUD(tty) != B0)
> -		newline.flow_control |= GB_SERIAL_AUTO_RTSCTS_EN;
> +		newline.flow_control = GB_SERIAL_AUTO_RTSCTS_EN;
>  	else
> -		newline.flow_control &= ~GB_SERIAL_AUTO_RTSCTS_EN;
> +		newline.flow_control = 0;
>  
>  	if (memcmp(&gb_tty->line_coding, &newline, sizeof(newline))) {
>  		memcpy(&gb_tty->line_coding, &newline, sizeof(newline));
> 

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
