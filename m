Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E840E444440
	for <lists+driverdev-devel@lfdr.de>; Wed,  3 Nov 2021 16:04:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3E02840497;
	Wed,  3 Nov 2021 15:04:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eItNhB6SmhyU; Wed,  3 Nov 2021 15:04:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8BC5840494;
	Wed,  3 Nov 2021 15:04:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DF7AC1BF473
 for <devel@linuxdriverproject.org>; Wed,  3 Nov 2021 15:04:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DBA4960607
 for <devel@linuxdriverproject.org>; Wed,  3 Nov 2021 15:04:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=linaro.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9G0Bcec8rksB for <devel@linuxdriverproject.org>;
 Wed,  3 Nov 2021 15:04:13 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pg1-x531.google.com (mail-pg1-x531.google.com
 [IPv6:2607:f8b0:4864:20::531])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 21AB2605FF
 for <devel@driverdev.osuosl.org>; Wed,  3 Nov 2021 15:04:13 +0000 (UTC)
Received: by mail-pg1-x531.google.com with SMTP id f5so2591581pgc.12
 for <devel@driverdev.osuosl.org>; Wed, 03 Nov 2021 08:04:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=iRvWtzwg/X+s+PVSCDVSgb8j+VJEj6TNe4P8gzkbf1E=;
 b=bHso6gi1DV1CF5WZ9TAs3H1Xlxf1WMMoI+tP6FGXAHPjJeiGAN+EnsdUBTiNl8eDZU
 kuKR39LqXDa8RpGyzqZjIzz/U1fQX5ZpAsjl7SbJTLnVE2m9pnhAiQrWmjrv3TWj1PiY
 GJdYf3hDaE134sx2ZFosOX2o30t5fh09v1GgMUXPS7JTxiGIHWaQ3VrvpSu114plf20a
 a4TtC6+WV825bmrzQOq3/5y+sRmHEnWzg2DaUPq5gGprf1Hdonvz4lAYa0Qr0x/JlaJR
 cxWG+R7Qy8CAw9XI/4goKMajav8EfIWyaTx1WVQapGyn/zEs2Rhj4Hpr5vzr0AogThnc
 xaxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=iRvWtzwg/X+s+PVSCDVSgb8j+VJEj6TNe4P8gzkbf1E=;
 b=DufBLmjgzvgz3QWk9VAcel8NM38psLt39GB0aOVn07ijWn+/mM3JU9xaI+oDKm9TWw
 TmaBYOB7jz9iiodhv+X80YdL/NiDUc/5PNwudc57UZKuNsoVR/uPfh/GiTJBGPdUw155
 o1CxwU8zHI7UTu9fDxBiBKT6NrxUzOvd/xeKkEO7jtnSYSYHDdI3CDX1/op/5fejUZMP
 6yhaA5oGDr73sWL57q+DdC53yWl72YkkkZS/PH21HNwz/8XpnttQWcyBq1TNj8o2SOoQ
 VpRzcspWP0QIee04QjUQw3Srm3Vw3XwKgnskWpJKK2kAOWAUoo9ktHR9qKEG7Vape6T2
 3PjQ==
X-Gm-Message-State: AOAM532fMx5VHcNUfFzwFD1Az8QLsEw82rp8AW38MIjfUHOEn52YnHuw
 OlGUkmhGeyaDccNCLSw1qoTzbrZPz+ZhdmMGOLGefg==
X-Google-Smtp-Source: ABdhPJy38kv5yu9QkI0Sc1dz3CnMHn3IkSiqnB7JWHoxSzZxmxMosM6+HZrXEOIfa5D3aPYkHr/k2LSt1kVITbbIoRM=
X-Received: by 2002:aa7:88c4:0:b0:481:22c7:3d57 with SMTP id
 k4-20020aa788c4000000b0048122c73d57mr13744491pff.1.1635951852566; Wed, 03 Nov
 2021 08:04:12 -0700 (PDT)
MIME-Version: 1.0
References: <7dc405471da4771641d2942960d364a588bb4395.1628161369.git.xji@analogixsemi.com>
 <20211018030529.2055255-1-xji@analogixsemi.com> <20211103142003.GW2794@kadam>
In-Reply-To: <20211103142003.GW2794@kadam>
From: Robert Foss <robert.foss@linaro.org>
Date: Wed, 3 Nov 2021 16:04:00 +0100
Message-ID: <CAG3jFysp-Gs_Zk2PooTpqig1ns5pi+FKASMy=FW1V7oecdNGig@mail.gmail.com>
Subject: Re: [PATCH v11 4/4] drm/bridge: anx7625: add HDMI audio function
To: Dan Carpenter <dan.carpenter@oracle.com>
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
Cc: devel@driverdev.osuosl.org, drinkcat@google.com, jonas@kwiboo.se,
 airlied@linux.ie, zhenli@analogixsemi.com, narmstrong@baylibre.com,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 anarsoul@gmail.com, a.hajda@samsung.com, boris.brezillon@collabora.com,
 duwe@lst.de, span@analogixsemi.com, daniel@ffwll.ch, hsinyi@chromium.org,
 m.szyprowski@samsung.com, sam@ravnborg.org, Xin Ji <xji@analogixsemi.com>,
 bliang@analogixsemi.com, laurent.pinchart@ideasonboard.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hey Xin,

This series does not apply on drm-misc-next. Please fix this and
resend. Make sure that checkpatch --strict passes as well.

On Wed, 3 Nov 2021 at 15:20, Dan Carpenter <dan.carpenter@oracle.com> wrote:
>
> This is a super awkward way to resend a patch series.  Next time, just
> start a new thread and put [PATCH RESEND] in the subject.
>
> I am sorry that no one responded to your thread.  :/
>
> regards,
> dan carpenter
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
