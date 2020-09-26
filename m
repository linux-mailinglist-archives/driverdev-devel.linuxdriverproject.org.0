Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D32AA279974
	for <lists+driverdev-devel@lfdr.de>; Sat, 26 Sep 2020 15:03:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A1E8A85F18;
	Sat, 26 Sep 2020 13:03:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uGUEX9FsTHlF; Sat, 26 Sep 2020 13:03:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1321B8547D;
	Sat, 26 Sep 2020 13:03:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 567321BF388
 for <devel@linuxdriverproject.org>; Sat, 26 Sep 2020 13:03:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 510758684B
 for <devel@linuxdriverproject.org>; Sat, 26 Sep 2020 13:03:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZDGkAn9gymV0 for <devel@linuxdriverproject.org>;
 Sat, 26 Sep 2020 13:03:32 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
 [209.85.128.66])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C34EA86847
 for <devel@driverdev.osuosl.org>; Sat, 26 Sep 2020 13:03:31 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id e11so1260411wme.0
 for <devel@driverdev.osuosl.org>; Sat, 26 Sep 2020 06:03:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=6UBlp4CWE/HNUMg46vGuXH/W4+PrU2QCjrc8dmoCqx0=;
 b=PNuFpmwNBdW/TGJSBIP0GAADCkUiJiN3BePu59PEzCMlCXYVv+OLoczXNNVfGW7GAf
 ZsIIVdoOhY0IsSg1qTLlM46HvznPpDEZgXCebWEEK1ft9+j5c+8EjUwlhkLqmSDP7mpx
 4n3h5/vGkVdPc1nUSmhrDus0L0N0Yz96r3vpw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=6UBlp4CWE/HNUMg46vGuXH/W4+PrU2QCjrc8dmoCqx0=;
 b=pwSzRbylbP0gIfraKeKUY4FQNfNUTnRXtZsyllJZEPizLNHX8+iDJVwwqPdp8XGsaS
 NlwFzQ+kKSInFWT8Iwbo6f1klfUXlnpL3yPhi54ZmFHNWAHa5IIemwp67iSuyoOJGMHx
 20vK1EgfQ/ff/Hk3XlrcPdSWuLqCCCbL8MdcKwOEOkt3goaMGzYkAAhf7NhZI9eC9W2p
 tutzovRranT83RBO51VzZAWth2Hg1629VFazuRJ9lUXoH8+MCmWJ2mccJA2/oxUf5E39
 KV+WzRJ9Ru1f+C2zbl/OzOU+IldXMJuSnTF5ThUFhdL9/ge9gEJA6kN3D5gTUnZvZOuJ
 nksA==
X-Gm-Message-State: AOAM533VwJpdg8wEJgPA5Gr6VH/zOk4wiGD1h4PLoeJqlOOSdZM78IW0
 DcZpRTLtVKh9mSdeP8e2vPSJQg==
X-Google-Smtp-Source: ABdhPJynIuaCTOn8KUC4rrc+W/+aEYuVm8XN6ViT/zFkUVty6k8hF7b/mtHx243jPWCjHGHQoYci3Q==
X-Received: by 2002:a1c:9c8c:: with SMTP id f134mr2541646wme.27.1601125410239; 
 Sat, 26 Sep 2020 06:03:30 -0700 (PDT)
Received: from chromium.org (216.131.76.34.bc.googleusercontent.com.
 [34.76.131.216])
 by smtp.gmail.com with ESMTPSA id e18sm6533467wrx.50.2020.09.26.06.03.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 26 Sep 2020 06:03:29 -0700 (PDT)
Date: Sat, 26 Sep 2020 13:03:27 +0000
From: Tomasz Figa <tfiga@chromium.org>
To: Helen Koike <helen.koike@collabora.com>
Subject: Re: [PATCH v5 0/9] move Rockchip ISP bindings out of staging / add
 ISP DT nodes for RK3399
Message-ID: <20200926130327.GD3781977@chromium.org>
References: <20200722155533.252844-1-helen.koike@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200722155533.252844-1-helen.koike@collabora.com>
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
 eddie.cai.linux@gmail.com, dafna.hirschfeld@collabora.com, heiko@sntech.de,
 zhengsq@rock-chips.com, linux-kernel@vger.kernel.org,
 karthik.poduval@gmail.com, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, hverkuil-cisco@xs4all.nl, robin.murphy@arm.com,
 mark.rutland@arm.com, kernel@collabora.com, ezequiel@collabora.com,
 jbx6244@gmail.com, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Helen,

On Wed, Jul 22, 2020 at 12:55:24PM -0300, Helen Koike wrote:
> Move the bindings out of drivers/staging and place them in
> Documentation/devicetree/bindings instead.
> 
> Also, add DT nodes for RK3399 and verify with make ARCH=arm64 dtbs_check
> and make ARCH=arm64 dt_binding_check.
> 
> Tested by verifying images streamed from Scarlet Chromebook
> 
> Changes in v5:
> - Drop unit addresses in dt-bindings example for simplification and fix
> errors as suggested by Rob Herring in previous version
> - Fix typos
> - Re-write clock organization with if/then schema
>

Besides one comment to patch 8/9,

Reviewed-by: Tomasz Figa <tfiga@chromium.org>

Best regards,
Tomasz
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
