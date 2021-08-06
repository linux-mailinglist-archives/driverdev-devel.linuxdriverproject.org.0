Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id F31FF3E2903
	for <lists+driverdev-devel@lfdr.de>; Fri,  6 Aug 2021 13:00:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 63E4683BCB;
	Fri,  6 Aug 2021 11:00:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AJPpTWE437yK; Fri,  6 Aug 2021 11:00:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id CEA9883B24;
	Fri,  6 Aug 2021 11:00:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2888A1C1162
 for <devel@linuxdriverproject.org>; Fri,  6 Aug 2021 11:00:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 17C4440581
 for <devel@linuxdriverproject.org>; Fri,  6 Aug 2021 11:00:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=linaro.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Pdsvdl7t3D4x for <devel@linuxdriverproject.org>;
 Fri,  6 Aug 2021 11:00:45 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com
 [IPv6:2607:f8b0:4864:20::102b])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 25D9740478
 for <devel@driverdev.osuosl.org>; Fri,  6 Aug 2021 11:00:41 +0000 (UTC)
Received: by mail-pj1-x102b.google.com with SMTP id
 m10-20020a17090a34cab0290176b52c60ddso17047342pjf.4
 for <devel@driverdev.osuosl.org>; Fri, 06 Aug 2021 04:00:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=bqezZ2/HwBTxC4hfR4A8RkBTbm8B6r0iUtltdIvH/WQ=;
 b=wPfCjiqa1MALuiJUaKW5iy1FtNfG6I7bAdM+tcLUlHzl2neknstN3PG01WGezIG4Wn
 AX67+2Wo1cV03hBdnAJyve/wr3U++Sv2+IO4fFRMwBMjg3MlY4LMXxnv9cUYr0J/w8ME
 l0Btb8iRsW/UikCqCHgTYoJAbfIOOSYrxH6UeL81fCtnPOMXF1pOCqAmkKk5chBEiw6Z
 yaTEYJbWUNoVt4HmP/4ut1Oa6QtRxGJUZVSJkrVVIiTdIOwLidoVSJUVDDptJehoEaTE
 KjoaWncKZEYbCPNeDiBQIxq744EGlx7PnATR24qZV2yaDdvpXGHuLHdVuLaLwuvlgthS
 ag0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=bqezZ2/HwBTxC4hfR4A8RkBTbm8B6r0iUtltdIvH/WQ=;
 b=d36GM6dfdgeHe03o6bcUXgsM2MQ6xrgYBDb4mj0A7bGUgXSNDxz8PJymp3rV6ZcCjE
 bpt0WeMQfqx+U1jzg2w45eIlMLwA8uy+BMGLA+IGqWNiZzEHecvlPByoUBlI/kiNK9NP
 35+3N4v1TQ7KM5pHg3kJiJNNqnhL6HFM14ik6CjQYgyOPcpjSqUxMP224ATZYj0E+GEP
 eo3yQXnhMsNSWFHiK6Mx/WnqkysLvuS0slcmfSakFmprAL1BYROhfOk98QbrqlER1r9W
 g76kNucV1Zz3XNc1tAUfz2YzUgcHszjGc7+jo6ZDv+jkoKBC1CGgQWhFaiPLoFG1rcd6
 SaZw==
X-Gm-Message-State: AOAM531Bg2jSNruW/GMBACm0HEpiamRifR9glL18obaQI2NRsNGIRsvl
 7vS7kyav45OHwt1RFBWNsP2TTDTtCTYeoPAjzRsNQg==
X-Google-Smtp-Source: ABdhPJx2mx/FDsh5/262RxdOPkT6ydnEP3Uh2S21vtAYPtUS+Wn/DcQtgQAbZX/mXgpJQMdt+fMf5UfYoS3PcG5G/uw=
X-Received: by 2002:a63:494f:: with SMTP id y15mr876560pgk.185.1628247641017; 
 Fri, 06 Aug 2021 04:00:41 -0700 (PDT)
MIME-Version: 1.0
References: <20210806104407.2208538-1-xji@analogixsemi.com>
In-Reply-To: <20210806104407.2208538-1-xji@analogixsemi.com>
From: Robert Foss <robert.foss@linaro.org>
Date: Fri, 6 Aug 2021 13:00:30 +0200
Message-ID: <CAG3jFyuB-PJc5S+jPiBH8_shyWR_05JTBiO802+tg+8RvBQUcg@mail.gmail.com>
Subject: Re: [PATCH v2] drm/bridge: anx7625: Tune K value for IVO panel
To: Xin Ji <xji@analogixsemi.com>
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
Cc: devel@driverdev.osuosl.org, Nicolas Boichat <drinkcat@google.com>,
 Jonas Karlman <jonas@kwiboo.se>, David Airlie <airlied@linux.ie>,
 Bernie Liang <bliang@analogixsemi.com>, Qilin Wen <qwen@analogixsemi.com>,
 Neil Armstrong <narmstrong@baylibre.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Vasily Khoruzhick <anarsoul@gmail.com>, Andrzej Hajda <a.hajda@samsung.com>,
 Boris Brezillon <boris.brezillon@collabora.com>, Torsten Duwe <duwe@lst.de>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, Hsin-Yi Wang <hsinyi@chromium.org>,
 Sam Ravnborg <sam@ravnborg.org>, Dan Carpenter <dan.carpenter@oracle.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Applied to drm-misc-next
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
