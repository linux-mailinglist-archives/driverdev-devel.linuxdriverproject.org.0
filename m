Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 508613C9EAD
	for <lists+driverdev-devel@lfdr.de>; Thu, 15 Jul 2021 14:33:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 436014069F;
	Thu, 15 Jul 2021 12:33:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Q3mr11TVCqrX; Thu, 15 Jul 2021 12:33:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A74384038C;
	Thu, 15 Jul 2021 12:33:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 177171BF5A2
 for <devel@linuxdriverproject.org>; Thu, 15 Jul 2021 12:33:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 04B2C605CB
 for <devel@linuxdriverproject.org>; Thu, 15 Jul 2021 12:33:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DytfusNGZ07C for <devel@linuxdriverproject.org>;
 Thu, 15 Jul 2021 12:33:08 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com
 [209.85.128.44])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A6E5560755
 for <devel@linuxdriverproject.org>; Thu, 15 Jul 2021 12:33:08 +0000 (UTC)
Received: by mail-wm1-f44.google.com with SMTP id g12so3617546wme.2
 for <devel@linuxdriverproject.org>; Thu, 15 Jul 2021 05:33:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=wcDqw/N3e7J5nfLH5cF0Skbpc7vHSRgpyIPNTllWAWs=;
 b=UFedpueHSc6pasTu28KseeNOyYxCN0T9DyPjwhOdnME+E7lcQK9ywbUfqxMTgMB1kZ
 nuHih+8C9zKrYHpzgi0TVKyV2FoGzbJw0oN7HCG10gMLCzkHWKsjuPrONt0ex4zJrgPm
 8m9ntZ+Ptf4GDRhBL3uJ0bn/YNnCHsOQ1eDSRPngMhMPph9ga8rqaPUqOve4uFdaHDTI
 KA5T2DtL+Pj/LJyn1gbpxbzs6bM7Iz2mU/q/5PsEB/fE/Zf6hgXosdC/ihqsL+VkWlC1
 769r1J4e78qAKCgHAt854w9byEvMgERCnoiakHRcF5bizG8wofBVxdLpWNf53W3qPMn9
 swPw==
X-Gm-Message-State: AOAM531szUWS0+1mE8quvSu9ksKVQ9spAno3x125/PmT250H/Ch5ev0d
 XMFx1Jn4R8B77RrR3dC3vg8=
X-Google-Smtp-Source: ABdhPJzI7lmODjTFGlC2kC5J5/Q0S5SFEXXHfnV/p8EScZYBPWojG+IpBYLVOeTIBrPwq8QBgSSfvA==
X-Received: by 2002:a1c:7c17:: with SMTP id x23mr10104904wmc.43.1626352386916; 
 Thu, 15 Jul 2021 05:33:06 -0700 (PDT)
Received: from liuwe-devbox-debian-v2 ([51.145.34.42])
 by smtp.gmail.com with ESMTPSA id s1sm8337793wmj.8.2021.07.15.05.33.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 15 Jul 2021 05:33:06 -0700 (PDT)
Date: Thu, 15 Jul 2021 12:33:04 +0000
From: Wei Liu <wei.liu@kernel.org>
To: Sonia Sharma <sosha@linux.microsoft.com>
Subject: Re: [PATCH] hyperv: Remove unused inline functions in hyperv.h
Message-ID: <20210715123304.a7qgu5op4cymaj6b@liuwe-devbox-debian-v2>
References: <1626294034-6061-1-git-send-email-sosha@linux.microsoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1626294034-6061-1-git-send-email-sosha@linux.microsoft.com>
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
Cc: wei.liu@kernel.org, Stephen Hemminger <sthemmin@microsoft.com>,
 Haiyang Zhang <haiyangz@microsoft.com>, linux-kernel@vger.kernel.org,
 devel@linuxdriverproject.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Sonia

On Wed, Jul 14, 2021 at 01:20:34PM -0700, Sonia Sharma wrote:
[...]
> -static inline void set_channel_affinity_state(struct vmbus_channel *c,
> -					      enum hv_numa_policy policy)
> -{
> -	c->affinity_policy = policy;
> -}
> -

This function was removed in 8ef4c4abbbc which was committed more than a
year ago.

The other three indeed have no users in tree.

For uptream development please base your changes on the hyperv-next
branch (new features, improvements) or hyperv-fixes branch (bug fixes).

See https://git.kernel.org/pub/scm/linux/kernel/git/hyperv/linux.git/ .

Wei.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
