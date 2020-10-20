Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 592F529329D
	for <lists+driverdev-devel@lfdr.de>; Tue, 20 Oct 2020 03:08:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C564D86BB8;
	Tue, 20 Oct 2020 01:08:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UnCfWrPS-Me8; Tue, 20 Oct 2020 01:08:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8CA0686B74;
	Tue, 20 Oct 2020 01:08:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 97FEC1BF32C
 for <devel@linuxdriverproject.org>; Tue, 20 Oct 2020 01:07:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 93E0886B43
 for <devel@linuxdriverproject.org>; Tue, 20 Oct 2020 01:07:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BNxMgnngXbOo for <devel@linuxdriverproject.org>;
 Tue, 20 Oct 2020 01:07:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f66.google.com (mail-io1-f66.google.com
 [209.85.166.66])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D19EE86B3F
 for <devel@driverdev.osuosl.org>; Tue, 20 Oct 2020 01:07:57 +0000 (UTC)
Received: by mail-io1-f66.google.com with SMTP id b8so426916ioh.11
 for <devel@driverdev.osuosl.org>; Mon, 19 Oct 2020 18:07:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=p6oCxSl0NxHBGpRF0Csh1Ota/+f24EPc/qZsIIjTsdU=;
 b=mU393MiUidI9lhYo7eRWYGH4kcEYs2KhAe5eGHziG6lNNA+UgmdmNSorh4u2iBcqzR
 Q5cEbqS8JEFlKs79WKpq2wSp5UdONcPw6WMXA6KEwNPe6aEddElxw2wMmGA8rea5Qcn1
 opc5cTGw311OWXelQ/A6z5jvuZfJDf9qxgqE3p+dm65DZRFQxK6Y+pArEusIeg/LNcjZ
 Kj1EraDBaZfV+RAaa4yrgh85cX9wAHWyrk5OHDK4Qx7J5xwNw8VlCVnIAJEKJ4NSCvWy
 7qhb2lkMsA7XnBQVmzResc546/eZL0e+83Pc1UVLboD4RUc4svsQPnaNWsILGdVMlrIO
 KmSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=p6oCxSl0NxHBGpRF0Csh1Ota/+f24EPc/qZsIIjTsdU=;
 b=GwfUs7IagMr1SniQBIGV8vxcjPQcLrvrpg/VZHifXuf+VtSA5W0EvrE4k+tViRYpgc
 g1qLo+M+wxHU3OWPJFDdeYWEHYV6Wxq7rJElQwUaVz0SKvPX3q4VX+hUbGp/cvuWc1S9
 nmNdD1NC4euXfRmNRAIVMGeqaMd+gjzqcqF85Ot9w0w+DB/Skf0w7IV825U9/bhqPtVt
 EPiZAa2j/k0dhEnuJOj5Z1xMVmdTEUn60OCZg6Nmn1TWH3UzRLx2eDOpf6MdZZSaDk+y
 MGmfQBVf+QWVT5DmJ1YCGlcVguQltdBDZgqrH5eUUEOvPrtLobNaGrRhiGkpChpdpPwG
 i29g==
X-Gm-Message-State: AOAM532iS+3z3uMaynjAs6uPIJ6UkaaW3cVPmb67BTMUDwGHlV3fq7AE
 d1WUa6K7HGc2Dr0y6bJ3fdo=
X-Google-Smtp-Source: ABdhPJw/gkp/YEp4mC5SU0UwrWcYSOqWSCeVCgimt0fr9KxWgSWFEoh2ANrwgq/8HwL7RR03j8xUSg==
X-Received: by 2002:a02:3b54:: with SMTP id i20mr354726jaf.94.1603156077138;
 Mon, 19 Oct 2020 18:07:57 -0700 (PDT)
Received: from ubuntu-m3-large-x86 ([2604:1380:45d1:2600::3])
 by smtp.gmail.com with ESMTPSA id 80sm313059ilv.13.2020.10.19.18.07.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 19 Oct 2020 18:07:56 -0700 (PDT)
Date: Mon, 19 Oct 2020 18:07:54 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Jerome Pouiller <Jerome.Pouiller@silabs.com>
Subject: Re: [PATCH 1/2] staging: wfx: fix use of uninitialized pointer
Message-ID: <20201020010754.GB1817488@ubuntu-m3-large-x86>
References: <20201019160604.1609180-1-Jerome.Pouiller@silabs.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201019160604.1609180-1-Jerome.Pouiller@silabs.com>
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
Cc: devel@driverdev.osuosl.org, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "David S . Miller" <davem@davemloft.net>, Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Oct 19, 2020 at 06:06:03PM +0200, Jerome Pouiller wrote:
> From: J=E9r=F4me Pouiller <jerome.pouiller@silabs.com>
> =

> With -Wuninitialized, the compiler complains:
> =

> drivers/staging/wfx/data_tx.c:34:19: warning: variable 'band' is uninitia=
lized when used here [-Wuninitialized]
>     if (rate->idx >=3D band->n_bitrates) {
>                          ^~~~
> =

> Reported-by: kernel test robot <lkp@intel.com>
> Reported-by: Nathan Chancellor <natechancellor@gmail.com>
> Fixes: 868fd970e187 ("staging: wfx: improve robustness of wfx_get_hw_rate=
()")
> Signed-off-by: J=E9r=F4me Pouiller <jerome.pouiller@silabs.com>

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

> ---
>  drivers/staging/wfx/data_tx.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> =

> diff --git a/drivers/staging/wfx/data_tx.c b/drivers/staging/wfx/data_tx.c
> index 41f6a604a697..36b36ef39d05 100644
> --- a/drivers/staging/wfx/data_tx.c
> +++ b/drivers/staging/wfx/data_tx.c
> @@ -31,13 +31,13 @@ static int wfx_get_hw_rate(struct wfx_dev *wdev,
>  		}
>  		return rate->idx + 14;
>  	}
> -	if (rate->idx >=3D band->n_bitrates) {
> -		WARN(1, "wrong rate->idx value: %d", rate->idx);
> -		return -1;
> -	}
>  	// WFx only support 2GHz, else band information should be retrieved
>  	// from ieee80211_tx_info
>  	band =3D wdev->hw->wiphy->bands[NL80211_BAND_2GHZ];
> +	if (rate->idx >=3D band->n_bitrates) {
> +		WARN(1, "wrong rate->idx value: %d", rate->idx);
> +		return -1;
> +	}
>  	return band->bitrates[rate->idx].hw_value;
>  }
>  =

> -- =

> 2.28.0
> =

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
