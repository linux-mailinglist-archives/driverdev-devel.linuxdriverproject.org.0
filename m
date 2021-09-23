Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id A7DD04163EF
	for <lists+driverdev-devel@lfdr.de>; Thu, 23 Sep 2021 19:10:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E806960ADB;
	Thu, 23 Sep 2021 17:10:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YJaV7vbRqHzD; Thu, 23 Sep 2021 17:10:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6A07D60774;
	Thu, 23 Sep 2021 17:10:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 307BA1BF31B
 for <devel@linuxdriverproject.org>; Thu, 23 Sep 2021 17:10:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2CB5E80F00
 for <devel@linuxdriverproject.org>; Thu, 23 Sep 2021 17:10:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Akl_Zi0K79qU for <devel@linuxdriverproject.org>;
 Thu, 23 Sep 2021 17:10:00 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-oo1-f49.google.com (mail-oo1-f49.google.com
 [209.85.161.49])
 by smtp1.osuosl.org (Postfix) with ESMTPS id EE5E482768
 for <devel@driverdev.osuosl.org>; Thu, 23 Sep 2021 17:09:59 +0000 (UTC)
Received: by mail-oo1-f49.google.com with SMTP id
 t2-20020a4ae9a2000000b0028c7144f106so2369544ood.6
 for <devel@driverdev.osuosl.org>; Thu, 23 Sep 2021 10:09:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=aRKOgb/IptW6U1Mvub3XjCFxU2/8lUJIfk6QZum3jmM=;
 b=pTO4psv469ZWY3wiRX1h3DSapCtw8IQCWPzR8QTkWkO8uUzW2aBeyF2Fq+50BpDLHs
 6OPXmblMIIK3MjhhczanO+WFmjKWTRZNdNUvCfzh6y5fpDkpQrmuN4dBOb2XWbhWimUO
 YXWi5P512Lt44DB9PxsS3Uh511b2YdAvV4Ci+vM3jVvZibKwdnWZMT7SnaKgB70jbZ9T
 h4w/9BoR/7BWfBT4va9Cuyvs/S3Ibw7bHbnxZiwmkSoRnjN8of2v5/T4n+b2Ojr+UJbs
 VYoi4Rej3QWC+0PzkP0wBOocdfV1Seq7h95YjLnbaXTGnbV/p0NWch5hoTW0k5VqD1zZ
 zxOw==
X-Gm-Message-State: AOAM530uNNmebDaWWmR7rzjah0RYVqWoPVDKCIKadxLlqYUsN02pN56v
 MmP1A8W0kFbkFgMCkBN6yQ==
X-Google-Smtp-Source: ABdhPJw676lPJ7r9WEiBbldf9ALqBQhp0Wdivqz9FvDU+aldnL2DEOFeYcGq580EGuIyBGC7VXj2ZA==
X-Received: by 2002:a4a:ba90:: with SMTP id d16mr2406809oop.31.1632416998498; 
 Thu, 23 Sep 2021 10:09:58 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id v16sm1453551oiv.23.2021.09.23.10.09.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 23 Sep 2021 10:09:57 -0700 (PDT)
Received: (nullmailer pid 3183978 invoked by uid 1000);
 Thu, 23 Sep 2021 17:09:56 -0000
Date: Thu, 23 Sep 2021 12:09:56 -0500
From: Rob Herring <robh@kernel.org>
To: Jerome Pouiller <Jerome.Pouiller@silabs.com>
Subject: Re: [PATCH v7 02/24] dt-bindings: introduce silabs,wfx.yaml
Message-ID: <YUy05Kn2iCCBC6AF@robh.at.kernel.org>
References: <20210920161136.2398632-1-Jerome.Pouiller@silabs.com>
 <20210920161136.2398632-3-Jerome.Pouiller@silabs.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210920161136.2398632-3-Jerome.Pouiller@silabs.com>
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
Cc: devel@driverdev.osuosl.org, linux-wireless@vger.kernel.org,
 Ulf Hansson <ulf.hansson@linaro.org>, devicetree@vger.kernel.org,
 netdev@vger.kernel.org, linux-mmc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Pali =?iso-8859-1?Q?Roh=E1r?= <pali@kernel.org>,
 "David S . Miller" <davem@davemloft.net>, Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, 20 Sep 2021 18:11:14 +0200, Jerome Pouiller wrote:
> From: J=E9r=F4me Pouiller <jerome.pouiller@silabs.com>
> =

> Prepare the inclusion of the wfx driver in the kernel.
> =

> Signed-off-by: J=E9r=F4me Pouiller <jerome.pouiller@silabs.com>
> ---
>  .../bindings/net/wireless/silabs,wfx.yaml     | 133 ++++++++++++++++++
>  1 file changed, 133 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/net/wireless/silabs=
,wfx.yaml
> =


Reviewed-by: Rob Herring <robh@kernel.org>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
