Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 917CFD393A
	for <lists+driverdev-devel@lfdr.de>; Fri, 11 Oct 2019 08:13:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EA5A686EB3;
	Fri, 11 Oct 2019 06:13:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fRoCNJUCmKj5; Fri, 11 Oct 2019 06:13:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8AF0686EAA;
	Fri, 11 Oct 2019 06:13:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B4BAD1BF2F8
 for <devel@linuxdriverproject.org>; Fri, 11 Oct 2019 06:13:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id AD28D25518
 for <devel@linuxdriverproject.org>; Fri, 11 Oct 2019 06:13:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Mf0jjppYjj17 for <devel@linuxdriverproject.org>;
 Fri, 11 Oct 2019 06:12:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com
 [210.118.77.12])
 by silver.osuosl.org (Postfix) with ESMTPS id D8DE02039C
 for <devel@driverdev.osuosl.org>; Fri, 11 Oct 2019 06:12:58 +0000 (UTC)
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20191011061256euoutp02b3c953179d18f4b9a2331b9d54f2697a~MgvkMgHy32354523545euoutp02k
 for <devel@driverdev.osuosl.org>; Fri, 11 Oct 2019 06:12:56 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20191011061256euoutp02b3c953179d18f4b9a2331b9d54f2697a~MgvkMgHy32354523545euoutp02k
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1570774376;
 bh=BFlpL/9spCtVhk+j4FpstZKi3lH6fRukIoRfiZqbsYM=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=RioP0gsDSl3g7CxJ/FwuIsN46YiMhQRBqnjT+XZEz0NXTrk/+56mJhecVow7o2igu
 7mJUHOL3qEyIRxJzPKrRIDtV1K4Lfg4cF3+K6fJpe9KkB+r3URf38eY4aMTAQuRSNV
 TEd//DLlajASDQWnRQKVQsRX00GgoCLXjfAIhaHQ=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20191011061255eucas1p147055b1a6c8c3ce9bcc67fd4fdc23cab~MgvjwMMpp2546625466eucas1p1G;
 Fri, 11 Oct 2019 06:12:55 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 67.18.04374.76D10AD5; Fri, 11
 Oct 2019 07:12:55 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20191011061255eucas1p264f567f307d35aba723ce008d14147c0~MgvjasKWm2882228822eucas1p2j;
 Fri, 11 Oct 2019 06:12:55 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20191011061255eusmtrp23eac7f98043aef9e24e7789f84a64933~MgvjZ-m633227932279eusmtrp2H;
 Fri, 11 Oct 2019 06:12:55 +0000 (GMT)
X-AuditID: cbfec7f5-4ddff70000001116-f8-5da01d67f5a3
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 67.EA.04117.76D10AD5; Fri, 11
 Oct 2019 07:12:55 +0100 (BST)
