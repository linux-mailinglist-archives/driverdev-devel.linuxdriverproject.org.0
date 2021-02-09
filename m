Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E83CA315259
	for <lists+driverdev-devel@lfdr.de>; Tue,  9 Feb 2021 16:07:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 99CF8869EF;
	Tue,  9 Feb 2021 15:07:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oORG+nF4gGmP; Tue,  9 Feb 2021 15:07:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1EE8A86789;
	Tue,  9 Feb 2021 15:07:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B68211BF836
 for <devel@linuxdriverproject.org>; Tue,  9 Feb 2021 15:07:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B2BB9870B7
 for <devel@linuxdriverproject.org>; Tue,  9 Feb 2021 15:07:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ns6jtbDU0zvH for <devel@linuxdriverproject.org>;
 Tue,  9 Feb 2021 15:07:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oo1-f46.google.com (mail-oo1-f46.google.com
 [209.85.161.46])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 082C48643B
 for <devel@driverdev.osuosl.org>; Tue,  9 Feb 2021 15:07:02 +0000 (UTC)
Received: by mail-oo1-f46.google.com with SMTP id g46so4326350ooi.9
 for <devel@driverdev.osuosl.org>; Tue, 09 Feb 2021 07:07:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=bjxmsAAlaEuDY9+PSLnzX23gCEFtWGdplw8kECzDAe0=;
 b=j0Lv1K0lAyO/aXssmrb2JSZHcKCXRO4dHOzcsVMzGZ65kKP2JFgGXgG/PaJsPQmWyL
 PH8Szb7vv3OS37Av5B78PgUF9qUpBk+6szQZ0Mfc8jSxBierincFetlK43SpuOzrUSix
 JDDATP8QCbQ/aXeHyIJqqZd7pJSUDfMkAMtY2cLwiTzpZBSQR2VGEVrGoEiA/22eFBBo
 +2ZJvXCwq/arwcW35AZo8Y99RUJ3pHuVD2TUi39R4P3fZW+D3AHUywDpJIcez+2zvwAw
 fDD91rMnpF03sjoHuA3XsLqaWXEjraCCqrggCHNCij4oj5FWSNRnCtWAs9gcs4N0aJNk
 ZQ/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=bjxmsAAlaEuDY9+PSLnzX23gCEFtWGdplw8kECzDAe0=;
 b=mwOI3pJLO29Bb8rbBadWxmx6F3lPtfPStAz5ENiMq62LcrugMA6V+020BocxCt1VYR
 fsdI5H8jrVHy2NxatkpHD+VCKBVA/21nBfcXCWT25ghjPH4AxbSzQzTpR2gMHav1PjtY
 lxUvInpha0WhHK36NoCgmELOZxJvOc4X8devEyP45OUq56cTDLF0d7je7Ghfr/RwF3ME
 a2pTud/8PJ4uhsAukSIfa9Jk2rgKyJJpkBUlePbXbIDiyAKnEy1M7S/BD7WdTPTNsMdI
 PGu4oFXAravsBbTEjBOKiwcWTV1rF38seZ6Rocyjk8qtWPdUIuX2J+IZTzAiDfBFc4Tn
 Nt6A==
X-Gm-Message-State: AOAM5311MyQen1nTYOgLMF+G4bPg4gos0qwZT4DTfDFO1g9lJUL19ukN
 REimOtdqiIxvI7Bdvqs9rE8=
X-Google-Smtp-Source: ABdhPJzdEtSfPGrXG09x+Nc8Hru0U15ym9pUPhGZOCl+C3Q5W19I9KAYsqOfSP9595rJ8B9hyn1HDA==
X-Received: by 2002:a4a:97a7:: with SMTP id w36mr1076981ooi.64.1612883221140; 
 Tue, 09 Feb 2021 07:07:01 -0800 (PST)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id p23sm4534821otk.51.2021.02.09.07.06.59
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 09 Feb 2021 07:07:00 -0800 (PST)
Date: Tue, 9 Feb 2021 07:06:58 -0800
From: Guenter Roeck <linux@roeck-us.net>
To: Yicong Yang <yangyicong@hisilicon.com>
Subject: Re: [PATCH v2 2/4] hwmon: Use subdir-ccflags-* to inherit debug flag
Message-ID: <20210209150658.GA31002@roeck-us.net>
References: <1612868899-9185-1-git-send-email-yangyicong@hisilicon.com>
 <1612868899-9185-3-git-send-email-yangyicong@hisilicon.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1612868899-9185-3-git-send-email-yangyicong@hisilicon.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
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
Cc: linux-hwmon@vger.kernel.org, kw@linux.com, giometti@enneenne.com,
 jdelvare@suse.com, prime.zeng@huawei.com, linux-pm@vger.kernel.org,
 gregkh@linuxfoundation.org, masahiroy@kernel.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, linuxarm@openeuler.org, abbotti@mev.co.uk,
 michal.lkml@markovi.net, helgaas@kernel.org, linux-kbuild@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Feb 09, 2021 at 07:08:17PM +0800, Yicong Yang wrote:
> From: Junhao He <hejunhao2@hisilicon.com>
> 
> We use ccflags-$(CONFIG_HWMON_DEBUG_CHIP) for the debug
> message in drivers/hwmon, but the DEBUG flag will not pass to
> the subdirectory.
> 
> Considering CONFIG_HWMON_DEBUG_CHIP intends to have DEBUG
> recursively in driver/hwmon. It will be clearer
> to use subdir-ccflags-* instead of ccflags-* to inherit
> the debug settings from Kconfig when traversing subdirectories,
> and it will avoid omittance of DEBUG define when debug messages
> added in the subdirectories.
> 

The above paragraph doesn't add clarity and may as well be dropped.
On the other side, the commit message still doesn't mention that
pr_debug depends on DEBUG, which I am sure many people don't know
or remember. This is the prime reason why this patch is acceptable,
so it most definitely needs to be mentioned here.

Guenter

> Suggested-by: Bjorn Helgaas <bhelgaas@google.com>
> Signed-off-by: Junhao He <hejunhao2@hisilicon.com>
> Signed-off-by: Yicong Yang <yangyicong@hisilicon.com>
> ---
>  drivers/hwmon/Makefile | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/hwmon/Makefile b/drivers/hwmon/Makefile
> index 09a86c5..1c0c089 100644
> --- a/drivers/hwmon/Makefile
> +++ b/drivers/hwmon/Makefile
> @@ -201,5 +201,5 @@ obj-$(CONFIG_SENSORS_XGENE)	+= xgene-hwmon.o
>  obj-$(CONFIG_SENSORS_OCC)	+= occ/
>  obj-$(CONFIG_PMBUS)		+= pmbus/
>  
> -ccflags-$(CONFIG_HWMON_DEBUG_CHIP) := -DDEBUG
> +subdir-ccflags-$(CONFIG_HWMON_DEBUG_CHIP) := -DDEBUG
>  
> -- 
> 2.8.1
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
