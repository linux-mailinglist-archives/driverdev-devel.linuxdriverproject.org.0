Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 410DA2C382F
	for <lists+driverdev-devel@lfdr.de>; Wed, 25 Nov 2020 05:43:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5AF3A274DB;
	Wed, 25 Nov 2020 04:43:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id m6j7Pa1Szpch; Wed, 25 Nov 2020 04:43:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E2B7B273CF;
	Wed, 25 Nov 2020 04:43:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 701B91BF5AC
 for <devel@linuxdriverproject.org>; Wed, 25 Nov 2020 04:43:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 63B88873CE
 for <devel@linuxdriverproject.org>; Wed, 25 Nov 2020 04:43:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id w71IMkOYOCvM for <devel@linuxdriverproject.org>;
 Wed, 25 Nov 2020 04:43:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C3E90873CA
 for <devel@driverdev.osuosl.org>; Wed, 25 Nov 2020 04:43:03 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id 81so1292819pgf.0
 for <devel@driverdev.osuosl.org>; Tue, 24 Nov 2020 20:43:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=WgwvIE+SYJNhqADKQZurakSjkdWc52Z6zNoc9HGWK/E=;
 b=u+gTAkG7TRnXQQyxFbV4O/o++vcK3Je5QsfaGcBDaaDf1H+hl1GwQhy8MMHAb3SPzq
 H06w+2QpAjMOQR+6E+yK189WGcRtUQj7fUDFSm+SIqqENspIReOTxNAy0mflASfMfsK1
 IH0Lqjo3GsJweS/gfEMGJn177FF6XlIhrI73BLExxDkvQjcs1ebYtklrKk9ueB5GSBZZ
 soBOKjVvCp+iM32y0xjIM8OfwHLpwuEwxnJRfTBxs4h/S2KdLfM5NxavMldYPzHt/z/5
 2NRtuONGmq3A1SgSE+F4Q8en3KPvpH7otic+cKDltC/gylbtEMTO4uFU//G+sedbHSPw
 uvqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=WgwvIE+SYJNhqADKQZurakSjkdWc52Z6zNoc9HGWK/E=;
 b=rZG+QOgBaaUOyIax3IYLAllNReecYCNBzhzksjl2vnSdjAAU6k3rWhFm1sVB7BRk+T
 SxDkHix4xSI7xXJ82LVKCSK98ItxkXnvZ6h/OBaOCb+Hs6imUOByP4jlxGFdKOe8EQ2V
 KMgD8uvq6D4LHYsGh+BeI6ZC+BIbYP0j8tipl9Isj23sEcDX34QEmSzDm1WAiig4sz3e
 4Rmv7WpzFoQGZJMkEsstjDrqVojwvkz3pdRT5vJ3goMi74EJjKnOFIayP9PmtVLiVKXl
 uUziX+fMQrrIysFNa6/gNjKJqxSm4O7QQb8w3IenvV7oGW8lbqLT71aTyyzbTVIMnQjj
 DRvQ==
X-Gm-Message-State: AOAM531RH7MslgxqnlcLNbfztZakeLSGOMJBPY1q80LMaFvsi+07xRXx
 9uRqnngK3Z9BaTe1EQ28J8M=
X-Google-Smtp-Source: ABdhPJwpT35k8tzGkp7unYNbt9QDIr3R8n8s1F35Y7VWvmB6cP19Xflh8P7ICspTdg9F8JP2GuZ2uw==
X-Received: by 2002:a62:864a:0:b029:197:ad58:4184 with SMTP id
 x71-20020a62864a0000b0290197ad584184mr932183pfd.55.1606279383324; 
 Tue, 24 Nov 2020 20:43:03 -0800 (PST)
Received: from f3 (ag097173.dynamic.ppp.asahi-net.or.jp. [157.107.97.173])
 by smtp.gmail.com with ESMTPSA id j10sm830146pji.29.2020.11.24.20.43.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 Nov 2020 20:43:02 -0800 (PST)
Date: Wed, 25 Nov 2020 13:42:57 +0900
From: Benjamin Poirier <benjamin.poirier@gmail.com>
To: "Gustavo A. R. Silva" <gustavoars@kernel.org>
Subject: Re: [PATCH 127/141] staging: qlge: Fix fall-through warnings for Clang
Message-ID: <20201125044257.GA142382@f3>
References: <cover.1605896059.git.gustavoars@kernel.org>
 <673bd9f27bcc2df8c9d12be94f54001d8066d4ab.1605896060.git.gustavoars@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <673bd9f27bcc2df8c9d12be94f54001d8066d4ab.1605896060.git.gustavoars@kernel.org>
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
Cc: devel@driverdev.osuosl.org, GR-Linux-NIC-Dev@marvell.com,
 Manish Chopra <manishc@marvell.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 linux-hardening@vger.kernel.org, netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 2020-11-20 12:39 -0600, Gustavo A. R. Silva wrote:
> In preparation to enable -Wimplicit-fallthrough for Clang, fix a warning
> by explicitly adding a break statement instead of letting the code fall
> through to the next case.
> 
> Link: https://github.com/KSPP/linux/issues/115
> Signed-off-by: Gustavo A. R. Silva <gustavoars@kernel.org>
> ---
>  drivers/staging/qlge/qlge_main.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/staging/qlge/qlge_main.c b/drivers/staging/qlge/qlge_main.c
> index 27da386f9d87..c41b1373dcf8 100644
> --- a/drivers/staging/qlge/qlge_main.c
> +++ b/drivers/staging/qlge/qlge_main.c
> @@ -1385,6 +1385,7 @@ static void ql_categorize_rx_err(struct ql_adapter *qdev, u8 rx_err,
>  		break;
>  	case IB_MAC_IOCB_RSP_ERR_CRC:
>  		stats->rx_crc_err++;
> +		break;
>  	default:
>  		break;
>  	}

In this instance, it think it would be more appropriate to remove the
"default" case.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