Received: from [106.120.51.74] (unknown [106.120.51.74]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20191011061254eusmtip1c0643197afb588d6c9f765ab14d367fd~MgviyY5Q42292522925eusmtip1P;
 Fri, 11 Oct 2019 06:12:54 +0000 (GMT)
Subject: Re: [PATCH v2 0/2] Add initial support for slimport anx7625
To: Xin Ji <xji@analogixsemi.com>, "devel@driverdev.osuosl.org"
 <devel@driverdev.osuosl.org>, Laurent Pinchart
 <laurent.pinchart@ideasonboard.com>
From: Andrzej Hajda <a.hajda@samsung.com>
Message-ID: <1544211b-d2c7-601c-93b3-a130178b8697@samsung.com>
Date: Fri, 11 Oct 2019 08:12:53 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <cover.1570760115.git.xji@analogixsemi.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA01Sa1BMYRju2++c3bM7dufYMvtOorEzKEMYZhyDpmb6cf4wTDFoGp04itrK
 Hov4YaNMJV1EabsyqpXcSlFDyzaslbuaiZCZ3Gs12S5KSruH0b/nfd7nvTzvvBRW95De1K74
 vbw+novTShVEw/2Rp4uiZ5VHLHmQtYA58cQuYXrGCwhmoiEXM7cejcqYtsE+KXOxzUww7cNf
 MWPvbSeY9NzzMuZlU7GUsWaFM58uVZBM6dufOEjJltxuwmxfR6qMLTI+J9h3zS0Ee3uonGCL
 0gpJ9kHOCwl7Y+g9yXYdt0nY/o+vCfbOiTyCddbOXj9tq2L1Dj5u1z5evzgwUhEz+igLJ5Yo
 DtjGh7ER9ckykJwCejmkd5eQGUhBqWkzgrb004QYDCA4VpsqEQMngpQBpzQDUe4S+zsvka9C
 kDFqRWLgQFB3tBK7+nrSIWD8ki1zJbzofATXuofcrTBtwWDtP0u6VFLaH37XvZK6sJIOBGOV
 080T9FxI/WQmXeNm0JuhdZATJdPBXviBcGE5zUB+9RG3HNO+cMNRjEWsgdcfytyzgC6kwHIv
 jxSdhkDBKzMSsSd8s13/ewEfmGh0FbjwYegyp2CxOA1B/dVGLCZWQYvtuXshPLn0labFIh0M
 zyx1SDyLCjoc08UdVHCyoQCLtBLSjqlF9Rzoelz/t6EGKp4NSnOQ1jTFmWmKG9MUN6b/c8sR
 UY00vEHQRfPCsnh+f4DA6QRDfHTA9gRdLZp8wdZx2+BN1DwWZUU0hbTTlGd8yyLUJLdPSNJZ
 EVBY66U8ZyqOUCt3cEkHeX3CNr0hjhesaCZFaDXKQx7vw9V0NLeXj+X5RF7/Lyuh5N5G9NCn
 s9Ehz8/OLgntDlvo+cPHsLbKu9TIlYYmO150xspbNgSrTIJi5orEjSM5QZkrv2+b57Mn+bzA
 +l02JFlio5L9/APQlsgZOz/Pb07OvOCosviq6iplu9eF6TaNOU95nEm4W9M2d+eat/rw+o5f
 rbEm05vDmrAfRcG1Nb0x+5+otIQQwy1dgPUC9wcCV3Y6fgMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrHIsWRmVeSWpSXmKPExsVy+t/xu7rpsgtiDQ5OFLHoPXeSyeL1v+ks
 Fv+3TWS22HPmF7vFla/v2SxWX1nBYnH1+0tmi5NvrrJYdE5cwm5xedccNotDfdEWz9YuZbWY
 d/cHswOvx9y9u5g93t9oZfeY3XCRxePevsMsHnu/LWDxmN0xk9XjxIRLTB7bvz1g9bjffZzJ
 4+PTWyweB3ons3h83iQXwBOlZ1OUX1qSqpCRX1xiqxRtaGGkZ2hpoWdkYqlnaGwea2VkqqRv
 Z5OSmpNZllqkb5egl/HrTB9zwVyuiuP/vjM3ML5n72Lk4JAQMJE4eU+ki5GTQ0hgKaPEz4ex
 ILaEgLjE7vlvmSFsYYk/17rYuhi5gGpeM0r8OPODFSQhLOAi0fCinx0kISIwjVFiw9TXzCAO
 s8BBZomHE/4wQ7R0M0rMfnaHDaSFTUBT4u/mm2A2r4CdRMPyz2CjWARUJVqfrQCzRQUiJJ5v
 v8EIUSMocXLmExYQm1PAQmLaqiawGmYBdYk/8y4xQ9jyEtvfzoGyxSVuPZnPNIFRaBaS9llI
 WmYhaZmFpGUBI8sqRpHU0uLc9NxiI73ixNzi0rx0veT83E2MwLjfduznlh2MXe+CDzEKcDAq
 8fDOkJ8fK8SaWFZcmXuIUYKDWUmEd9GsObFCvCmJlVWpRfnxRaU5qcWHGE2BnpvILCWanA9M
 SXkl8YamhuYWlobmxubGZhZK4rwdAgdjhATSE0tSs1NTC1KLYPqYODilGhirF7B95Gh32aWo
 bffS+tu6nAXL1vUvtK+7P/WHa9fKa367b0cfXdDQZ6bCmSBVzcKVzvfpR/YK9fXZD6S8E9oX
 um/hlYi6IbIxznXB0sdNl0/JK93p1V/xS2lT6GYPra8n17RMDPxxyJH/AHfVFYO4F5eVNS6w
 mfHW7eqb+nbxcWmVWcUm1YuUWIozEg21mIuKEwGisOoEEQMAAA==
X-CMS-MailID: 20191011061255eucas1p264f567f307d35aba723ce008d14147c0
X-Msg-Generator: CA
X-RootMTR: 20191011022055epcas5p37790ed31cbe63d0be0f6b5786ce1392a
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20191011022055epcas5p37790ed31cbe63d0be0f6b5786ce1392a
References: <CGME20191011022055epcas5p37790ed31cbe63d0be0f6b5786ce1392a@epcas5p3.samsung.com>
 <cover.1570760115.git.xji@analogixsemi.com>
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
Cc: Jernej Skrabec <jernej.skrabec@siol.net>,
 Nicolas Boichat <drinkcat@chromium.org>, Jonas Karlman <jonas@kwiboo.se>,
 David Airlie <airlied@linux.ie>, Neil Armstrong <narmstrong@baylibre.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 Sheng Pan <span@analogixsemi.com>, Daniel Vetter <daniel@ffwll.ch>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 11.10.2019 04:20, Xin Ji wrote:
> Hi all,
>
> The following series add initial support for the Slimport ANX7625 transmitter, a
> ultra-low power Full-HD 4K MIPI to DP transmitter designed for portable device.
>
> This is the initial version, any mistakes, please let me know, I will fix it in
> the next series.
>
> Thanks,
> Xin


Next time please increment patchset version number - this is third
iteration of v2.


Regards

Andrzej


>
>
> Xin Ji (2):
>   dt-bindings: drm/bridge: anx7625: MIPI to DP transmitter binding
>   drm/bridge: anx7625: Add anx7625 MIPI DSI/DPI to DP bridge driver
>
>  .../bindings/display/bridge/anx7625.yaml           |   96 +
>  drivers/gpu/drm/bridge/Makefile                    |    2 +-
>  drivers/gpu/drm/bridge/analogix/Kconfig            |    6 +
>  drivers/gpu/drm/bridge/analogix/Makefile           |    1 +
>  drivers/gpu/drm/bridge/analogix/anx7625.c          | 2153 ++++++++++++++++++++
>  drivers/gpu/drm/bridge/analogix/anx7625.h          |  406 ++++
>  6 files changed, 2663 insertions(+), 1 deletion(-)
>  create mode 100644 Documentation/devicetree/bindings/display/bridge/anx7625.yaml
>  create mode 100644 drivers/gpu/drm/bridge/analogix/anx7625.c
>  create mode 100644 drivers/gpu/drm/bridge/analogix/anx7625.h
>

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
