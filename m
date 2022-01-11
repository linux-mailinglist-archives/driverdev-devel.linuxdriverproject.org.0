Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 23C2748B8DF
	for <lists+driverdev-devel@lfdr.de>; Tue, 11 Jan 2022 21:49:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 52CC483E5F;
	Tue, 11 Jan 2022 20:49:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id R4qiOU4et_wE; Tue, 11 Jan 2022 20:49:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9526C83E65;
	Tue, 11 Jan 2022 20:49:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 42C4C1BF239
 for <devel@linuxdriverproject.org>; Tue, 11 Jan 2022 20:49:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3DC0060687
 for <devel@linuxdriverproject.org>; Tue, 11 Jan 2022 20:49:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QUCMQwU17lQv for <devel@linuxdriverproject.org>;
 Tue, 11 Jan 2022 20:49:39 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-oi1-f182.google.com (mail-oi1-f182.google.com
 [209.85.167.182])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 740DC605A3
 for <devel@driverdev.osuosl.org>; Tue, 11 Jan 2022 20:49:39 +0000 (UTC)
Received: by mail-oi1-f182.google.com with SMTP id y14so710023oia.9
 for <devel@driverdev.osuosl.org>; Tue, 11 Jan 2022 12:49:39 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
 :message-id;
 bh=U76C2a19MWE9uT4WLaPrUqwz6TsEjxbpHwmPW7gPznI=;
 b=VRa2+DExx1Xxh8UZMBTKRRlLg7QbU/MlGWq2isdEwNmI0wl78fRIwdl8kOKeIeOcvx
 1js1cP2e2nRFq+neIu7rn3CfW8R+F1aOoQDWPGFI1rauxUWN+af9miY9jKyP193QgTcK
 Tg8hOCiFVr+cldyJEhEfchvo3vU/k7BES2Vv8qG4+kVnh2CstPKS8LfRo1DB876b9DOV
 NdKmKkBctKDEk7NNbZz/QGkCIEcv1ylWarnZGioLbux/DIrgrteeZ/Tx/aoj51opUhXO
 TKV4l8/NGumJR7oTdDS3T03QzURDIuZreV6clHdizqgASHP2FH93M4DSH2l48amaF3KI
 7f0g==
X-Gm-Message-State: AOAM5331/LjnV8x4uz2syvXBT7DDS5ea65cl2gf4iVdRnQG9xLbbbe/k
 0X0oSLxBoI8D2SqYc5NXfA==
X-Google-Smtp-Source: ABdhPJyphqSOHGSY9thM6FbjwFquqWnM/ksTcDqbx78SxrpLMWiSpEXzKtszrmyfWwxjdWJk7gcjFQ==
X-Received: by 2002:a05:6808:3b9:: with SMTP id
 n25mr3095147oie.100.1641934178423; 
 Tue, 11 Jan 2022 12:49:38 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id g61sm2263305otg.43.2022.01.11.12.49.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 11 Jan 2022 12:49:37 -0800 (PST)
Received: (nullmailer pid 3479811 invoked by uid 1000);
 Tue, 11 Jan 2022 20:49:36 -0000
From: Rob Herring <robh@kernel.org>
To: Jerome Pouiller <Jerome.Pouiller@silabs.com>
In-Reply-To: <20220111171424.862764-3-Jerome.Pouiller@silabs.com>
References: <20220111171424.862764-1-Jerome.Pouiller@silabs.com>
 <20220111171424.862764-3-Jerome.Pouiller@silabs.com>
Subject: Re: [PATCH v9 02/24] dt-bindings: introduce silabs,wfx.yaml
Date: Tue, 11 Jan 2022 14:49:36 -0600
Message-Id: <1641934176.672363.3479810.nullmailer@robh.at.kernel.org>
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
 Ulf Hansson <ulf.hansson@linaro.org>, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-mmc@vger.kernel.org,
 =?utf-8?q?Pali_Roh=C3=A1r?= <pali@kernel.org>,
 "David S . Miller" <davem@davemloft.net>, Kalle Valo <kvalo@codeaurora.org>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="===============5602724670562806563=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

--===============5602724670562806563==
Content-Type: text/plain

On Tue, 11 Jan 2022 18:14:02 +0100, Jerome Pouiller wrote:
> From: Jérôme Pouiller <jerome.pouiller@silabs.com>
> 
> Prepare the inclusion of the wfx driver in the kernel.
> 
> Signed-off-by: Jérôme Pouiller <jerome.pouiller@silabs.com>
> ---
>  .../bindings/net/wireless/silabs,wfx.yaml     | 138 ++++++++++++++++++
>  1 file changed, 138 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/net/wireless/silabs,wfx.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/net/wireless/silabs,wfx.example.dt.yaml: wifi@0: compatible: 'anyOf' conditional failed, one must be fixed:
	['silabs,brd4001a', 'silabs,wf200'] is too long
	Additional items are not allowed ('silabs,wf200' was unexpected)
	'silabs,wf200' was expected
	'silabs,brd8022a' was expected
	'silabs,brd8023a' was expected
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/net/wireless/silabs,wfx.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/net/wireless/silabs,wfx.example.dt.yaml: wifi@1: compatible: 'anyOf' conditional failed, one must be fixed:
	['silabs,brd8022a', 'silabs,wf200'] is too long
	Additional items are not allowed ('silabs,wf200' was unexpected)
	'silabs,wf200' was expected
	'silabs,brd4001a' was expected
	'silabs,brd8023a' was expected
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/net/wireless/silabs,wfx.yaml

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/patch/1578580

This check can fail if there are any dependencies. The base for a patch
series is generally the most recent rc1.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.


--===============5602724670562806563==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============5602724670562806563==--
