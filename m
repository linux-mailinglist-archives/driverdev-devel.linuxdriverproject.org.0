Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AFF4E319919
	for <lists+driverdev-devel@lfdr.de>; Fri, 12 Feb 2021 05:28:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A88FF8761C;
	Fri, 12 Feb 2021 04:28:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dr0HmGkC5e6H; Fri, 12 Feb 2021 04:28:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3F83487601;
	Fri, 12 Feb 2021 04:28:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B21621BF41B
 for <devel@linuxdriverproject.org>; Fri, 12 Feb 2021 04:28:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A9B708756F
 for <devel@linuxdriverproject.org>; Fri, 12 Feb 2021 04:28:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1PS8keZweMnw for <devel@linuxdriverproject.org>;
 Fri, 12 Feb 2021 04:28:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f54.google.com (mail-pj1-f54.google.com
 [209.85.216.54])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A7E6E87518
 for <devel@driverdev.osuosl.org>; Fri, 12 Feb 2021 04:28:16 +0000 (UTC)
Received: by mail-pj1-f54.google.com with SMTP id fa16so4669437pjb.1
 for <devel@driverdev.osuosl.org>; Thu, 11 Feb 2021 20:28:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=ZR+aabr64yWgCcg3tFC4qsF1v5nqVYMm2I0noIyPsCw=;
 b=GobiS9mGxBlo/ukJelr5dPQgMLmlKJ4s8q3FhWYR6ySAZHOhb5a+AkpAhdhMMG7T/3
 phntOq6lnoQEfWXfrXVN55v9Z83q5ajNFNPbSZCgjUFnIsqY07v5RZCUrnTfs+3L5hyx
 sQtZTV3SFQqw+zEAEwmGVPCazkAqscVBvpfokVbOgRDrgJ9rdDWXcbMIM2rawyF8NV38
 ypm1L7uNZ0RoMvikm1CSgCAXG+tK+TKVNXNEVZOMU3EgMqrBHlIPiTiQVmRFg2IV6KIG
 hvlPg6/ytjncrZ1g2GShK/db2YiEaD3nuU04X1SRf75DX49+0Nt+gD1RsiiLfwGpBOw3
 QTcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ZR+aabr64yWgCcg3tFC4qsF1v5nqVYMm2I0noIyPsCw=;
 b=MBsfFKW2CFRtgsO7xa/US8cgPykiWUh1JJPV7mQu9XplcsigFJJp78zHH74p58V3Zc
 xcdy9ZHBq5BTi0wPumM8nPa+BY/wA19l1DWLeO18ClifGxP+Hpvk46B5/uIGghr1UYsN
 +GsL825pJqB/F+IjWVp6km51mNrOzYzPivXU8+/Ekz2CaOa45uaRD8GIsSxD69qYb8VU
 /t32ZpZ/WQZ+Jx2q6SaFnbieBSJ5PvyXK8MVS6c4bHTRMNR81bi/h5UEkrFPslGgEId8
 Asvm4r+xqBZ7GS2ah9NsrNKygh2o6xQn4snc6GcvcpO3v+8YIQNtK6jLgZQS68MugUnZ
 cGUg==
X-Gm-Message-State: AOAM533h3q9tzyQzfj8Bttyw2zl+wNSKG6Iwp7DVvOETNdaThPOl1qSe
 tZm8IWm8o7CQSc55ZAeGUOmeGg==
X-Google-Smtp-Source: ABdhPJwGkjQUwMP8XefFXrRE5xGFyoG2PyK9oRFz9QBGRyIafYp6Js9D8Flr/JNJ1qq0jMIv0cwVlw==
X-Received: by 2002:a17:90b:4905:: with SMTP id
 kr5mr1030438pjb.135.1613104091205; 
 Thu, 11 Feb 2021 20:28:11 -0800 (PST)
Received: from localhost ([122.172.59.240])
 by smtp.gmail.com with ESMTPSA id r68sm7309061pfc.49.2021.02.11.20.28.09
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 11 Feb 2021 20:28:10 -0800 (PST)
Date: Fri, 12 Feb 2021 09:58:07 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Subject: Re: [PATCH v1 2/9] cpufreq: sfi-cpufreq: Remove driver for
 deprecated firmware
Message-ID: <20210212042807.4yzclby4rffnkwvm@vireshk-i7>
References: <20210211134008.38282-1-andriy.shevchenko@linux.intel.com>
 <20210211134008.38282-3-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210211134008.38282-3-andriy.shevchenko@linux.intel.com>
User-Agent: NeoMutt/20180716-391-311a52
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
Cc: linux-pci@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
 platform-driver-x86@vger.kernel.org,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 "H. Peter Anvin" <hpa@zytor.com>, Lee Jones <lee.jones@linaro.org>,
 devel@driverdev.osuosl.org, Mark Gross <mgross@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, x86@kernel.org,
 linux-acpi@vger.kernel.org, Ingo Molnar <mingo@redhat.com>,
 Darren Hart <dvhart@infradead.org>, Sumit Gupta <sumitg@nvidia.com>,
 linux-media@vger.kernel.org, linux-pm@vger.kernel.org,
 Hans de Goede <hdegoede@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Bjorn Helgaas <bhelgaas@google.com>, Thomas Gleixner <tglx@linutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Mika Westerberg <mika.westerberg@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, linux-kernel@vger.kernel.org,
 Wolfram Sang <wsa@kernel.org>, Andy Shevchenko <andy@infradead.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>, Mike Rapoport <rppt@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 11-02-21, 15:40, Andy Shevchenko wrote:
> SFI-based platforms are gone. So does this driver.
> 
> Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> Acked-by: Linus Walleij <linus.walleij@linaro.org>
> ---
>  drivers/cpufreq/Kconfig.x86   |  10 ---
>  drivers/cpufreq/Makefile      |   1 -
>  drivers/cpufreq/sfi-cpufreq.c | 127 ----------------------------------
>  3 files changed, 138 deletions(-)
>  delete mode 100644 drivers/cpufreq/sfi-cpufreq.c

Acked-by: Viresh Kumar <viresh.kumar@linaro.org>

-- 
viresh
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
