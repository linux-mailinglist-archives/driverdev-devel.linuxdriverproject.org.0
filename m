Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id BA1C23336F0
	for <lists+driverdev-devel@lfdr.de>; Wed, 10 Mar 2021 09:07:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1028B4EC60;
	Wed, 10 Mar 2021 08:07:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YyAmR0q_vGHM; Wed, 10 Mar 2021 08:07:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 863454D7A3;
	Wed, 10 Mar 2021 08:07:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B973E1BF3F9
 for <devel@linuxdriverproject.org>; Wed, 10 Mar 2021 08:07:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A7BAC6F56B
 for <devel@linuxdriverproject.org>; Wed, 10 Mar 2021 08:07:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dAC1S4PeDRT6 for <devel@linuxdriverproject.org>;
 Wed, 10 Mar 2021 08:07:17 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com
 [IPv6:2a00:1450:4864:20::42c])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C46D3605C1
 for <devel@driverdev.osuosl.org>; Wed, 10 Mar 2021 08:07:17 +0000 (UTC)
Received: by mail-wr1-x42c.google.com with SMTP id b18so22049797wrn.6
 for <devel@driverdev.osuosl.org>; Wed, 10 Mar 2021 00:07:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:cc:subject
 :references:in-reply-to:content-transfer-encoding;
 bh=989sLPeJVZywzoU599JKsQdN+6rLaFH4XsPDO0CSh+Y=;
 b=dSsrkbN/kdm9I0B7Q2F8jB42nsBNt2zQbLwlojLJ/rFY62edKBWnSs40BpTjydu0ow
 p+RT5vEPrfm9oNb0gSEw4IZxIiKqCRDL2sqMR/VyiWHYZn/KK8YPS8B2+mrPXHPhIF8X
 f5v009sK8oBgTW1wf6r/iEl+jGOovingtBOCRSbKZ6vVFleowQNqKEiuAeOoUsif/+Yr
 XOQCuwXOLEfIyQjpUBKz4x6sG9jrZIrgjcc5eat5ahg9h409pi1WB4SftIOXXFmX6wXc
 nBRaxoWo0Q1nwYXIccWDYfCvoYcpC1jhcIo1bfRd36K/eL/s+MCqdfdq5umWLps2PR7U
 5U3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :cc:subject:references:in-reply-to:content-transfer-encoding;
 bh=989sLPeJVZywzoU599JKsQdN+6rLaFH4XsPDO0CSh+Y=;
 b=PHC01E04ORGmB6O+prpU6Xtxa1d+CO8vMtRGbaFqeYVnIXsazRq4VuIzERsDAARLgF
 MbYADuIMx5z76tJAJcP78WRBDOKYUMvv98NBHlWHq/RUoewJ/4gwNoX/dCMnscsbTT1N
 ZIns+LW/PIU9yho20i8KtxLjxK43igddLcIspNAwsv20FpJnVJ50OD0OBZaglB9ljLTl
 yrWlLRDa9sjqPYawytzfKpDpmPlXKVlZ+Xd+I8wcrON55Idp3KVVzg/hcdLev+dnR9kw
 7z1TNPFYJsfcnPCyUNDKB2sCVhD2MM6kI4PGErVElZGG1h/VKU1/0YNptomcxUotC+lS
 Dpew==
X-Gm-Message-State: AOAM532Prt2oRzqUhyG4G/ZQjeQnPwVErSC6F0Ht69dWynT6xxK5GArO
 T7k8xVyKn1uoOAKD4NFwQk4=
X-Google-Smtp-Source: ABdhPJx+xj81IHc/WELy34cryxBgohHFmsQ8DcskRufLh56vTPC5XZZLoOo7ZDKKxHpQNk/W8lZ70g==
X-Received: by 2002:a5d:570c:: with SMTP id a12mr2125346wrv.209.1615363635829; 
 Wed, 10 Mar 2021 00:07:15 -0800 (PST)
Received: from [93.173.65.134] (93-173-65-134.bb.netvision.net.il.
 [93.173.65.134])
 by smtp.gmail.com with ESMTPSA id s16sm28119381wru.91.2021.03.10.00.07.14
 (version=TLS1 cipher=AES128-SHA bits=128/128);
 Wed, 10 Mar 2021 00:07:15 -0800 (PST)
Message-ID: <60487E21.4090700@gmail.com>
Date: Wed, 10 Mar 2021 10:06:57 +0200
From: Eli Billauer <eli.billauer@gmail.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
 rv:1.9.1.12) Gecko/20100907 Fedora/3.0.7-1.fc12 Thunderbird/3.0.7
MIME-Version: 1.0
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [kbuild] Re: [PATCH v3 1/2] char: xillybus: Move class-related
 functions to new xillybus_class.c
References: <20210309160326.GD21246@kadam>
In-Reply-To: <20210309160326.GD21246@kadam>
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
Cc: devel@driverdev.osuosl.org, kbuild-all@lists.01.org, arnd@arndb.de,
 gregkh@linuxfoundation.org, kbuild@lists.01.org, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 09/03/21 18:03, Dan Carpenter wrote:
> url:https://github.com/0day-ci/linux/commits/eli-billauer-gmail-com/Submission-of-XillyUSB-driver/20210309-193645
> base:https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/char-misc.git   080951f99de1e483a9a48f34c079b634f2912a54
> config: x86_64-randconfig-m001-20210309 (attached as .config)
> compiler: gcc-9 (Debian 9.3.0-22) 9.3.0
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot<lkp@intel.com>
> Reported-by: Dan Carpenter<dan.carpenter@oracle.com>
>
> smatch warnings:
> drivers/char/xillybus/xillybus_class.c:86 xillybus_init_chrdev() warn: ignoring unreachable code.
> drivers/char/xillybus/xillybus_class.c:96 xillybus_init_chrdev() warn: missing error code 'rc'
>    
Thanks a lot. I guess there's a patch v4 coming up.

Regards,
    Eli
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
