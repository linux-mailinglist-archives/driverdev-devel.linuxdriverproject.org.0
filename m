Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C466663E34
	for <lists+driverdev-devel@lfdr.de>; Wed, 10 Jul 2019 01:02:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 461B987C72;
	Tue,  9 Jul 2019 23:02:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hTyQYOvR9hHL; Tue,  9 Jul 2019 23:02:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B04BC87BB1;
	Tue,  9 Jul 2019 23:02:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 21A9B1BF30A
 for <devel@linuxdriverproject.org>; Tue,  9 Jul 2019 23:02:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1EC2E85CF2
 for <devel@linuxdriverproject.org>; Tue,  9 Jul 2019 23:02:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ujNdaRrpPWY8 for <devel@linuxdriverproject.org>;
 Tue,  9 Jul 2019 23:02:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f66.google.com (mail-io1-f66.google.com
 [209.85.166.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B0BA185C5E
 for <devel@driverdev.osuosl.org>; Tue,  9 Jul 2019 23:02:08 +0000 (UTC)
Received: by mail-io1-f66.google.com with SMTP id s7so520645iob.11
 for <devel@driverdev.osuosl.org>; Tue, 09 Jul 2019 16:02:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=pcfzVHuGTYaM+j7i87z+SeIwIRADA9ILTB1ox662dYs=;
 b=unW8HRxQCJ1rcBnTItZxmNxABz01Rc0D7M0kKMCzNxwwWdu2F99aXtZO14ZBjeQJxP
 OMMJcv4XY5NdPTe7oj33mO0TEKf847PmBdC+1k1zmoNXgqFZEeQ9eCitoNPquZY8ZG+R
 0ne31rZZCziWmYD+gVuvTfcK8dgDCe7vW+lynENQI3sHJAYYg9PvWlnQrlnYrzoBVUmO
 zVGuMh4UCJa3t8HEzbPA2KQH7/cFcbF6HoVnqWvInoRB/ZDGaL+eVSnlkotQmRQIW6Tr
 biwbEz7lPI/EOgm9u5WX5sAaJ3KS5N5P/zoPHvSUTwrVIHXSfWyAnac3Hk6LiWsr9LFY
 07Ew==
X-Gm-Message-State: APjAAAWDbOxGz03Ti7YtVxhZEQe+Us3pkz5PGtA4HwNLjoPab8TMP3K5
 +hLXCZw5qm3htCqjoZ0pMg==
X-Google-Smtp-Source: APXvYqxr8IaXXWQHna/ksmbbhy36DTh6Ah1Gj4ZIqx5lFEKgGrqa4E+x4KguEAntWpLEUg1eJJrSsA==
X-Received: by 2002:a6b:1604:: with SMTP id 4mr27029736iow.245.1562713327886; 
 Tue, 09 Jul 2019 16:02:07 -0700 (PDT)
Received: from localhost ([64.188.179.251])
 by smtp.gmail.com with ESMTPSA id b14sm362851iod.33.2019.07.09.16.02.06
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 09 Jul 2019 16:02:06 -0700 (PDT)
Date: Tue, 9 Jul 2019 17:02:05 -0600
From: Rob Herring <robh@kernel.org>
To: Dmitry Osipenko <digetx@gmail.com>
Subject: Re: [PATCH v3] media: dt: bindings: tegra-vde: Document new optional
 IOMMU property
Message-ID: <20190709230205.GA1040@bogus>
References: <20190623170730.5095-1-digetx@gmail.com>
 <20190623170730.5095-4-digetx@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190623170730.5095-4-digetx@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Jonathan Hunter <jonathanh@nvidia.com>,
 Hans Verkuil <hverkuil@xs4all.nl>, Thierry Reding <thierry.reding@gmail.com>,
 linux-tegra@vger.kernel.org, Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, 23 Jun 2019 20:07:26 +0300, Dmitry Osipenko wrote:
> All NVIDIA Tegra SoC generations provide IOMMU support for the video
> decoder engine. Document new optional device-tree property that connects
> VDE with the IOMMU provider.
> 
> Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
> ---
> 
> No changes since v1.
> 
>  Documentation/devicetree/bindings/media/nvidia,tegra-vde.txt | 2 ++
>  1 file changed, 2 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
