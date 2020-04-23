Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 94C091B5B8E
	for <lists+driverdev-devel@lfdr.de>; Thu, 23 Apr 2020 14:37:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1810F86CDE;
	Thu, 23 Apr 2020 12:37:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id l-SzTtjxQBhU; Thu, 23 Apr 2020 12:36:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AE7DA8687B;
	Thu, 23 Apr 2020 12:36:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 066201BF392
 for <devel@linuxdriverproject.org>; Thu, 23 Apr 2020 12:36:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id E0EAB2041C
 for <devel@linuxdriverproject.org>; Thu, 23 Apr 2020 12:36:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SbQqTTUCgb+7 for <devel@linuxdriverproject.org>;
 Thu, 23 Apr 2020 12:36:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
 [209.85.128.67])
 by silver.osuosl.org (Postfix) with ESMTPS id F155C203A6
 for <devel@driverdev.osuosl.org>; Thu, 23 Apr 2020 12:36:53 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id x25so6253680wmc.0
 for <devel@driverdev.osuosl.org>; Thu, 23 Apr 2020 05:36:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=mi3rnUMPvy/QR3Ps6vsxVuv41qLYHh/uNXwCdOf964o=;
 b=PgsVLVg2fEE4UgEw5ybsRRcMm8D0szEHNj4jYCN/y3Piw4K0Zvmgpeth5Hjb8gCVI0
 Y2HAif5w2DxAfImAwIjZYnbyP7fEaBREjKHo0lML6cKH1VCtmlwGLGXxHftgpxo7RyJk
 5ta54tkpyf8ALl3fGhh7E3u2HGxUH2dYnvxhZ8FMENxzdzOtQmlhJPnxAadF68Z+W+uf
 V2We74ZXkgSjQP/TIAUvhG6NnMiAjbgwaE6w/Kt2o6aFnsYbbqeZjmXF+ac+tinjBO/U
 p6YlOnEegbdG2PF+zK/S49wjLppEutcfSgHcBipTrQvS9xAjVt25l7orY3r29/DAPQFs
 eEMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=mi3rnUMPvy/QR3Ps6vsxVuv41qLYHh/uNXwCdOf964o=;
 b=md+ENeHX+J7vaaBISQcZ+bVCyIdmGJTU7UwJb2rVg4mPuxL5a243x9nPU0kgDzIa3O
 8RgLfQq709xm8X8nhAVi0/85xuea89T68Red0mbDtEjlXS8uuqAcDdYn5sSWydo5BUsg
 0ceTYaSb1hwf15vUGwz9BYHx6IEJWy/SKK/h46H5xFg3K492KT7heItN7BLZ/tIQ1dRf
 FotQjFk8QNP1/J1Wjl7ZSjLi2KUJD/kce445JEfjt22rN89WcHYtdRTph+2fhS9c9fzi
 a+2uk8DUelCJzEe46W3KLjTr606Yk6KcAnagK/uw26KSCapkxNmSErH+HLZM36SAZw+i
 JqMg==
X-Gm-Message-State: AGi0PuZ2OsuUU7GeBKr8koOpT8D1b3q1S/XUJMFMqAppGvAciMjxdo1Q
 XiEwXYLvluripnS/vwNZY7Y=
X-Google-Smtp-Source: APiQypLOTc7Zk2kFUmf/qLTme2iOBIANPeVm3oJWV5ReTH48bHyBCwfMNIZwZ1IBZDmEt730DGE/4A==
X-Received: by 2002:a05:600c:2316:: with SMTP id
 22mr3898972wmo.164.1587645412306; 
 Thu, 23 Apr 2020 05:36:52 -0700 (PDT)
Received: from [192.168.2.1] (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id 68sm3672991wrm.65.2020.04.23.05.36.50
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 23 Apr 2020 05:36:51 -0700 (PDT)
Subject: Re: [PATCH v2 6/9] dt-bindings: media: rkisp1: move rockchip-isp1
 bindings out of staging
To: Helen Koike <helen.koike@collabora.com>, devicetree@vger.kernel.org,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20200403161538.1375908-1-helen.koike@collabora.com>
 <20200403161538.1375908-7-helen.koike@collabora.com>
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <7da8fb4d-018e-894a-884b-760eaf2959e6@gmail.com>
Date: Thu, 23 Apr 2020 14:36:49 +0200
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200403161538.1375908-7-helen.koike@collabora.com>
Content-Language: en-US
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
Cc: devel@driverdev.osuosl.org, mark.rutland@arm.com,
 dafna.hirschfeld@collabora.com, heiko@sntech.de, kishon@ti.com,
 linux-kernel@vger.kernel.org, karthik.poduval@gmail.com, robh+dt@kernel.org,
 hverkuil-cisco@xs4all.nl, kernel@collabora.com, ezequiel@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Helen,

make ARCH=arm dt_binding_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/media/rockchip-isp1.yaml
  SCHEMA  Documentation/devicetree/bindings/processed-schema-examples.yaml
  SCHEMA  Documentation/devicetree/bindings/processed-schema.yaml
  CHKDT   Documentation/devicetree/bindings/media/rockchip-isp1.yaml
  DTC
Documentation/devicetree/bindings/media/rockchip-isp1.example.dt.yaml
Documentation/devicetree/bindings/media/rockchip-isp1.example.dts:22.27-99.11:
Warning (unit_address_vs_reg): /example-0/parent@0: node has a unit
name, but no reg or ranges property
  CHECK
Documentation/devicetree/bindings/media/rockchip-isp1.example.dt.yaml

On 4/3/20 6:15 PM, Helen Koike wrote:
> Move rkisp1 bindings to Documentation/devicetree/bindings/media
> 
> Verified with:
> make ARCH=arm64 dt_binding_check DT_SCHEMA_FILES=Documentation/devicetree/bindings/media/rockchip-isp1.yaml
> 
> Signed-off-by: Helen Koike <helen.koike@collabora.com>
> ---
> 
> V2:
> - no changes
> 
>  .../devicetree/bindings/media/rockchip-isp1.yaml                  | 0
>  1 file changed, 0 insertions(+), 0 deletions(-)
>  rename {drivers/staging/media/rkisp1/Documentation => Documentation}/devicetree/bindings/media/rockchip-isp1.yaml (100%)
> 
> diff --git a/drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml b/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
> similarity index 100%
> rename from drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
> rename to Documentation/devicetree/bindings/media/rockchip-isp1.yaml
> 

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
