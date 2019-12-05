Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 38AFB113A24
	for <lists+driverdev-devel@lfdr.de>; Thu,  5 Dec 2019 04:01:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 912B224F3A;
	Thu,  5 Dec 2019 03:01:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id osfE-+iDeieW; Thu,  5 Dec 2019 03:01:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 14DC5245E3;
	Thu,  5 Dec 2019 03:01:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 284121BF332
 for <devel@linuxdriverproject.org>; Thu,  5 Dec 2019 03:01:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 222D6886D0
 for <devel@linuxdriverproject.org>; Thu,  5 Dec 2019 03:01:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id m1Ayo8Q6sZiI for <devel@linuxdriverproject.org>;
 Thu,  5 Dec 2019 03:01:14 +0000 (UTC)
X-Greylist: delayed 00:16:09 by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E12468827E
 for <devel@driverdev.osuosl.org>; Thu,  5 Dec 2019 03:01:14 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id y14so843511pfm.13
 for <devel@driverdev.osuosl.org>; Wed, 04 Dec 2019 19:01:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=27jaH0vN7Z1055mM7vLy7qQTaIl7MlRb9ifdmBrbZDM=;
 b=2AEXe14iZdFWfADVPMho1nGLswqsSNlAEnAUgFieMyEajydA5UtIA2BcOw3cvQHdZO
 +7SSE0yQn7fq3n4nHsbvSjKepiS29Gm5WR9rq8NTOvdFdi1YqxhsWZNbYk8a14XIStKF
 hb74QE/F9ENthSZE3yzn0ZQDkHdLNmssNPXh/EW0qy0yWmB7IFhwbQ7Hy2WVvJXW05oI
 H1C0sUhnHCdN0aF6ajXMtxjjgQBm0bYucIo02eLqXp6IojHQsBo24gGBGz9ZhVJZDdLp
 4LhMKEeYfNiw1x190FxFAVW9rFhpjJNh7tIG1Cx/l25+RJ0xiWa5+IVfaItxv51z2fvq
 fu0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=27jaH0vN7Z1055mM7vLy7qQTaIl7MlRb9ifdmBrbZDM=;
 b=rK3eJUhlHh3d64QynRDb7JV/0M+scndxWBTMxcYzfrvYuXTdc857Ld8cRt7d0kUlR4
 oq29qjUhSbNbfK6eoH/74zdvPR16iWtY1Kdu/oamgIx8oNg60x45AWeLoheUkZeLUjfY
 gU3l5OS30A109fJCgvPSIusiTFK5O0OXJLPEncRpmuoOVdtveBdaFLuTXQ59aut6jb8g
 eCGXeFLR5h89fpidiYUUfwNVtUo4CZbUBAOfdtw8AoH7nBMXgcckyjVXjUDaWFTHO+Tk
 lU4wgjgeUiEW1F3bKkuvHCujGOVkJp3picAkBP3Md1k/zRCusQjt+dhMzYtvt6Bb3boO
 bYUQ==
X-Gm-Message-State: APjAAAU2E8M6JnuCEqGIz5XPgyWnL8jJCzW3eDMes3EjokZNZUd3BTIB
 3RwZLInPZhpAH3222ka8xNkogcnUOVs4MQ==
X-Google-Smtp-Source: APXvYqyArhAsoFW/09BUx58Mqa57A85qEfp9wqhmY84drnrMDAvAJYGziHESSDaQZke2fKs6Z2jx+w==
X-Received: by 2002:a62:6884:: with SMTP id d126mr6446169pfc.109.1575513548166; 
 Wed, 04 Dec 2019 18:39:08 -0800 (PST)
Received: from localhost ([2601:602:9200:a1a5:18db:9496:e12f:2012])
 by smtp.gmail.com with ESMTPSA id k21sm8765676pgt.22.2019.12.04.18.39.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Dec 2019 18:39:07 -0800 (PST)
From: Kevin Hilman <khilman@baylibre.com>
To: Colin King <colin.king@canonical.com>,
 Maxime Jourdan <mjourdan@baylibre.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, linux-media@vger.kernel.org,
 linux-amlogic@lists.infradead.org, devel@driverdev.osuosl.org,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] media: meson: add missing allocation failure check on
 new_buf
In-Reply-To: <20191204141159.1432387-1-colin.king@canonical.com>
References: <20191204141159.1432387-1-colin.king@canonical.com>
Date: Wed, 04 Dec 2019 18:39:06 -0800
Message-ID: <m2a7877ayd.fsf@baylibre.com>
MIME-Version: 1.0
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Colin King <colin.king@canonical.com> writes:

> From: Colin Ian King <colin.king@canonical.com>
>
> Currently if the allocation of new_buf fails then a null pointer
> dereference occurs when assiging new_buf->vb. Avoid this by returning
> early on a memory allocation failure as there is not much more can
> be done at this point.
>
> Addresses-Coverity: ("Dereference null return")
> Fixes: 3e7f51bd9607 ("media: meson: add v4l2 m2m video decoder driver")
> Signed-off-by: Colin Ian King <colin.king@canonical.com>

Reviewed-by: Kevin Hilman <khilman@baylibre.com>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
